package main

// Lesson 07 HTML probe (Level 1/3): two different "empty it" operations.
// clear(&xs) sets len back to 0 but KEEPS the buffer (cap unchanged) — so the
// next appends reuse the storage with no allocation. delete(xs) returns the
// buffer to the allocator entirely. The page contrasts these: clear to reuse
// within a frame, delete to give the memory back. Measured stable numbers only.
import "core:fmt"

main :: proc() {
	xs: [dynamic]int
	defer delete(xs)
	append(&xs, 10, 20, 30, 40, 50)
	fmt.printf("filled         len=%d cap=%d\n", len(xs), cap(xs))
	clear(&xs)
	fmt.printf("after clear    len=%d cap=%d\n", len(xs), cap(xs))
	append(&xs, 99)
	fmt.printf("after reappend len=%d cap=%d\n", len(xs), cap(xs))
}
