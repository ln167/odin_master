# Lesson 05 — fixed arrays

## Concept
`[N]T` is a value type whose length is part of the type. No heap
allocation, no separate length word, copy is a `memcpy` of `N * sizeof(T)`.
Element-wise math (`+`, `-`, `*`) works on arrays of numeric types — no
loop required.

## Setup
1. `cd lessons/05-arrays-fixed`
2. Open `main.odin`.

## Do this
Type:

```odin
package main

import "core:fmt"

Vec3 :: [3]f32

main :: proc() {
    a: [4]int = {10, 20, 30, 40}
    fmt.println("len:", len(a), "first:", a[0], "last:", a[len(a) - 1])

    // Iterate. `i, v` gives index and value (not a borrow — `v` is a copy).
    for v, i in a {
        fmt.printf("  a[%d] = %d\n", i, v)
    }

    // Element-wise math on numeric arrays:
    p: Vec3 = {1, 2, 3}
    q: Vec3 = {10, 20, 30}
    r := p + q                 // {11, 22, 33}
    fmt.println("p + q =", r)

    // Slicing turns a fixed array into a slice (lesson 06):
    middle := a[1:3]
    fmt.println("a[1:3] =", middle, "len:", len(middle))
}
```

## Now do this
1. `:w`
2. `odin run main.odin -file`

3. **You should see:**

       len: 4 first: 10 last: 40
         a[0] = 10
         a[1] = 20
         a[2] = 30
         a[3] = 40
       p + q = [11, 22, 33]
       a[1:3] = [20, 30] len: 2

## What just happened
- `[4]int` is a value, not a pointer. `b := a` copies all 4 ints.
- `for v, i in a` iterates by value (and the index comes second — that's
  intentional, since you almost never want the index).
- `p + q` works because Odin defines `+` element-wise on numeric arrays
  of the same type and length. This is what you'd expect from a
  game-engine-friendly language.
- `a[1:3]` is a slice (`[]int`). It points *into* `a`'s storage and
  carries a length. Lesson 06.

## Low-level interlude
- `[4]int` on a 64-bit machine is 32 bytes, 8-byte aligned, no overhead.
- `[3]f32` (Vec3) is 12 bytes. SIMD-friendly when stored in `#soa` form
  (lesson 12).
- Bounds checks: `a[5]` panics at runtime in debug builds. `-no-bounds-check`
  removes them in release if you've measured and it matters.

## Now break it
1. Try `a[10]`. Compile, run, read the panic message. Note the file:line.
2. Try `p: [3]f32 = {1,2,3}; q: [4]f32 = {1,2,3,4}; r := p + q`. The
   compiler refuses — array length is part of the type.

## Find more like this
    odin-search "fixed array" --top 5
    odin-search "array programming" --top 5

## Next: `lessons/06-slices/` *(stub for now — fill it in as you work it)*
