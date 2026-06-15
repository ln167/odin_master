package main

// Lesson 07 HTML probe (Level 3): when append grows past cap, the buffer is
// reallocated and the data pointer MOVES. We capture &xs[0] before filling the
// slot, then append past cap, then compare addresses. A held pointer into the
// old buffer now dangles. Addresses are nondeterministic, so the page shows the
// stable facts: cap before/after, and whether the buffer moved (it does).
import "core:fmt"

main :: proc() {
	xs: [dynamic]int
	defer delete(xs)
	append(&xs, 1, 2, 3, 4) // len 4
	before := &xs[0]
	cap_before := cap(xs)
	// Append past cap to force a realloc (cap was 8; fill to 9).
	for i in 0 ..< 6 {
		append(&xs, 100 + i)
	}
	after := &xs[0]
	cap_after := cap(xs)
	fmt.printf("cap before grow = %d\n", cap_before)
	fmt.printf("cap after  grow = %d\n", cap_after)
	fmt.printf("buffer moved    = %v\n", before != after)
}
