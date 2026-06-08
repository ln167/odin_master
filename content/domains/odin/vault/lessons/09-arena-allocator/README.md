# Lesson 09 - arena allocator

## Concept

An **arena allocator** (also called a *bump allocator* or *linear
allocator*) is the simplest non-trivial memory allocator that exists.
You hand it one big buffer up front. Allocation is "move a cursor
forward by the requested number of bytes and return where the cursor
used to be." That is the entire algorithm.

There are three operations:

- **Allocate `N` bytes.** Read the offset. Add `N`. Return the old
  offset as a pointer into the backing buffer.
- **Free one allocation.** Do nothing. This is not a joke. The
  allocator literally has no code path for freeing a single thing.
- **Free everything.** Set the offset back to zero. Every previous
  allocation is now logically gone, in one instruction.

The reason this matters: real programs make tons of small allocations
that all have the **same lifetime**. The strings, scratch arrays, and
intermediate structures built during one frame of a game all die when
the frame ends. The nodes of a parsed expression tree all die when
you're done evaluating it. The temporary buffers an HTTP handler
builds all die when the response goes out.

A general-purpose allocator (`malloc`/`free`, or whatever your
language defaults to) treats every one of those allocations as
independent: it threads them onto free lists, splits and coalesces
blocks, tracks sizes for the eventual `free()`, takes a lock if
threads are involved. An arena throws all that machinery away because
it knows up front that the lifetimes are bundled. The cost of
allocation drops from "hundreds of instructions plus a possible
cache miss on the free list" to "three instructions, all in
registers."

---

## Leveling with you (if you come from OOP)

In C# / Java / TypeScript you don't think about allocators at all.
The garbage collector picks up after you. Performance-conscious C#
code reaches for `ArrayPool<T>.Shared` to recycle large arrays of a
single element type, or for `stackalloc Span<T>` to put a short-lived
buffer on the stack. Those are *pools* and *stack allocations*; they
solve part of the same problem an arena solves, but only part.

An arena is closest in spirit to "rent a huge slab of memory, hand
out slices of it to whatever asks, and at some checkpoint throw the
whole slab back in one motion." It's not per-type like `ArrayPool<T>`.
It's not limited to one stack frame like `stackalloc`. It will hold
strings, structs, dynamic arrays, parsed AST nodes, anything, all
mixed together, and let go of all of them at once when you say so.

The new mental shift: stop thinking "each `new` needs a matching
`delete` somewhere." Start thinking "each *region of work* needs a
matching *reset* somewhere, and the individual allocations inside
don't need names of their own." That's the arena worldview.

---

### Compared to C

In C you call `malloc(N)` and at some later point you call `free(p)`.
Every allocation is bookkept individually. Every leak is a `malloc`
without a matching `free`. Every double-free is a crash. Every freed
pointer used afterward is a use-after-free. This is most of what
makes C dangerous, and it's why every nontrivial C codebase ends up
either inventing arenas or paying a heavy correctness tax.

An arena replaces N pairs of `malloc`/`free` with one `malloc` for
the backing buffer and one `arena_free_all` at the boundary. The
per-allocation cost disappears because there *is* no per-allocation
bookkeeping. Leaks inside the arena don't exist as a category: when
the arena resets, everything in it goes.

### Compared to C#

`ArrayPool<T>.Shared.Rent(N)` and `Return(arr)` give you per-type
pooling: you can borrow a `byte[]` of at least `N` length, scribble
on it, and return it to be reused. This is great for one specific
pattern (large arrays of a known element type, churned repeatedly)
and useless for everything else. You can't `Rent` a `Person`. You
can't `Rent` 47 different-sized things and `Return` them all at
once.

An arena allocates *anything*: a `[]u8`, a `[dynamic]int`, a
`fmt.aprintf` result, an `^Entity`, a tree of struct nodes, all
sitting next to each other in the same buffer. The "return" is one
call that releases all of them. Different tradeoff, much wider
applicability inside a bounded scope.

### Compared with Rust

The Rust ecosystem has the [`bumpalo`](https://docs.rs/bumpalo)
crate, which is the direct analog. Same algorithm, same use cases,
same "free is a no-op, reset frees everything" semantics. The
difference is that in Rust you reach outside the standard library
for it; in Odin the arena lives in `core:mem`, no dependency needed.

---

## Reference: the syntax you'll need

### Declaring an arena with a backing buffer

```odin
import "core:mem"

backing := make([]u8, 64 * 1024)   // 64 KiB scratch space
defer delete(backing)              // the backing itself uses the default allocator

arena: mem.Arena
mem.arena_init(&arena, backing)
```

The arena does *not* own its backing buffer. You give it the bytes;
you decide how those bytes were allocated and when they go away. A
`make([]u8, N)` on the default allocator is the standard choice; for
truly long-lived arenas you can also point at a global static buffer
or a virtual-memory reservation (`core:mem/virtual`).

### Wrapping it as an allocator

```odin
alloc := mem.arena_allocator(&arena)
```

`mem.arena_allocator` returns a `runtime.Allocator` value (the
generic allocator interface every Odin allocator implements). You
can pass this explicitly to `make`/`new`:

```odin
buf := make([]int, 100, alloc)
```

...or, more commonly, install it as the *implicit* allocator for a
scope by overriding `context.allocator`. You saw `context` in lesson
08; here is the payoff.

### Scope-overriding `context.allocator`

```odin
{
    context.allocator = mem.arena_allocator(&arena)

    // Every make, new, fmt.aprintf, [dynamic]T grow, etc. inside this
    // block now comes from the arena. No explicit allocator argument
    // needed at the call site.
    nums := make([]int, 1000)
    msg  := fmt.aprintf("first=%d  last=%d", nums[0], nums[999])
    fmt.println(msg)
}
// At the closing brace, `context` reverts to whatever it was before
// the assignment. The data the arena handed out is still valid; the
// arena itself is just no longer the implicit choice.
```

This is the headline pattern. Pick a region of work, install the
arena as the allocator for that region, do everything you need, then
reset.

### Resetting the arena

```odin
mem.arena_free_all(&arena)
```

Sets `arena.offset` back to zero. The backing buffer is untouched
(still allocated). Every pointer the arena previously handed out is
now dangling: the memory is still mapped, but the *next* allocation
will reuse the same bytes. The discipline is: don't keep arena
pointers across a `free_all`. If you need a value to survive, copy
it out into a longer-lived allocator first.

### Inspecting an arena

The `mem.Arena` struct has public fields you can read:

```odin
arena.offset      // bytes currently in use
arena.peak_used   // high-water mark since init; survives free_all
len(arena.data)   // capacity of the backing buffer
```

`peak_used` is useful for sizing: run your program with a generously
oversized arena, watch the high-water mark, then shrink the backing
buffer to fit with a little headroom.

### The temp_allocator

Odin sets up a per-thread `context.temp_allocator` for you
automatically. It is an arena. The pattern is:

```odin
msg := fmt.aprintf("scratch string: %d", 42, allocator = context.temp_allocator)
// ... use msg ...
free_all(context.temp_allocator)   // typically at end of frame / request
```

If you've ever wondered what `context.temp_allocator` actually *is*,
this lesson is the answer: it's just an arena that the runtime hands
you, with the same free-everything-at-once semantics.

---

## When to reach for an arena

Arenas are the right tool when allocations have a known, bounded
lifetime that ends at an obvious boundary. The textbook cases:

- **Per-frame scratch in a game.** Build path strings, dispatch
  lists, particle batches each frame; `free_all` at the end of the
  frame.
- **Parsing into a tree.** Parser allocates AST nodes into an arena;
  consumer walks the tree; `free_all` when done. No per-node
  destructor pass.
- **One-shot CLI tools.** The whole program is one "region." Allocate
  into an arena, do the work, exit. You don't even need to reset; the
  OS reclaims the buffer on process exit.
- **Per-request work in a server.** Each request gets an arena, lives
  inside it, frees the whole thing on response send. Trivially
  thread-safe per request.

Arenas are the **wrong** tool when:

- Lifetimes are heterogeneous and unpredictable (some allocations
  outlive the others by minutes, and you don't know which ones up
  front).
- You need to return memory to the system during a long-running
  process (an arena holds its backing buffer until it's destroyed).
- You need `delete()` on individual items to mean something.

In a real codebase you typically use multiple allocators side by
side: a general-purpose allocator for long-lived state, one or more
arenas for scoped work, and the temp_allocator for tiny throwaway
strings.

---

## Tasks

Open `main.odin`. The procedure comments walk you through five
steps that build up the full pattern: backing buffer, arena init,
allocator wrap, scope override, allocate, inspect, reset, allocate
again, observe reuse. Type the bodies yourself.

When you finish:

    odin run main.odin -file

Compare against `expected-output.txt`.

---

## Now break it on purpose

After the file works, try each of these in turn, observe the
behavior, then revert:

1. **Blow past the arena's capacity.** Shrink the backing buffer to
   something small (say 256 bytes), then try to `make([]int, 1000)`
   inside the arena. The arena will not grow -- but `make` does **not**
   panic. It returns an empty slice (len 0, nil data) plus an
   `Out_Of_Memory` error. The single-value form `big := make([]int, 1000)`
   silently discards that error and leaves you a zero-length slice; the
   two-value form `big, err := make([]int, 1000)` is how you catch it.
   *That silent discard* is the real footgun here, not a crash. (If you
   want growth, use `mem.dynamic_arena_init` or `core:mem/virtual`.)
2. **Forget to `free_all` between frames.** Comment out the
   `arena_free_all` call. The second frame's allocations stack on
   top of the first frame's, and `arena.offset` keeps climbing.
   Eventually you hit case 1. There's no leak detector for this; the
   discipline is yours.
3. **Try to free an individual item.** Allocate a slice in the arena
   and call `delete(slice)` on it. The arena allocator returns
   `Mode_Not_Implemented` for `.Free` -- but as an **error value**, not a
   crash. `delete` returns that error; the bare `delete(slice)` discards
   it and the call is a silent no-op (`err := delete(slice)` lets you see
   the `Mode_Not_Implemented`). The contract is one-way: allocate many,
   reset all -- individual frees just quietly do nothing.
4. **Save a pointer across the reset.** Before `arena_free_all`,
   stash a pointer to one of the arena's allocations. After the
   reset, allocate again and print the contents at the saved
   pointer. You'll see the new data — the address was reused. This
   is the canonical use-after-reset bug and the reason arena
   lifetimes need to be obvious and short.

---

## Low-level notes

- A bump allocation on the hot path is roughly three machine
  instructions: load `arena.offset`, add the (aligned-up) request
  size, store the new offset. The returned pointer is `arena.data +
  old_offset`. No branches in the common case, no cache misses on
  free-list metadata, no syscalls.
- Compare to `malloc`, which on a typical glibc implementation can
  touch hundreds of instructions: pick a size class, walk the free
  list for that class, possibly split a larger block, possibly take
  a per-arena mutex if threads are involved, possibly call `sbrk` or
  `mmap` to grow the heap. None of that exists in an arena.
- Cache locality is excellent. Consecutive allocations are
  physically adjacent in the backing buffer, so iterating over a set
  of arena-allocated objects in the order they were created is
  streaming-friendly.
- `free_all` is a single store: `arena.offset = 0`. It does *not*
  zero the memory; the bytes from the previous use are still sitting
  there until the next allocation overwrites them. That's why
  use-after-reset bugs look like working code right up until they
  don't.
- `core:mem/virtual` provides `Arena` with three flavors
  (`arena_init_buffer`, `arena_init_static`, `arena_init_growing`)
  for cases where you want OS-level virtual memory tricks: reserve a
  huge address range up front, commit pages on demand. Same bump
  semantics, just with the backing managed by `mmap`/`VirtualAlloc`
  instead of a flat `[]u8`.

---

## Next: `10-tagged-unions/`

We're done with memory for now. Lesson 10 moves to the type system:
tagged unions (also called sum types or discriminated unions) let
you declare "a value is exactly one of these N shapes," with the
compiler enforcing that every code path handles every shape. They
replace the C `union { int a; float b; } u;` pattern, the C# `class
Animal { } class Dog : Animal { }` pattern, and the TypeScript
`type Foo = A | B | C` pattern with a single first-class language
feature.
