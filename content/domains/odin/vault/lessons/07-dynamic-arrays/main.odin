package main

import "core:fmt"

main :: proc() {
	// 1. DECLARE A DYNAMIC ARRAY OF INTS.
	//
	//    Declare a variable `scores` of type `[dynamic]int`. Just the
	//    declaration is enough — Odin zero-initializes it, which means
	//    `data` is nil, `len` is 0, `cap` is 0, and no allocation has
	//    happened yet. The first append will trigger the first alloc.
	//
	//    On the VERY NEXT LINE, write `defer delete(scores)`. Pair them
	//    visually. This is the idiom for owned containers in Odin: the
	//    cleanup is written next to the declaration so a reviewer can
	//    confirm "yes, this is freed" without scrolling.


	// 2. APPEND ITEMS, INCLUDING WITH VARARGS.
	//
	//    Push 10 onto `scores` with a single-element append:
	//        append(&scores, 10)
	//
	//    Then push 20, 30, and 40 in a single vararg call:
	//        append(&scores, 20, 30, 40)
	//
	//    Remember `append` takes `&scores` (a pointer), not `scores`.
	//    The function may reallocate the underlying buffer, which
	//    means it has to write a new `data`/`cap`/`len` back into the
	//    array header. Pass-by-value would silently lose those updates.


	// 3. PRINT THE CONTENTS, LENGTH, AND CAPACITY.
	//
	//    Print one line that shows the array, its length, and its
	//    current capacity. Use `len(scores)` and `cap(scores)`. Format
	//    like:
	//
	//        scores: [10, 20, 30, 40] len: 4 cap: 8
	//
	//    The exact `cap` may differ depending on the allocator's
	//    initial-grow size, but `len` and the element list will match.


	// 4. ITERATE WITH for v, i in scores.
	//
	//    Print each (index, value) pair on its own line, indented two
	//    spaces, formatted like:
	//
	//          scores[0] = 10
	//          scores[1] = 20
	//          scores[2] = 30
	//          scores[3] = 40
	//
	//    Recall from lesson 05 that `for v, i in ...` puts VALUE first
	//    and INDEX second. The same rule applies to dynamic arrays —
	//    they iterate identically to fixed arrays and slices.


	// 5. TAKE A SLICE AND SUM IT.
	//
	//    The expression `scores[:]` produces a `[]int` — a slice view
	//    into the dynamic array's buffer. Most APIs in the standard
	//    library take `[]T`, not `[dynamic]T`, so this conversion is
	//    something you'll do often.
	//
	//    Compute the sum of all elements by ranging over `scores[:]`
	//    with `for v in scores[:] { ... }`. Print the result like:
	//
	//        sum: 100
	//
	//    (Yes, you could range over `scores` directly without the
	//    `[:]` — both work. Use the `[:]` form here to internalize
	//    the conversion, because it's required when *passing* the
	//    array to a proc that takes a slice.)


	// 6. PRE-ALLOCATE A SECOND ARRAY WITH MAKE + RESERVE-STYLE CAPACITY.
	//
	//    Use `make` to create a dynamic array with capacity 1024 but
	//    length 0:
	//        big := make([dynamic]int, 0, 1024)
	//        defer delete(big)
	//
	//    The 0 is initial length; the 1024 is initial capacity. This
	//    is the equivalent of `new List<int>(1024)` in C# — preallocate
	//    the buffer so the next 1024 appends don't trigger any
	//    grow-and-copy cycles.
	//
	//    Append the squares 0, 1, 4, 9, 16 with a small loop:
	//        for i in 0..<5 { append(&big, i*i) }
	//
	//    Then print:
	//        big: [0, 1, 4, 9, 16] len: 5 cap: 1024
	//
	//    Notice `cap` stayed at 1024 — no reallocation happened
	//    because the reserve was big enough. That's the whole point
	//    of preallocation.

	// Run with: odin run main.odin -file
	// Compare your output to expected-output.txt.
}
