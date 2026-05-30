# Lesson 08 - context and allocators

## Concept

Every Odin procedure with the default `"odin"` calling convention receives
a hidden parameter called **`context`**. It is a struct the compiler
threads through every call site for you. Its most important fields are:

- `allocator` - the default allocator used by `new`, `make`, `append`,
  `delete`, `free`, and the dynamic-array growth machinery.
- `temp_allocator` - a second allocator intended for short-lived scratch
  memory that gets wiped in one shot with `free_all`.
- `logger` - the structured logger that `log.info`, `log.error`, etc.
  route through.
- `random_generator` - the PRNG used by `rand.*` calls.
- `user_ptr` and `user_index` - free real estate for application code to
  carry whatever per-request / per-frame / per-thread metadata it likes.

The two magical properties of `context` are:

1. **It is implicit.** You do not declare it as a parameter, you do not
   pass it at call sites. The compiler inserts it. Every Odin proc sees
   the same `context` its caller had.
2. **It is local to its scope.** When you write `context.allocator = X`
   inside a block, you are mutating a *local copy*. The change is visible
   to every proc you call from inside that block, but the moment the
   block ends, the original `context` is back. No `defer` needed; no
   manual restoration; the language does it because the variable was
   stack-allocated to begin with.

Together those two properties give you a feature very few languages
have: **the ability to swap the global allocator for a region of code
without modifying any callee**.

That single sentence is the mechanical description of what `context`
does. But the *intended use* of that mechanism is narrower than the
mechanism itself, and almost everyone gets it wrong on first
contact. Before you build a mental model around it, read the section
**"What `context` is actually for"** below - it's load-bearing.

---

## Leveling with you (if you come from OOP)

This one does not map cleanly to C# or TypeScript. Take a breath.

In C# the analogues are *ambient context* APIs like
`CultureInfo.CurrentCulture`, `Thread.CurrentPrincipal`, or
`HttpContext.Current` - per-thread (or async-local) values that any
code can read without it being passed in. You set one at the top of a
request and your formatting / auth / logging callees pick it up.

The other analogue is a DI scope. In ASP.NET you write

    using (var scope = serviceProvider.CreateScope()) {
        var svc = scope.ServiceProvider.GetRequiredService<IFoo>();
        svc.Run();
    }

and `IFoo` resolves to whatever the scope was configured with. The
scope dies at the `}` and the parent's resolution rules come back.

Odin's `context` is morally similar to both - a thing that ambient code
reads from, with a scope-bounded lifetime - but it is **first-class and
explicit**. It is not magic. It is a normal struct named `context` that
the compiler adds as a hidden parameter, and you change it with a normal
assignment statement. There is no container, no provider, no
`AsyncLocal<T>`, no attribute, no constructor injection. You write

    context.allocator = my_arena_allocator

and the next 50 lines of code in this scope - including the third-party
library you call into - use `my_arena_allocator`. Then the brace closes
and the old allocator is back.

That is the whole feature. It is small, mechanical, and very powerful.

### Compared to C

C threads the allocator through every API by hand. Either you call
`malloc` and `free` from `<stdlib.h>` and you are stuck with the system
allocator, or every library you want to swap allocators on has to define
its own `set_allocator()` global, or it takes a `void *(*alloc)(size_t)`
function pointer in every constructor. There is no shared vocabulary.
Trying to make a third-party JSON parser allocate into your frame arena
typically means forking it.

Odin sidesteps the entire mess by putting one allocator on the context
that all of `core:` and any library that does the obvious thing
(`new`, `make`, `append`) reads from. Override once, the rest of the
scope (and its callees) inherits the change.

### Compared to C#

The closest C# parallel really is a DI scope or `AsyncLocal<T>`:

| C# | Odin |
|----|------|
| `using (var scope = sp.CreateScope()) { ... }` | `{ context.allocator = X; ... }` |
| `AsyncLocal<T>.Value = x;` (auto-restored at await unwind) | `context.user_index = x` (auto-restored at scope end) |
| `IServiceProvider.GetRequiredService<IFoo>()` | `context.allocator` (just a field) |
| set up with `services.AddScoped<IFoo, Foo>()` at startup | set inline with `context.allocator = my_alloc` |

The Odin version skips the container, the registration phase, the
generics-and-attributes layer, and the runtime dictionary lookup. It
buys this with a narrower scope: you get one allocator, one logger, one
PRNG, and two free user slots, not an arbitrary type-keyed service
graph. In game-dev that turns out to be exactly the right trade.

### Compared with Rust

Rust has no implicit context. The allocator a container uses is part of
its type: `Vec<T, A: Allocator>`, `Box<T, A: Allocator>`. Every
allocating API takes the allocator as an explicit parameter, often a
generic one. This is maximally explicit and maximally noisy. A library
that wants to be allocator-agnostic has to thread `A` through every
public type, and combining two libraries that picked different
allocator-parameter conventions is its own small project.

Odin made the opposite trade: implicit-but-overridable. You lose Rust's
"the type tells you who allocated this" property; you gain the ability
to swap allocators for a scope without rewriting every callee. For
systems with a sane convention ("almost everything goes through the
context allocator") this is the more ergonomic choice.

---

## Reference: the syntax you'll need

The `context` keyword is always in scope inside an Odin proc:

    context.allocator         // a mem.Allocator value
    context.temp_allocator    // a separate mem.Allocator value
    context.logger            // a runtime.Logger
    context.user_index        // an int

Override one or more fields for the rest of the current scope:

    {
        context.allocator = my_allocator
        // anything allocating in here, including procs we call,
        // uses my_allocator
        do_work()
    }
    // here, context.allocator is back to whatever it was before the block

Swap to the temp allocator for a scope, then wipe it:

    {
        context.allocator = context.temp_allocator
        build_stuff()
        free_all(context.temp_allocator)
    }

Allocate with an *explicit* allocator without touching context:

    buf := make([]int, 100, context.temp_allocator)
    msg := fmt.aprintf("hello %d", 42, allocator = context.temp_allocator)

Take a snapshot of the full context (rarely needed, occasionally useful
in callbacks):

    saved := context
    context.allocator = exotic_allocator
    // ... do stuff ...
    context = saved

The `mem.Allocator` type itself is the literal struct

    Allocator :: struct {
        procedure: Allocator_Proc,   // a function pointer
        data:      rawptr,           // the allocator's own state
    }

Two pointers. Sixteen bytes on a 64-bit machine. `make([]int, 4)` boils
down to `context.allocator.procedure(.Alloc, ..., context.allocator.data)`.

---

## The mental model: a global you can shadow per scope

The picture to hold in your head is **a stack of contexts** that grows
when you enter a scope that overrides anything and shrinks when that
scope exits. Think of CSS cascading down through a DOM:

      main { context.allocator = HEAP                      }   <- outer
        |
        +-- { context.allocator = ARENA_A                  }   <- inner override
              |
              +-- call helper()
                    |
                    +-- inside helper, context.allocator == ARENA_A
                          |
                          +-- { context.allocator = TEMP   }   <- nested override
                                    inside here, == TEMP
                                }   <- pop, back to ARENA_A
              }   <- pop, back to HEAP

No magic. Every brace `{}` that touches `context.*` gets its own local
copy of the struct, and the local copy dies with the brace. The "stack
of contexts" is literally the call stack: each scope is a few bytes of
struct that the next caller's context is built on top of.

The temp allocator deserves a callout. It is just another allocator
sitting on the default context - it does not auto-clean. You decide
when to wipe it with `free_all(context.temp_allocator)`. The convention
is once per frame in a game, or once per request in a server. Anything
allocated through it between two wipes is alive; everything is freed by
the next wipe in one O(1) pointer reset.

---

## What `context` is actually for - the most misunderstood part

Read this section twice. It is the single highest-value clarification
about `context`, and it goes directly against the instinct most people
develop on first contact with the feature.

In December 2025, the language's creator Ginger Bill published a piece
titled "Odin's most misunderstood feature: context" specifically to
push back on the most common reading. The thesis, in his words:

> **"The entire point of the context system is to intercept third-party
> code, and to change how it does things."**

That's it. Context exists so that you, the caller, can change how
*code you didn't write* (or can't easily modify) does allocation,
logging, assertion handling, and the few other things the Context
struct exposes. Everything else flows from that one purpose.

### What context is NOT for

Bill is emphatic that context is **not** meant for any of these,
even though it superficially looks like it could be:

1. **Minimizing parameter passing in your own code.** If a procedure
   you write takes an allocator, take it as a parameter:

       my_proc :: proc(input: []u8, allocator := context.allocator) -> []u8 {
           result := make([]u8, len(input) * 2, allocator)
           // ...
       }

   The `allocator := context.allocator` default means callers who
   don't care can omit it (and inherit the context's allocator); the
   parameter means callers who do care can be explicit:
   `my_proc(input, my_arena_allocator)`. **Do not** silently read
   `context.allocator` inside your proc body without exposing it as a
   parameter - that hides where the allocation comes from and makes
   your API harder to reason about.

2. **Dynamic scoping as a general pattern.** Context is not a
   thread-local variable bag for stashing arbitrary application state.
   It carries a fixed, intentional set of fields. The two free slots
   (`user_ptr` and `user_index`) exist for narrow interop cases, not
   as "the C# `AsyncLocal<T>` of Odin."

3. **General application configuration.** Don't reach for `context`
   to pass settings, feature flags, request IDs, or whatever else
   normal parameter passing would handle. Parameters are the right
   tool. Context is the escape hatch.

4. **Replacing the allocator parameter in your APIs.** The pattern
   `proc(allocator := context.allocator)` is the *correct* API shape -
   explicit parameter with context-default. The wrong shape is
   `proc()` with a hidden `context.allocator` read inside, where the
   caller has no idea allocation even happens.

### What context IS for

When you can NOT modify the library you're calling, context is your
only way to change its behavior without forking it.

Example from Bill: `fmt.printf` requires a context because under the
hood it wraps `fmt.wprintf`, which writes through an `io.Stream` that
ultimately reads from `context`. Some users complain they "shouldn't
have to pass context to printf" - which misses the point. Because
`printf` reads context, you can intercept where its output goes by
overriding the stream in context, without forking `core:fmt`. That
*is* the feature.

Other concrete uses:

- A test runner overrides `context.allocator` with a tracking
  allocator to detect leaks in tests, without modifying any of the
  code under test.
- A profiler overrides `context.logger` with a buffered logger that
  attaches timestamps, again without modifying callers.
- A game engine overrides `context.allocator` with a per-frame arena
  before calling into a JSON parser, so the parser's allocations are
  free at the end of the frame - without forking the JSON library.

The common thread: **interception**. Code you can't (or shouldn't)
modify still does something useful with allocator / logger / etc.,
and context lets you redirect that to something you control.

### Why this matters: the ABI constraint

The `Context` struct's memory layout is **fixed and user-immutable**.
You cannot add fields. This is deliberate.

If users could add fields, the layout would vary per project, and
context would not survive a `LIB`/`DLL` boundary - one side's
`Context` would have different fields than the other side's. By
freezing the layout, Odin lets you intercept across boundaries: a
plugin DLL can read your override of `context.allocator` because both
sides agree on where it sits in the struct.

The price of this stability: context is NOT a free-form scratch space.
That price is paid intentionally, so that interception works.

### The "contextless" footgun

The default calling convention is `"odin"`, which passes context.
There are also `"contextless"` and `"c"` calling conventions, which
do not pass context. People sometimes mark their procedures
`"contextless"` thinking they're "saving" the cost of passing a
context they don't appear to use.

Don't. Two reasons:

1. **Context is essentially free.** It's a hidden pointer parameter
   passed in a register. The cost is one register, not "100 bytes
   copied per call."
2. **You don't actually know if the code needs it.** Any allocation
   inside the proc (or any proc it calls, transitively) reaches for
   `context.allocator`. Marking the proc `"contextless"` makes those
   allocations illegal or unpredictable. The compiler can't always
   warn you because the dependence is transitive.

Use `"contextless"` only when you genuinely cannot have a context -
typically a C callback (`proc "c"`) where the C library is the caller
and won't pass one. In that case the idiom is

    my_callback :: proc "c" (data: rawptr) {
        context = runtime.default_context()
        // now allocation / logging / etc. work normally
    }

### The paradoxical meta-point

Bill closes with: **"Ironically, `context` works because people
misunderstand it, and thus generally leave it alone."**

If everyone weaponized context as a global configuration bag, no one
could safely use it for interception - your override of
`context.allocator` would silently fight with someone else's override
of the same field for a different purpose. The feature stays useful
because most code leaves context alone except in narrow, intentional
overrides.

The takeaway when writing your own code: treat context the same way
you'd treat reaching into a third-party library's globals. Sparingly,
deliberately, and never as your default mechanism for passing data.

---

## Tasks

Open `main.odin`. The procedure-level comments walk you through five
exercises:

1. Inspect the default `context.allocator` and `context.temp_allocator`
   addresses, just to see they are real values.
2. Make a temporary string with the temp allocator, print it, wipe the
   temp arena.
3. Override `context.allocator` to point at the temp allocator inside a
   block, allocate, and then leave the block.
4. Call a helper proc from inside that block and confirm the helper
   sees the overridden allocator.
5. After the block ends, allocate again and confirm the original
   allocator is back (no `defer` was needed; the language restored it).

Type the bodies yourself.

When you finish, run:

    odin run main.odin -file

Compare your output to `expected-output.txt`.

---

## Now break it on purpose

After the file works, try each of these in turn, observe the output or
error, then revert:

1. **Leak the temp allocator.** Remove the `free_all(context.temp_allocator)`
   call. The program still runs and prints the same output, because the
   process exits and the OS reclaims everything anyway. This is exactly
   the bug class to fear in a long-running loop: the temp allocator
   grows without bound until you wipe it. In a real game you call
   `free_all(context.temp_allocator)` at the end of every frame, no
   exceptions.

2. **Try to manually restore context.allocator.** Add a `defer` before
   the override that saves and restores the old allocator:

       saved := context.allocator
       defer context.allocator = saved
       context.allocator = context.temp_allocator

   Run it. The output is unchanged because the language was already
   going to restore it for you when the block ended. The `defer` is
   harmless but redundant. The point: trust the scope semantics; you
   only need an explicit save/restore when you are mutating `context`
   from a place that is NOT itself scoped (e.g. a long-running proc
   that wants to flip allocators midway and then flip back).

3. **Override in a nested block.** Wrap one of the helper-proc calls in
   an extra `{ }` and set `context.allocator = some_other_allocator`
   inside it. Notice the helper sees the *innermost* override, and that
   the block above it is unaffected. This is the CSS cascade.

4. **Write a bad API on purpose, then a good one.** Define two procs:

       bad_double :: proc(input: []u8) -> []u8 {
           return make([]u8, len(input) * 2)   // hidden context.allocator read
       }
       good_double :: proc(input: []u8, allocator := context.allocator) -> []u8 {
           return make([]u8, len(input) * 2, allocator)
       }

   Call both from a scope where `context.allocator` has been overridden
   to your temp allocator. Both work. Now ask yourself: if a caller
   reading the code wanted to know which allocator `bad_double` used,
   could they tell from the signature? (No - they have to read the
   body and the call site's context state.) `good_double` advertises
   its allocation in its signature. That's the Bill rule.

---

## Low-level notes

- The `Context` struct in `base:runtime` is fixed-layout: `allocator`
  (16 B), `temp_allocator` (16 B), `assertion_failure_proc` (8 B),
  `logger` (32-ish B), `random_generator` (16 B), `user_ptr` (8 B),
  `user_index` (8 B), `_internal` (8 B). On a 64-bit machine it is
  about 100 bytes - large enough that it is passed by hidden pointer,
  small enough that you do not feel it.
- "Local to the scope" is not magic. Each scope that touches `context.*`
  shadows it with a local stack copy. When the scope returns, the stack
  frame goes away. There is no save/restore code emitted; the compiler
  just lets the local variable die.
- `mem.Allocator` is two pointers (procedure + data). All concrete
  allocators - heap, arena, stack, tracking, nil, scratch - are just
  different (procedure, data) pairs. Lesson 09 is about building one
  concrete kind (the arena) and plugging it in here via
  `context.allocator = mem.arena_allocator(&my_arena)`.
- C-calling-convention procs do NOT receive a context. If you write
  a callback for a C library (`proc "c"`), the first line is usually
  `context = runtime.default_context()` so that `fmt.println` and
  friends have something to work with.
- `free_all(context.temp_allocator)` is the cheap operation. It does
  not walk a list freeing things; it just resets the arena's offset
  back to zero. The memory is reused on the next allocation.
- The `Context` struct's layout is FIXED. You cannot add user fields.
  This is intentional - it's what lets context survive across DLL /
  shared-library boundaries, which is what makes third-party
  interception work in the first place. If you find yourself wanting
  to "just add one field" to context, that desire is a sign you
  should be using a normal parameter instead.

---

## Further reading

- Ginger Bill (Odin's creator), "Odin's most misunderstood feature:
  context" (Dec 2025) -
  https://www.gingerbill.org/article/2025/12/15/odins-most-misunderstood-feature-context/
  The source of the "context is for intercepting third-party code"
  framing in this lesson. Worth reading directly once you've worked
  through the tasks here.

---

## Next: `09-arena-allocator/`

An arena is the simplest non-trivial allocator: one big slab of memory
plus an `offset` cursor. `make` bumps the cursor; `free_all` resets it
to zero; individual `free` is a no-op. Lesson 09 builds one by hand and
plugs it into `context.allocator` exactly the way this lesson did with
the temp allocator.
