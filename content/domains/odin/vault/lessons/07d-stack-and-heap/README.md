# Lesson 07d - the stack and the heap

## Concept

Every value your program touches lives in one of two places, and the
difference between them is the floor under everything in the next two
lessons (allocators, arenas). Until now you've used both without naming
them. Name them.

**The stack.** A region of memory that grows and shrinks automatically
as procedures call each other. Each call pushes a **stack frame** - a
contiguous slab holding that one call's locals, parameters, and the
return address. When the call returns, its frame is **popped**:
discarded in one instruction. You don't ask for stack memory and you
don't release it; it appears when a proc is entered and vanishes when it
exits. Fast, but rigid: a stack value dies at the end of its scope, and
its size has to be known when the code is compiled.

**The heap.** A large separate pool you reach into *manually*. You
explicitly **ask** for a chunk ("allocate"), use it for as long as you
like, and explicitly **hand it back** ("free"). The heap does not care
about scopes - memory you allocate outlives the procedure that allocated
it, which is exactly why it's powerful and exactly why it leaks if you
forget to give it back. Odin has no garbage collector; returning heap
memory is your job.

You already met both: a local `x: int` is on the stack; `new(Player)`
and `make([]int, n)` put their data on the heap (which is why they need
`free` / `delete`, and why a plain local doesn't).

A **stack frame**, concretely, is just the patch of stack memory
belonging to one in-progress call. "main's frame" is where `main`'s own
locals live. The chain of frames currently on the stack - `main` called
`update` called `move` - is the **call stack**, the exact thing a
debugger shows you when you pause.

---

## Leveling with you (if you come from OOP)

In C# / Java / TypeScript you mostly don't think about this split,
because the garbage collector erases the hard half. You write `new
Player()` and never free it; the GC notices when nothing references it
and reclaims it later. The stack is still there (every method call has a
frame; that's what a stack trace *is*), but the heap's "hand it back"
step is automated away.

The mental shift for Odin: the GC is gone, so the heap's second half -
*return the memory* - is back on you. `new` and `make` are the "ask";
`free` and `delete` are the "hand back"; if you ask and never hand back,
that memory is gone until the process exits (a leak). The stack half is
unchanged from what you already had - locals still clean themselves up
when scope ends.

A stack trace in your debugger is the call stack from this lesson. The
"Locals" / "Variables" panel is the contents of one frame. You've been
looking at this concept in every exception dialog you've ever seen; this
lesson just names the memory underneath it.

---

### Compared to C

C draws the same two regions and gives the heap the names you'll
recognize under Odin's: `malloc(n)` is the "ask," `free(p)` is the "hand
back." Local variables go on the stack and clean themselves up; anything
from `malloc` lives on the heap until `free`. Odin's `new`/`make` and
`free`/`delete` are the same model with type-awareness bolted on
(`new(T)` knows the size, zeros it, returns `^T`). Every C memory bug -
leak, double-free, use-after-free, dangling pointer into a popped frame -
exists identically in Odin, because it's the same machine underneath.

### Compared to C#

| C# | Odin |
|----|------|
| `new Player()`, GC frees it | `new(Player)`, you `free` it |
| `stackalloc Span<T>` | a local fixed array `[N]T` (stack) |
| `ArrayPool<T>` (recycle) | an arena (lesson 09) |
| stack trace | the call stack (this lesson) |
| "Locals" window | the contents of one stack frame |

The big removal is the GC. C# decides *when* heap memory comes back; Odin
makes you decide, with `defer free` / `defer delete` as the standard way
to not forget (lesson 07b).

### Compared with Rust

Rust has the identical stack/heap split (`Box<T>` is its `new`, the heap;
locals are the stack), but adds *ownership* so the compiler inserts the
"hand back" for you at the right scope exit - the safety of a GC with the
timing of manual code. Odin doesn't track ownership; the discipline Rust
enforces at compile time is the discipline you carry yourself. Same two
regions, different amount of help.

---

## Why every language has both (convergence, not convention)

This split isn't a fashion copied between languages or mandated by the
OS. If you reinvented memory management from scratch you'd rediscover it,
because it falls out of two facts about computation.

**Fact 1: procedure calls nest last-in-first-out.** If `A` calls `B`
calls `C`, then `C` must finish before `B`, which must finish before `A`.
That nesting *is* the definition of a stack (LIFO). So the natural
structure for "where do I return to, and where do my locals live" is a
stack - not a design choice, nearly a mathematical one. And because it's
universal, the hardware bakes it in: CPUs have a dedicated stack-pointer
register and `call`/`ret` instructions that push and pop frames for you.
Allocating on the stack is "subtract from a register" - about the
cheapest thing a machine does.

**Fact 2: some data doesn't obey LIFO.** Sometimes a value must outlive
the procedure that made it (return a `[dynamic]T` the caller keeps), or
its size isn't known until the program runs. Neither fits a stack. So you need a
second pool where you can allocate and free in *arbitrary* order - the
heap. The price of arbitrary order is bookkeeping (tracking free/used
blocks), fragmentation, and slower allocation, which is precisely why
it's a separate, second tool and not the only one.

So: **stack = the fast, automatic, LIFO common case; heap = the general,
slower, arbitrary-lifetime case.** Two tools because the two cases have
genuinely different optimal shapes.

**Whose thing is it?** Layered, not one owner. *Hardware* provides stack
mechanics (the stack-pointer register, `call`/`ret`) and almost zero heap
support - that asymmetry tells you the stack is closer to the metal. The
*OS* supplies the raw material: a process's address space, memory in
pages, and the initial stack. The *language/runtime* builds the heap
allocator (`malloc`, or Odin's allocators) on top of OS pages. The OS
hands out big chunks; the allocator subdivides them into your objects.

**The exception that proves it:** when the LIFO assumption breaks -
closures that capture locals, coroutines, `async`/await, goroutines -
those "frames" can suspend or outlive their caller, so they're no longer
LIFO, and what do those languages do? They move the frames onto the
*heap*. The stack is revealed as an optimization for the LIFO case; break
LIFO and you fall back to the general tool. That's the rule confirming
itself.

This is also where the next lessons come from: the heap's cost is
annoying, so the frontier is "can I get heap flexibility with stack-like
cheapness?" Arenas (lesson 09), region allocators, and Rust's borrow
checker are all answers to that. The convergence you're looking at is
still in motion.

---

## Reference: the syntax you'll need

### Stack: just declare a local

```odin
x: int = 42          // lives in the current frame; gone when scope ends
nums: [4]int         // a fixed array, also inline on the stack
```

No allocation call, no free. The frame cleans up on exit.

### Heap: ask with `new` / `make`, hand back with `free` / `delete`

```odin
c := new(Counter)        // one Counter on the heap; returns ^Counter
defer free(c)            // hand it back

buf := make([]int, 100)  // a slice whose backing array is on the heap
defer delete(buf)        // hand it back
```

`new(T)` is "one value"; `make` is "a slice/dynamic array/map with
backing storage." Both take an optional allocator argument and default to
`context.allocator` (lesson 08).

### Heap memory survives the return; stack memory does not

```odin
make_counter :: proc() -> ^Counter {
    c := new(Counter)    // heap: valid after this frame pops
    c.n = 1
    return c             // fine - the caller now owns it (and must free it)
}
```

Contrast the broken stack version, which returns a pointer into a frame
that's about to vanish:

```odin
broken :: proc() -> ^int {
    local := 7
    return &local        // COMPILE ERROR: "unsafe to return the address
}                        // of a local variable" - Odin guards this case
```

The compiler has a targeted escape check: returning `&local` (or a slice
of a local, `local[:]`) directly is rejected, because it would point into
a frame that's about to pop. That guard is *why* you reach for `new` here
- the heap is the only place a value can outlive its frame. (The guard
only catches the *direct* return; an address that escapes indirectly -
stored through an out-pointer, say - still compiles and still dangles.)

### Inspecting addresses to see the regions

`uintptr(&x)` turns an address into a number you can compare. Stack
locals cluster together at high addresses and grow *downward* (a deeper
call sits at a lower address); heap allocations come from a different
region entirely. The tasks make you observe this directly.

---

## Tasks

Open `main.odin`. Four exercises let you *watch* the two regions behave:
a stack frame getting reused across calls, the stack growing downward
into deeper calls, a heap value outliving the proc that made it, and a
heap slice you own and return. Type the bodies yourself.

When you finish:

    odin run main.odin -file

Compare against `expected-output.txt`. (The tasks print booleans, not raw
addresses, so the output is stable run to run.)

---

## Now break it on purpose

After the file works, try each, observe, then revert:

1. **Return the address of a local - and watch the compiler stop you.**
   Write `broken :: proc() -> ^int { local := 7; return &local }`. Build.
   Odin *rejects* it: `Error: It is unsafe to return the address of a
   local variable ('&local') from a procedure`. Returning `local[:]` (a
   slice of a local array) is blocked the same way. This is the compiler
   steering you to the heap: data that must outlive its frame can't live
   on the stack, so you use `new`/`make` instead. Note this is a *targeted*
   guard, not a general lifetime system - see #2.
2. **The footgun the guard misses.** The check only catches a *direct*
   return. Let the address escape indirectly and it compiles silently:

       escape :: proc(out: ^^int) { local := 7; out^ = &local }

   Call `escape(&p)` with `p: ^int`, then use some stack in another proc,
   then read `p^`. No error, no warning - `p` points into a frame that's
   gone. Odin guards the obvious case; the general dangling-pointer hazard
   is still yours to avoid (this is what Rust's borrow checker does that
   Odin doesn't).
3. **Forget to `free`.** Take the `new(Counter)` task and delete its
   `free`. The program still runs and prints correctly - the OS reclaims
   everything on exit. Now imagine that allocation once per frame for ten
   hours. Leaks are *silent* at small scale, which is what makes them
   dangerous. (Lesson 08's tracking allocator prints every leak with a
   file:line.)
4. **Free twice.** Call `free(c)` twice on the same pointer. Depending on
   the allocator you get a crash or corruption - the bytes were already
   handed back; handing them back again is a double-free, a classic C bug
   that Odin does nothing to prevent.

---

## Low-level notes

- A stack frame is set up by the function prologue (adjust the stack
  pointer down by the frame size) and torn down by the epilogue (adjust
  it back up). "Allocating" 1 KB of locals and "freeing" them is two
  register adjustments total, regardless of how many variables.
- The stack grows toward *lower* addresses on x86-64 and ARM64, which is
  why task 2's "deeper frame at a lower address" holds. It's a
  convention baked into the calling convention and the hardware's
  push/pop direction, not a law of physics - but it's stable per platform.
- `new(T)` and `make` both route to `mem.alloc` on `context.allocator`;
  the heap they use is whatever that allocator manages (the default
  general-purpose one here, an arena in lesson 09). "The heap" is not one
  fixed thing - it's whatever pool the current allocator hands out.
- Stack memory is reused immediately and is almost always hot in cache
  (the same few KB churn constantly), which is part of why stack-heavy,
  allocation-light code runs fast - the data-oriented theme from lesson 05.
- There is no runtime tag marking an address as "stack" or "heap"; a
  pointer is just a number (lesson 06b). Whether the thing it points at
  is still alive is not knowable from the pointer - the dangling-pointer
  and use-after-free footguns both come from exactly that.

---

## Next: `08-context-and-allocators/`

You now know *where* heap memory comes from. Lesson 08 introduces the
`context` - Odin's implicit per-scope bundle that carries which allocator
`new`/`make` use - so you can swap the heap's behavior for a whole region
of code without changing a single allocation call. Lesson 09 then builds
the arena: the "stack-like cheapness, heap-like flexibility" answer this
lesson's convergence section pointed at.
