package main

// Lesson 09 HTML L2: free_all resets offset to 0 but leaves peak_used at its
// high-water mark -- the reset clears "what's in use now" without forgetting
// "the most that was ever in use". That high-water mark is how you size a real
// arena.
import "core:fmt"
import "core:mem"

main :: proc() {
	backing := make([]u8, 64 * 1024)
	defer delete(backing)
	arena: mem.Arena
	mem.arena_init(&arena, backing)
	context.allocator = mem.arena_allocator(&arena)

	a := make([]u8, 1000)
	_ = a
	fmt.printfln("offset=%d peak=%d", arena.offset, arena.peak_used)

	mem.arena_free_all(&arena)
	fmt.printfln("after free_all: offset=%d peak=%d", arena.offset, arena.peak_used)

	b := make([]u8, 100)
	_ = b
	fmt.printfln("smaller frame: offset=%d peak=%d (peak unchanged)", arena.offset, arena.peak_used)
}
