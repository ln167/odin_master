package main

// Backs the EXACT signature shown on the lesson 19 page:
//   min_max :: proc "contextless" (s: $S/[]$T) -> (min, max: T, ok: bool)
//              where intrinsics.type_is_ordered(T)
// If the call below compiles, the three-return shape and the ordered-element
// constraint are real, as read from core/slice/slice.odin. This is the
// "read the real signature, then USE it" step of the search loop.

import "core:slice"

main :: proc() {
	// $T = int is ordered, so the `where` constraint is satisfied.
	xs := []int{3, 1, 2}
	lo, hi, ok := slice.min_max(xs)
	_ = lo
	_ = hi
	_ = ok

	// Works for any ordered element type, e.g. f32.
	ys := []f32{2.5, -1.0, 9.0}
	a, b, c := slice.min_max(ys)
	_ = a
	_ = b
	_ = c
}
