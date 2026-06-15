package main

// Lesson 07 HTML probe (Level 1/3): the REAL capacity-growth schedule. We start
// from a zero-initialized [dynamic]int (data nil, len 0, cap 0), append one
// element at a time, and print len and cap after each append. The page shows
// these exact numbers, so the "cap jumps when len fills it" story is measured,
// not predicted. The growth factor is allocator-defined; whatever this toolchain
// prints is the ground truth.
import "core:fmt"

main :: proc() {
	xs: [dynamic]int
	defer delete(xs)
	fmt.printf("start          len=%d cap=%d\n", len(xs), cap(xs))
	for i in 0 ..< 20 {
		append(&xs, i)
		fmt.printf("append %2d      len=%2d cap=%2d\n", i, len(xs), cap(xs))
	}
}
