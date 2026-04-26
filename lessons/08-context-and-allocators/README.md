# Lesson 08 — context and allocators  *(stub)*

## Concept
Every Odin proc has an implicit `context` — a struct holding the current
allocator, temp allocator, logger, user data. Swap allocators by
overwriting `context.allocator` (often inside a `context = ...` scope).

## TODO
- [ ] Print `context.allocator` to see the default.
- [ ] Wrap a block with `context.allocator = mem.tracking_allocator(...)`
      and show that leaks are reported on shutdown.
- [ ] Show the temp allocator (`context.temp_allocator`) and
      `free_all(context.temp_allocator)`.
- [ ] Low-level interlude: context is passed in a hidden register on
      every call — close to free.

## Find more like this
    odin-search "context allocator" --top 5
    odin-search "tracking_allocator" --top 5

## Next: `lessons/09-arena-allocator/`
