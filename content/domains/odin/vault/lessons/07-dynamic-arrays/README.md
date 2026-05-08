# Lesson 07 — dynamic arrays

## Concept
`[dynamic]T` is `(ptr, len, cap, allocator)` — four words. It **owns** its
storage, grows on `append`, and must be freed (`delete` or `defer delete`).
Think of it as Odin's `Vec<T>` / `std::vector<T>` / `[]T` (Go).

## Setup
1. `cd content/domains/odin/vault/content/domains/odin/vault/lessons/07-dynamic-arrays`
2. Open `main.odin`.

## Do this
Type:

```odin
package main

import "core:fmt"

main :: proc() {
    nums: [dynamic]int
    defer delete(nums)            // free on scope exit

    append(&nums, 10)
    append(&nums, 20, 30, 40)     // append takes varargs
    fmt.println("nums:", nums, "len:", len(nums), "cap:", cap(nums))

    // Pre-reserve to avoid reallocs in a hot loop.
    big: [dynamic]int
    defer delete(big)
    reserve(&big, 1024)
    fmt.println("big   len:", len(big), "cap:", cap(big))

    for i in 0..<5 { append(&big, i*i) }
    fmt.println("big after 5 appends:", big[:], "len:", len(big), "cap:", cap(big))

    // resize sets len directly, zero-initializing new slots.
    resize(&nums, 6)
    fmt.println("nums after resize(6):", nums)

    // A dynamic array converts to []T transparently with [:].
    sum := 0
    for v in nums[:] { sum += v }
    fmt.println("sum:", sum)
}
```

## Now do this
1. `:w`
2. `odin run main.odin -file`

3. **You should see:**

       nums: [10, 20, 30, 40] len: 4 cap: 8
       big   len: 0 cap: 1024
       big after 5 appends: [0, 1, 4, 9, 16] len: 5 cap: 1024
       nums after resize(6): [10, 20, 30, 40, 0, 0]
       sum: 100

(The first `cap` may differ slightly across compiler versions — the
growth strategy is implementation-defined. Length and contents won't.)

## What just happened
- `defer delete(nums)` runs when `main` returns, freeing the heap buffer.
- `append(&nums, ...)` takes a pointer because it may reallocate (and it
  needs to update `len`).
- `reserve` sets capacity without changing `len`. Use it when you know
  the eventual size — saves the cost of repeated grow-and-copy.
- `resize` changes `len` and zero-initializes new slots.
- `nums[:]` produces a `[]int` slice into the dynamic array's buffer.
  Most APIs that take `[]T` accept this directly; you rarely pass
  `[dynamic]T` as a parameter.

## Low-level interlude
- A `[dynamic]T` is 32 bytes on 64-bit (ptr + len + cap + allocator
  header).
- `append` grows geometrically (typically ~2× cap), which gives amortized
  O(1) per append. Each grow does a fresh `alloc + memcpy + free`.
- The allocator captured at append-time is the *current* `context.allocator`.
  If you swap allocators between appends to the same dynamic array,
  Odin will detect the mismatch — which is a strong hint to keep one
  allocator per container.

## Now break it
1. Drop `defer delete(nums)`. Run with the tracking allocator from
   lesson 08 — leak reports name the file:line that allocated.
2. Hand a `^[dynamic]int` to a proc that does `delete(arr^)` and then
   `append(&arr^, 1)`. Read the runtime error — using a freed dynamic
   array is unsafe and detected.
3. Take a `&nums[3]`, then `append` enough times to reallocate. The
   pointer is now dangling — any deref is UB. This is the deepest reason
   `append` takes `&arr` and not `arr` by value.

## Find more like this
    just substrate-search --bm25 "dynamic array" --top 5
    just substrate-search --bm25 "append reserve resize" --top 5

## Next: `content/domains/odin/vault/lessons/08-context-and-allocators/`
