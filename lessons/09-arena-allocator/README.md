# Lesson 09 — arena allocator  *(stub)*

## Concept
A bump allocator: `alloc` increments a pointer, `free` is a no-op. Reset
the whole arena at the end of a scope and everything is "freed" at once.
Wins for per-frame, per-request, per-job allocations.

## TODO
- [ ] `arena: mem.Arena; mem.arena_init(&arena, make([]u8, 1<<20))`
- [ ] Wrap a block with `context.allocator = mem.arena_allocator(&arena)`.
- [ ] Allocate a few things inside, then `mem.arena_free_all(&arena)`.
- [ ] Low-level interlude: zero per-alloc overhead, perfect cache locality.
- [ ] Break it: try to outlive the arena (use a pointer past the
      `free_all`). UB territory — observe the corruption.

## Find more like this
    odin-search "arena" --top 5
    odin-search "bump allocator" --top 5

## Next: `lessons/10-tagged-unions/`
