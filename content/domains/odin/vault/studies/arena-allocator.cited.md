# Arena allocators in Odin

## Mental model: why allocators exist at all

Odin is "manual memory management based" — meaning when you ask for memory, you also have to give it back (`docs-overview.md:3431`). But Odin doesn't make you call `malloc`/`free` directly. Instead, every allocation goes through an **allocator**, which is just a small interface saying "here's how to hand out memory and how to give it back."

There's an implicit `context` available in every procedure. It carries two allocators around for you (`docs-overview.md:3449-3454`):

- `context.allocator` — general-purpose, defaults to the OS heap
- `context.temp_allocator` — short-lived stuff, defaults to a growing arena

When you write `new(int)` or `make([]int, 10)`, Odin silently fills in `context.allocator` for you. So `new(int)` is the same as `new(int, context.allocator)` (`docs-overview.md:3437-3445`).

That's the foundation. An "arena allocator" is just one *kind* of allocator you can plug into that slot.

## What's an arena?

> "Arenas and arena allocators are useful for *grouping* allocations that have the same lifetime. Here *lifetime* means allocations that are fine to deallocate at the same time, which can be done by destroying the arena they were allocated into."
> — Karl Zylinski, `posts-dynamic-arrays-and-arenas.md:37`

The shape: an arena owns a block of memory. When you allocate from it, it just bumps a pointer forward inside that block — fast and trivial. There is no per-allocation `free`. You free **everything in the arena at once** when you're done.

> "Note that it is *not* possible to do `free(number1)` or `free(number2)`. That will just return the error `Mode_Not_Implemented`. You can only deallocate everything in the arena, not individual parts of it. This makes sense, since the arena is meant for *things that have the same lifetime*."
> — `posts-dynamic-arrays-and-arenas.md:89`

So compared to the default heap allocator (which tracks every allocation individually so you can `free` each one), an arena is:

- **Faster** — allocate = bump a pointer.
- **Simpler to reason about** — one lifetime per arena, no per-allocation bookkeeping in your head.
- **Bulk free only** — that's the trade-off.

## When would you reach for one?

Whenever you have a bunch of allocations that all want to die at the same time. Concrete examples:

- Loading a level / scene / config — all those strings and structs go away when the level unloads.
- Parsing a file — all the AST nodes are useless after you're done.
- Per-frame scratch work in a game loop (this is what `context.temp_allocator` already is — `docs-overview.md:3454`).
- Reading a few files into memory for processing (the example below).

If you'd otherwise be calling `free` on twenty things in a row, an arena is probably what you want.

## Variants in Odin's stdlib

`core:mem/virtual` gives you one type, `vmem.Arena`, with three modes (`arena.odin:8-12`):

- **Growing** — `arena_init_growing` — a linked list of virtual-memory blocks. Add as much as you want; it allocates more blocks as needed. Default for "I don't know how big this'll get."
- **Static** — `arena_init_static` — one big virtual reservation (1 GiB by default on 64-bit, `arena.odin:42`), committed lazily. Cap on size, no relocation, very stable addresses.
- **Buffer** — `arena_init_buffer` — you hand it a `[]byte`, it allocates inside that. No virtual memory needed. Useful for embedded / fixed-size scenarios.

There's also `mem.Arena` in `core:mem` for platforms without virtual memory (`arena_allocator.odin:6-9`).

For your level: just use `arena_init_growing` from `core:mem/virtual`. It's the friendliest.

## Concrete runnable example

This is the official example from `content/domains/odin/source/raw/tier3-community/odin-examples/arena_allocator/arena_allocator.odin:1-51`, lightly trimmed. It loads three files into an arena, prints them, then frees the whole arena in one shot.

```odin
package arena_demo

import "core:fmt"
import "core:os"
import vmem "core:mem/virtual"

load_files :: proc() -> ([]string, vmem.Arena) {
    // 1. Make an arena. Growing variant: it'll reserve more virtual
    //    memory blocks if it needs to.
    arena: vmem.Arena
    arena_err := vmem.arena_init_growing(&arena)
    ensure(arena_err == nil)

    // 2. Wrap it as an Allocator so we can pass it to allocating procs.
    arena_alloc := vmem.arena_allocator(&arena)

    // 3. Allocate into the arena by passing arena_alloc explicitly.
    //    Each read_entire_file allocation lives inside the arena.
    f1, f1_err := os.read_entire_file("file1.txt", arena_alloc)
    ensure(f1_err == nil)
    f2, f2_err := os.read_entire_file("file2.txt", arena_alloc)
    ensure(f2_err == nil)
    f3, f3_err := os.read_entire_file("file3.txt", arena_alloc)
    ensure(f3_err == nil)

    // The slice itself also goes in the arena.
    res := make([]string, 3, arena_alloc)
    res[0] = string(f1)
    res[1] = string(f2)
    res[2] = string(f3)

    return res, arena
}

main :: proc() {
    files, arena := load_files()

    for f in files {
        fmt.println(f)
    }

    // 4. One call frees ALL of it: every file's bytes plus the slice.
    //    No need to track individual frees.
    vmem.arena_destroy(&arena)
}
```

The walk-through:

1. **`vmem.Arena{}` is just a struct.** Zero-initialize it on the stack.
2. **`arena_init_growing(&arena)`** sets up the first virtual-memory block (`arena.odin:49`).
3. **`arena_allocator(&arena)`** returns a `mem.Allocator` value (`arena.odin:323`) — that's the interface every allocating proc speaks.
4. **Passing `arena_alloc` as the last arg** to `read_entire_file` and `make` redirects those allocations into the arena instead of the default heap. That's the only difference from "normal" code.
5. **`arena_destroy(&arena)`** at the end releases everything in one call (`arena.odin:246`). No per-file `delete`.

## Pattern variant: swap it onto `context.allocator`

If you don't want to pass `arena_alloc` to every call, override the context for a scope:

```odin
old := context.allocator
context.allocator = arena_alloc
defer context.allocator = old

// Now plain new(...) and make(...) use the arena automatically.
buf := make([]u8, 1024)
n   := new(int)
```

This is the pattern described in `docs-overview.md:3433` ("dynamic arrays and `map` both contain a custom allocator … the allocator from the current `context` will be assigned").

## How it relates to the other allocators you'll meet

| Allocator | Frees individually? | Typical use |
|---|---|---|
| Default heap (`context.allocator` default) | Yes, each `free`/`delete` | "I don't know lifetimes; do it the normal way." |
| Arena (`vmem.Arena`) | No, all at once | Group of things with the same lifetime. |
| Temp allocator (`context.temp_allocator`) | No — `free_all(context.temp_allocator)` per frame | "Scratch space I'll throw away soon." It *is* an arena under the hood (`docs-overview.md:3454`). |
| Tracking allocator (`mem.Tracking_Allocator`) | Wraps another allocator, reports leaks | Debug only — wrap your real allocator with it under `when ODIN_DEBUG` (`docs-overview.md:3517-3548`). |

So an arena isn't a competitor to the default heap — it's a tool for *one specific lifetime pattern* you can plug in alongside it. The temp allocator is just an arena that gets reset every frame for you. Once you've used one arena yourself, the temp allocator stops feeling magical.

## Sources cited

- `content/domains/odin/source/raw/tier1-authoritative/odin-lang-org/docs-overview.md:3431-3454, 3517-3548`
- `content/domains/odin/source/raw/tier3-community/odin-examples/arena_allocator/arena_allocator.odin:1-51`
- `~/odin/dist/core/mem/virtual/arena.odin:8-12, 42, 49, 246, 323`
- `content/domains/odin/source/raw/tier2-curated/karl-zylinski/posts-dynamic-arrays-and-arenas.md:37, 89`
