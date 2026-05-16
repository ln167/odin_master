# Lesson 06 — slices

## Concept
A slice (`[]T`) is `(ptr: ^T, len: int)` — two words, just like `string`,
but pointing at any `T`. It does **not** own its memory. Slice a fixed
array, slice another slice, slice a dynamic array — same type, different
backing storage.

## Setup
1. `cd content/domains/odin/vault/lessons/06-slices`
2. Open `main.odin`.

## Do this
Type:

```odin
package main

import "core:fmt"
import "core:slice"

main :: proc() {
    a := [6]int{10, 20, 30, 40, 50, 60}

    all   := a[:]      // []int over the whole array
    mid   := a[1:4]    // []int -> {20, 30, 40}
    tail  := a[3:]     // []int -> {40, 50, 60}

    fmt.println("all  :", all,  "len:", len(all))
    fmt.println("mid  :", mid,  "len:", len(mid))
    fmt.println("tail :", tail, "len:", len(tail))

    // Slices alias storage. Mutating mid[] mutates a[].
    mid[0] = 999
    fmt.println("a after mid[0]=999:", a)

    // slice.clone copies into freshly allocated memory.
    copy_of_mid := slice.clone(mid)
    defer delete(copy_of_mid)
    copy_of_mid[0] = -1
    fmt.println("mid:", mid, "  clone:", copy_of_mid)
}
```

## Now do this
1. `:w`
2. `odin run main.odin -file`

3. **You should see:**

       all  : [10, 20, 30, 40, 50, 60] len: 6
       mid  : [20, 30, 40] len: 3
       tail : [40, 50, 60] len: 3
       a after mid[0]=999: [10, 999, 30, 40, 50, 60]
       mid: [999, 30, 40]   clone: [-1, 30, 40]

## What just happened
- `a[:]` is the canonical "slice of the whole array".
- `a[lo:hi]` produces a slice of length `hi - lo`. Out-of-range bounds
  panic at runtime in debug builds.
- A slice is just a pointer + length. Assigning one slice to another
  copies the *header*, not the bytes. That's why `mid[0] = 999` shows
  up in `a`.
- `slice.clone` allocates a fresh `[]T` via `context.allocator` and
  copies. We `defer delete(copy_of_mid)` to release it.

## Low-level interlude
On 64-bit, a slice is **16 bytes**: 8-byte pointer + 8-byte length. Compare:
- `[6]int` value: 48 bytes, lives wherever it was declared.
- `[]int` view: 16 bytes, points anywhere.

Passing a slice to a procedure passes 16 bytes by value (pointer + len).
This is why "take a slice" is the idiomatic way to pass a contiguous range
of `T` — it's cheap, and the procedure sees the length.

## Now break it
1. Try `a[2:9]`. Read the panic — note that bounds checks include the
   *upper* index, not just the lower.
2. Pass `mid` to a proc that takes `[]int` and have it write `s[0] = 7`.
   Print `a` after — confirm the proc wrote into the original array.
   Slices are aliasing views, not copies.
3. Make `tail` outlive the array: return `a[:]` from a proc that declares
   `a` as a local `[6]int`. The compiler doesn't catch it; you've got a
   pointer to a stack frame that's gone. Lesson 09 (arena) shows the fix.

## Find more like this
    just substrate-search --bm25 "slice" --top 5
    just substrate-search --bm25 "slice.clone" --top 5

## Next: `content/domains/odin/vault/lessons/07-dynamic-arrays/`
