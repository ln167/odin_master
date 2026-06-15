package main

// Lesson 07 HTML probe (Level 3, the fix): two ways to reach 1024 elements.
// (A) start from cap 0 and append 1024 times, counting every time cap changes
//     (each cap change = one realloc + copy of all live elements so far).
// (B) make([dynamic]int, 0, 1024) reserves up front, then append 1024 times:
//     cap never changes, so ZERO grows. The page cites these two counts.
import "core:fmt"

main :: proc() {
	// (A) grow from nothing.
	a: [dynamic]int
	defer delete(a)
	grows := 0
	last := cap(a)
	for i in 0 ..< 1024 {
		append(&a, i)
		if cap(a) != last {
			grows += 1
			last = cap(a)
		}
	}
	fmt.printf("grow-from-0:  final cap=%d  reallocations=%d\n", cap(a), grows)

	// (B) reserve 1024 up front.
	b := make([dynamic]int, 0, 1024)
	defer delete(b)
	grows_b := 0
	last_b := cap(b)
	for i in 0 ..< 1024 {
		append(&b, i)
		if cap(b) != last_b {
			grows_b += 1
			last_b = cap(b)
		}
	}
	fmt.printf("reserve-1024: final cap=%d  reallocations=%d\n", cap(b), grows_b)
}
