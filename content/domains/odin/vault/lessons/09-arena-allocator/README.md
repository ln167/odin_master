# Lesson 09 — arena allocator

## Concept
A bump (arena/linear) allocator owns one contiguous buffer. `alloc`
moves a pointer forward by `size`. **Individual `free` is a no-op**;
`arena_free_all` resets the offset to zero, "freeing" everything at
once. Wins for per-frame, per-request, per-job lifetimes.

## Setup
1. `cd content/domains/odin/vault/content/domains/odin/vault/lessons/09-arena-allocator`
2. Open `main.odin`.

## Do this
Type:

```odin
package main

import "core:fmt"
import "core:mem"

main :: proc() {
    backing := make([]u8, 1 << 16)   // 64 KiB
    defer delete(backing)

    arena: mem.Arena
    mem.arena_init(&arena, backing)

    // Run a "frame" inside the arena.
    {
        context.allocator = mem.arena_allocator(&arena)

        a := make([]int, 8)
        b := make([]int, 8)
        for i in 0..<8 { a[i] = i; b[i] = i*i }

        msg := fmt.aprintf("a=%v  b=%v", a, b)
        fmt.println(msg)

        fmt.printfln("arena offset=%d  peak=%d", arena.offset, arena.peak_used)
    }

    // End of "frame" — wipe the arena. No individual frees needed.
    mem.arena_free_all(&arena)
    fmt.printfln("after free_all: offset=%d  peak=%d (peak preserved)",
        arena.offset, arena.peak_used)

    // Reuse the same buffer for the next frame.
    {
        context.allocator = mem.arena_allocator(&arena)
        s := make([]int, 1024)
        s[0] = 99
        fmt.println("reused arena:", s[0], "len:", len(s))
    }
}
```

## Now do this
1. `:w`
2. `odin run main.odin -file`

3. **You should see** (exact byte counts depend on alignment but should
   look like this):

       a=[0, 1, 2, 3, 4, 5, 6, 7]  b=[0, 1, 4, 9, 16, 25, 36, 49]
       arena offset: 96  peak: 96
       after free_all: offset=0  peak=96 (peak preserved)
       reused arena: 99 len: 1024

(Offset values may differ slightly; `peak_used` should match `offset`
right after the first block.)

## What just happened
- `mem.arena_init(&arena, backing)` hands the arena a slice of bytes to
  bump-allocate from. It does *not* allocate that buffer — we did, with
  `make([]u8, ...)`.
- Inside the block, every `make`/`new`/`fmt.aprintf` carves the next slot
  out of `backing`. No syscalls, no heap calls — just a pointer add.
- `arena_free_all(&arena)` sets `arena.offset = 0`. The 64 KiB buffer
  is still allocated; the arena just forgot every previous allocation.
- Notice we never call `delete(a)`, `delete(msg)`, etc. The whole point
  of an arena is that you don't have to.

## Low-level interlude
- Arena `Arena_Allocator_Proc` ignores the `.Free` mode (returns
  `Mode_Not_Implemented`). That's not a bug — it's the contract. Don't
  call `delete()` on something allocated from an arena; it'll panic.
- Cache locality is excellent: subsequent allocations are physically
  adjacent in memory.
- There's also `core:mem/virtual` which has a *growing* arena that
  reserves virtual address space and commits pages on demand. Use it
  when you don't want to pre-pick a size.

## Now break it
1. Allocate more than 64 KiB inside the arena. The arena returns
   `Out_Of_Memory`; `make` panics with that error. Increase the buffer
   size, or wire two arenas together with `mem.arena_temp_begin/end`.
2. Try `delete(a)` inside the block. The allocator refuses (mode not
   implemented). The compiler doesn't catch this — it's a runtime
   contract violation.
3. Save a pointer past the `arena_free_all`. The address is still valid
   memory, but the next allocation will *reuse* it. Print the slot before
   and after the next `make` to see the corruption first-hand. This is
   why arena lifetimes need to be explicit and short.

## Find more like this
    just substrate-search --bm25 "arena" --top 5
    just substrate-search --bm25 "bump allocator" --top 5
    just substrate-search --bm25 "memory allocation strategies" --top 5

## Next: `content/domains/odin/vault/lessons/10-tagged-unions/`
