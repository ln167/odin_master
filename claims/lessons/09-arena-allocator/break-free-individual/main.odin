package main

// Lesson 09 "break it" #3 (corrected): freeing one arena item does NOT crash. The
// arena's .Free returns Mode_Not_Implemented as an ERROR value (allocate many,
// reset all). delete returns that error; ignoring it is a silent no-op.
import "core:fmt"
import "core:mem"

main :: proc() {
	backing := make([]u8, 64 * 1024)
	defer delete(backing)
	arena: mem.Arena
	mem.arena_init(&arena, backing)
	context.allocator = mem.arena_allocator(&arena)
	s, _ := make([]int, 4)
	err := delete(s)
	fmt.printfln("delete arena item err=%v", err)
}
