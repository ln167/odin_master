# Arena allocators in Odin

## The mental model

In Odin, every allocation goes through an **allocator**. An allocator is just a value (a small struct with a procedure pointer) that knows how to hand out memory and how to give it back. Odin makes this explicit: built-in things like `make`, `new`, and `append` take an allocator as their last (often implicit) argument, and they default to `context.allocator` — a thread-local "current allocator" stored in the implicit `context` value that every Odin procedure carries.

The **default `context.allocator`** is a general-purpose heap allocator (backed by the OS / libc `malloc`/`free`). It's flexible: you can free individual allocations in any order. But that flexibility costs you — every allocation has bookkeeping, every `free` is a separate call, and it's easy to leak memory if you forget one.

An **arena allocator** is the opposite trade-off. You grab one big block of memory up front, and every allocation just bumps a pointer forward inside that block. You **cannot free individual allocations**. Instead, when you're done with everything in the arena, you free (or reset) the *whole thing* in one call.

That's the whole idea: many tiny `free`s become one big `free`.

## When to reach for one

Use an arena when allocations share a **lifetime** — they're all needed during some phase of work, and they all become garbage at the same moment. Common cases:

- **Per-frame** allocations in a game loop (everything that lives one frame).
- **Per-request** allocations in a server (everything needed to answer one request).
- **Loading a level / parsing a file** — lots of small allocations during the parse, then you either keep the result for the program's lifetime or throw it all away.
- **Scratch / temporary** work inside a procedure that builds intermediate data.

You **don't** want an arena when objects have wildly different lifetimes, or when the arena would grow without bound during a single "phase."

How it relates to other allocators you'll meet in Odin:

- `runtime.default_allocator` — general-purpose heap. The default.
- `mem.Arena` / `virtual.Arena` — bump-pointer arenas (this article).
- `context.temp_allocator` — Odin already gives every procedure a built-in arena-like allocator for short-lived junk. You call `free_all(context.temp_allocator)` (typically once per frame / per request) to reset it. This is essentially "an arena that's already set up for you."
- Pool allocators, stack allocators, tracking allocators — specialized variants for specific patterns.

So a custom arena is what you make when `temp_allocator` isn't the right scope, or when you want a *named* lifetime you control explicitly.

## A concrete runnable example

Odin's standard library has `core:mem` with `mem.Arena`. Here's a minimal program that creates an arena, allocates a bunch of things into it, uses them, and then frees everything in one shot.

```odin
package arena_demo

import "core:fmt"
import "core:mem"

main :: proc() {
    // 1. Reserve a backing buffer. The arena will hand out slices of this.
    //    Here we use a stack-allocated 4 KiB buffer; it could just as easily
    //    be heap-allocated, or memory-mapped.
    backing: [4 * 1024]u8

    // 2. Create the arena and point it at our buffer.
    arena: mem.Arena
    mem.arena_init(&arena, backing[:])

    // 3. Wrap it in an allocator value.
    arena_alloc := mem.arena_allocator(&arena)

    // 4. Use it. Two common patterns:

    // (a) Pass it explicitly to make/new:
    nums := make([]int, 100, arena_alloc)
    for &n, i in nums {
        n = i * i
    }
    fmt.println("first five squares:", nums[:5])

    // (b) Or set it as context.allocator for a scope, so any code that
    //     uses the default allocator (including append, library calls,
    //     etc.) ends up in the arena automatically.
    {
        context.allocator = arena_alloc

        words: [dynamic]string
        append(&words, "hello")
        append(&words, "arena")
        append(&words, "world")

        fmt.println("words:", words)
        // No need to delete(words) — the arena owns the memory.
    }

    fmt.println("bytes used in arena:", arena.offset, "/", len(arena.data))

    // 5. Free everything at once. Two equivalent moves:
    //    - free_all(arena_alloc)        // resets offset to 0, memory reusable
    //    - mem.arena_free_all(&arena)   // same thing, direct call
    //
    // If the arena owned its own backing buffer, you'd call
    // mem.arena_destroy(&arena) to release that too. Ours is on the stack,
    // so it goes away when main() returns.
    free_all(arena_alloc)

    fmt.println("after reset, bytes used:", arena.offset)
}
```

Run it with `odin run .` from the directory containing the file.

## What just happened

- We reserved 4 KiB once.
- `make([]int, 100, arena_alloc)` bumped the arena's pointer forward by `100 * size_of(int)` bytes — no system call, no malloc bookkeeping.
- Each `append(&words, ...)` did the same when the dynamic array grew.
- `free_all` set the arena's internal offset back to 0. Every allocation we made is now logically gone, in O(1).

That's the win: speed, simplicity, and no leaks-by-forgetting — at the cost of giving up per-allocation `free`.

## Rule of thumb to take with you

> If a bunch of allocations all die at the same time, give them an arena. If they die at unpredictable times, use the default heap allocator. If they're tiny scratch values that die "soon," consider `context.temp_allocator`.
