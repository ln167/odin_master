package lesson_17

import "core:fmt"

// Lesson 17 "break it": @(test) is stamped on a proc that is NOT a test --
// it has the signature proc(int, int, int) -> int, not proc(^testing.T).
// `odin build .` would quietly strip test procs and succeed, but `odin test .`
// checks the signature and refuses, with:
//   Error: Testing procedures must have a signature type of proc(^testing.T),
//   got proc(int, int, int) -> int
// The attribute is checked, not just recorded. (`test-fails` asserts that
// `odin test .` exits nonzero with that error string present.)
@(test)
clamp_to_range :: proc(value, lo, hi: int) -> int {
	if value < lo {
		return lo
	}
	if value > hi {
		return hi
	}
	return value
}

main :: proc() {
	fmt.println("clamp_to_range(5, 0, 10) =", clamp_to_range(5, 0, 10))
}
