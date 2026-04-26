# Lesson 06 — slices  *(stub)*

## Concept
A slice (`[]T`) is `(ptr: ^T, len: int)` — a view into someone else's
storage. It does not own its memory.

## TODO
- [ ] Demonstrate creating a slice from a fixed array (`a[:]`, `a[1:3]`).
- [ ] Show that `b := a[:]` aliases (mutating one mutates the other).
- [ ] Compare to `slice.clone(a[:])` which copies (and allocates).
- [ ] Low-level interlude: `[]T` layout, why this is faster than `[N]T`
      for parameter passing.
- [ ] Break it: pass a slice into a proc, mutate, observe.

## Find more like this
    odin-search "slice" --top 5

## Next: `lessons/07-dynamic-arrays/`
