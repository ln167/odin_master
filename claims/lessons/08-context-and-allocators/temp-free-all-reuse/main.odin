package main

// Lesson 08 HTML probe (Level 3, the temp allocator's discipline): the temp
// allocator does NOT auto-clean. You wipe it in one shot with free_all, which
// is a cheap reset of the arena's cursor -- not a walk-and-free. We prove the
// reset by allocating, wiping, and allocating the same size again: the second
// allocation reuses the exact same address the first one had.
import "core:fmt"

main :: proc() {
	a := make([]u8, 32, context.temp_allocator)
	addr1 := raw_data(a)
	free_all(context.temp_allocator) // O(1) cursor reset, memory reusable
	b := make([]u8, 32, context.temp_allocator)
	addr2 := raw_data(b)
	fmt.println("same address reused after free_all:", addr1 == addr2)
}
