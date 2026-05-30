# Lesson 13 - procedures as values

## Concept

A procedure in Odin is a **value**, the same way an integer or a struct
is a value. It has a type, written `proc(args) -> ret`, that names its
signature. You can put one in a variable, pass it as an argument, store
it in a struct field, return it from another proc, or index it out of
an array. A procedure value is, mechanically, a pointer to compiled
code, eight bytes on a 64-bit machine. There is no object, no method
table, no environment hanging off of it.

The thing you do NOT get, and that this lesson is mostly about not
getting, is a **closure**. A procedure literal in Odin captures
nothing from the scope around it. If the inner proc needs the outer
proc's `count`, you pass `count` in. There is no automatic capture,
and Odin's own FAQ says this explicitly: *"Odin only has non-capturing
lambda procedures."* Procs are code, not code-plus-environment.

Everything that C# calls a delegate, that C calls a function pointer,
that Rust splits into `fn`/`Fn`/`FnMut`/`FnOnce`, that JavaScript
calls a callback, lives in Odin under the single mechanism of "a
value of type `proc(...) -> ...`". Dispatch tables, sort comparators,
event handlers, AI behaviors keyed by tag, plug-in points: all of
them are an array, map, or struct field whose element type is a
procedure type.

---

## Leveling with you (if you come from OOP)

In C# you've already been treating methods as values, you just had a
wrapper around them. `Action`, `Action<T>`, `Func<int, int>`,
`EventHandler` are all *delegate types*: named wrappers whose job is
to hold a method reference plus, when needed, a captured `this` and
captured locals. Lambdas (`x => x * 2`) auto-convert into one of
these delegate types and silently allocate a closure object whenever
they reference an outer variable. The whole machinery is invisible:
you write the lambda, the C# compiler generates a hidden class,
moves the captured locals into fields on it, and hands you back a
delegate that points at one of its methods.

Odin throws all of that away and keeps the bottom layer.

There is no `delegate`, no `Action`, no `Func`. The type is literally
the signature: a proc that takes two ints and returns one is spelled
`proc(int, int) -> int`. The same string of characters that you'd
write in the proc's own declaration. No generic wrapper, no library
type, no `Invoke()` method. You declare a variable of that type and
you call it like a normal proc: `f(3, 4)`.

There is no capture. A proc literal is not a lambda in the C# sense.
The compiler treats `proc(x: int) -> int { return x*2 }` exactly the
same as a named top-level proc that happens to be written inline. It
cannot see the enclosing scope. If you write code that tries to read
an outer local from inside a proc literal, you get a compile error.
(We'll trip this deliberately in the "break it" section.) When you
need state, you pass it as a parameter, or you bundle the proc with
its state in a struct and pass a pointer to the struct as the proc's
first argument. This is the C pattern, and it's what every "callback"
API in `core:` does.

The flip side: a proc value in Odin is **eight bytes**. A C#
delegate is a heap-allocated object with a header, a target field, a
method-handle field, and (for capturing lambdas) the closure object
it points at. Tens of bytes per delegate, plus a separate allocation
for the closure. The Odin version is one pointer wide because there
is nothing else to carry.

---

### Compared to C

C function pointers are the same idea, with worse spelling. The C
declaration

    int (*fn)(int);

declares a variable `fn` whose type is "pointer to function taking
`int` returning `int`". Reading that backwards through the standard
C declarator rules is a rite of passage. Odin writes the same thing
as

    fn: proc(int) -> int

and the type reads left to right. C function pointers, like Odin
procs, hold no environment. The patterns transfer one-to-one: qsort's
comparator, signal handlers, atexit callbacks, GUI event handlers,
plug-in tables, vtables built by hand. If you've seen `void (*cb)
(void *user_data)` in a C header, you've seen the shape of every
callback in Odin's `core:` libraries, including the explicit
`rawptr` slot for "whatever state the callback needs to find".

### Compared to C#

| C# | Odin |
|----|------|
| `Func<int, int>` | `proc(int) -> int` |
| `Action<string>` | `proc(string)` |
| `Func<int, int, int>` | `proc(int, int) -> int` |
| `delegate int Binop(int a, int b);` | `Binop :: proc(int, int) -> int` |
| `x => x * 2` (lambda, may capture) | `proc(x: int) -> int { return x*2 }` (NEVER captures) |
| `list.Sort((a, b) => a.X - b.X)` | `slice.sort_by(items, proc(a, b: Item) -> bool { return a.x < b.x })` |
| auto-captures `this` and locals | nothing is captured; pass state as parameter or via `rawptr` |
| `Delegate` is a heap object, 24-32 bytes plus closure | 8 bytes, no allocation |

The two real surprises for a C# developer: the type spelling is the
signature itself (no `Func`/`Action` wrapper), and writing what looks
like a lambda does not give you a lambda's capture behavior.

### Compared with Rust

Rust has a hierarchy of callable types that mirrors *how* the
callable interacts with captured state. `fn(i32) -> i32` is a bare
function pointer that captures nothing, which is the direct
counterpart to Odin's `proc(int) -> int`. `Fn`, `FnMut`, and
`FnOnce` are traits for closures that respectively borrow, mutably
borrow, or move their captures. You pick the trait based on what the
closure does to its environment, and the compiler enforces the
contract.

Odin has only the first rung of that ladder. The reason it doesn't
need the rest is the same reason it doesn't have them: no closures.
There's no captured environment to borrow, mutate, or consume, so
there's no distinction to encode in the type system. One spelling
covers every case.

If you find yourself reaching for what Rust would call an `FnMut`
because you want a callback that mutates state, the Odin form is a
proc that takes a `^State` (pointer to state) as its first argument,
or a struct holding `state` and `callback: proc(s: ^State, ...)`.
You're writing the closure out by hand, which is exactly what the
compiler would have done for you with allocation.

---

## Reference: the syntax you'll need

A procedure type as a variable type. The type IS the signature, no
wrapper:

    f: proc(int) -> int
    g: proc(a, b: int) -> int
    h: proc(s: string)                 // returns nothing
    k: proc()                          // no args, no return

A named type alias for a procedure type. The right-hand side after
`::` is just the procedure type from above:

    Binop :: proc(a, b: int) -> int
    op: Binop = add

A proc literal. Exactly the same syntax as a top-level proc
declaration, just used as an expression instead of bound to a name:

    double := proc(x: int) -> int { return x * 2 }
    fmt.println(double(21))            // 42

Passing a proc into another proc as a parameter:

    apply :: proc(f: proc(int) -> int, x: int) -> int {
        return f(x)
    }
    apply(double, 5)                   // 10

An array of procs, indexed by an enum. This is "dispatch table" or
"vtable, built by hand":

    Op :: enum { Add, Sub, Mul }
    table: [Op]proc(int, int) -> int = {
        .Add = proc(a, b: int) -> int { return a + b },
        .Sub = proc(a, b: int) -> int { return a - b },
        .Mul = proc(a, b: int) -> int { return a * b },
    }
    table[.Add](3, 4)                  // 7

A proc field inside a struct. This is the "callback" or "event
handler" pattern, and it's how `core:` libraries expose hooks:

    Button :: struct {
        label:    string,
        on_click: proc(label: string),
    }

The zero value of a proc type is `nil`. Calling through a `nil` proc
is a crash, so guard before invoking optional callbacks:

    if btn.on_click != nil {
        btn.on_click(btn.label)
    }

---

## The mental model: a proc value is just a code address

Strip away the syntax and a proc value is a **single pointer into
the executable's code segment**. Every named proc lives at some
fixed address once the program is loaded; storing `add` in a variable
of type `Binop` copies that address into the variable. Calling
through the variable does an indirect branch to that address:

       op: Binop = add               op
                                  ┌─────────┐
                                  │ 0x4017a0│ ──────►  add:
                                  └─────────┘             push rbp
                                                          mov  rsp, rbp
                                                          ...
                                                          ret

       op = mul                      op
                                  ┌─────────┐
                                  │ 0x4017c8│ ──────►  mul:
                                  └─────────┘             ...

That's the whole picture. No object header. No vtable. No environment
slot. No GC root. Eight bytes that happen to point at executable
memory.

A C# delegate, by contrast, is at minimum a heap object with a
target field, a method-handle field, and an invocation-list pointer.
When the delegate wraps a capturing lambda, there's also a separately
allocated closure object holding the captured locals as fields. The
delegate's target points at the closure; the method-handle points at
the compiler-generated method on the closure's class. Three
allocations and a couple of indirections worth of machinery to
deliver the same indirect call.

The Odin version's lack of an environment slot is exactly why it
can't be a closure. There is nowhere for captured variables to live.

---

## When you'd reach for this

The shape of "I'm storing or passing a proc value" comes up everywhere
in real game code:

1. **Sort comparators.** `slice.sort_by(items, less)` takes a
   `proc(a, b: T) -> bool`. Write it inline as a proc literal or
   pass a named one.
2. **AI behavior tables.** `[AI_State]proc(e: ^Entity, dt: f32)` is
   a tiny state machine: each state's tick function is one slot.
3. **Command pattern / undo stacks.** A `Command` is a struct with
   a `do: proc(world: ^World)` and an `undo: proc(world: ^World)`.
   Push it on a `[dynamic]Command`, pop to undo.
4. **Event handlers.** `on_click`, `on_hover`, `on_close` are proc
   fields on UI widgets. Set them at construction time.
5. **Plug-in points.** Want different physics in different modes?
   `physics_step: proc(world: ^World, dt: f32)` on the world, swap
   it when the mode changes.
6. **Parsers / interpreters.** A pratt parser is fundamentally an
   `[TokenKind]proc(p: ^Parser) -> ^Node` dispatch table.
7. **Callback-style I/O.** Reading from a network library:
   `client.on_message = handle_message`.
8. **Test fixtures.** Run a list of `proc()` tests by iterating.

The pattern across all of these: a small fixed-size "shape" (the
proc type) lets unrelated pieces of code be plugged together without
inheritance, interfaces, or virtual dispatch overhead.

---

## Tasks

Open `main.odin`. The procedure comments walk you through five
exercises that build the workflow from "a proc in a variable" up to
"a dispatch table indexed by an enum". Type the bodies yourself.

When you finish:

    odin run main.odin -file

Compare against `expected-output.txt`.

---

## Now break it on purpose

After the file works, try each of these in turn, observe the
message, then revert:

1. **Try to capture a local.** Inside `main`, write:

       count := 0
       bump := proc() { count += 1 }

   Build. Read the error. The compiler tells you that the inner proc
   can't see `count`, because proc literals don't capture. This is
   not a quirk of the parser, it's the design: Odin has no closures,
   and the FAQ says so out loud. The fix is to pass `count` in,
   either as a `^int` parameter or as a field on a struct that holds
   both the state and the proc.

2. **Wrong signature on assignment.** Add a fourth proc:

       div3 :: proc(a, b, c: int) -> int { return a / b / c }

   Then try `op = div3` where `op: Binop`. Build. Read the error.
   Procedure types are nominally equal *only* if every part of the
   signature matches: parameter count, parameter types, return type,
   calling convention. A three-arg proc is a different type from a
   two-arg proc, full stop. (This is the protection a void function
   pointer in C would not give you.)

3. **Call through `nil`.** Add at the end of `main`:

       op = nil
       op(1, 2)

   Build, run. You get a crash on the indirect call. The zero value
   of a proc type is `nil`, which represents "no procedure here". A
   proc field on a struct is `nil` by default until you assign one,
   which is why callback fields are almost always guarded with `if
   field != nil { field(...) }` before being called.

Each of these is teaching you one of the three real edges of the
abstraction: no closures, signatures are nominal, `nil` is a valid
state.

---

## Low-level notes

- A proc value is one pointer. On a 64-bit machine: 8 bytes. Same
  storage as a `^T` or a `rawptr`. There is no second word for an
  environment or a target object.
- Calling through a proc variable is an indirect call: the CPU loads
  the pointer into a register and branches to it. Modern branch
  predictors handle steady call sites (the same proc called from the
  same site every frame) at essentially the speed of a direct call.
  Cold or randomly-varying targets cost a branch mispredict, which
  is on the order of 10-20 cycles. For most dispatch-table use this
  is in the noise.
- Two proc values are equal iff they point at the same compiled
  procedure, which is a plain pointer compare. There is no
  structural equality.
- The default calling convention is `"odin"`, which passes an
  implicit `context` pointer. You can declare alternative
  conventions with `proc "c" (...)`, `proc "contextless" (...)`,
  `proc "stdcall" (...)`, etc. Different conventions are different
  types: you cannot assign a `proc "c" (i32)` to a variable typed
  `proc(i32)`. This matters when interoperating with C libraries
  whose callbacks must be plain C functions.

---

## Next: `14-parametric-polymorphism/`

Generics. So far every proc you've written has had concrete
parameter types. Lesson 14 introduces `proc($T: typeid)` and
`$T: typeid` parameters, which let one proc work over a family of
types and the compiler stamp out a specialized version per use.
