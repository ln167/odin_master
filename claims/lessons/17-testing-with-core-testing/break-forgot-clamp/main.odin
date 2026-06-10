package lesson_17

import "core:fmt"

// Lesson 17 "break it": the upper branch returns `value` instead of `hi`, so the
// proc no longer clamps the top of the range. clamp_above_range_returns_hi fails
// (expected 10, got 99), as does the {7, 3, 3} boundary row. `odin test .` exits
// nonzero -- the harness asserts that failure (test-fails kind).
clamp_to_range :: proc(value, lo, hi: int) -> int {
	if value < lo {
		return lo
	}
	if value > hi {
		return value
	}
	return value
}

main :: proc() {
	fmt.println("clamp_to_range(5, 0, 10) =", clamp_to_range(5, 0, 10))
}
