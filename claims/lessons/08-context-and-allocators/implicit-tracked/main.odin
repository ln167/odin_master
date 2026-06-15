package main

// Lesson 08 HTML probe (Level 1, the core mechanism): new() and make() read
// context.allocator IMPLICITLY -- no allocator argument, no parameter threaded.
// We prove it by wrapping the default allocator in a tracking allocator and
// putting it on context.allocator: every allocation that flows through the
// context is now counted, INCLUDING allocations made inside a helper proc that
// takes no allocator parameter at all.
import "core:fmt"
import "core:mem"

// Takes NO allocator parameter. It reads context.allocator implicitly.
make_buffer :: proc(n: int) -> []int {
	return make([]int, n)
}

main :: proc() {
	track: mem.Tracking_Allocator
	mem.tracking_allocator_init(&track, context.allocator)
	context.allocator = mem.tracking_allocator(&track)

	fmt.println("bytes tracked before any allocation:", track.current_memory_allocated)

	p := new(int) // implicit context.allocator -> tracked
	p^ = 7
	fmt.println("bytes tracked after new(int):", track.current_memory_allocated)

	buf := make_buffer(4) // helper takes no allocator -> still tracked
	fmt.println("allocation count after make([]int,4) via helper:", track.total_allocation_count)

	free(p)
	delete(buf)
	mem.tracking_allocator_destroy(&track)
}
