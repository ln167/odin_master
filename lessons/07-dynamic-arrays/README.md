# Lesson 07 — dynamic arrays  *(stub)*

## Concept
`[dynamic]T` is `(ptr, len, cap, allocator)`. Owns its storage. Grows
geometrically on `append`. Must be freed with `delete` or
`defer delete(arr)`.

## TODO
- [ ] `arr: [dynamic]int; defer delete(arr); append(&arr, 1, 2, 3)`
- [ ] Show `len` vs `cap`, and what `reserve` / `resize` do.
- [ ] Low-level interlude: amortized O(1), realloc copies bytes.
- [ ] Break it: forget `delete`, then turn on the tracking allocator
      (foreshadow lesson 08).

## Find more like this
    odin-search "dynamic array" --top 5
    odin-search "append" --top 5

## Next: `lessons/08-context-and-allocators/`
