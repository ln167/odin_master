package main

// Lesson 09 "break it" #1 (corrected): an arena that can't satisfy a request does
// NOT panic. make returns an empty slice (len 0, nil data) and an Out_Of_Memory
// error. The single-value `make(...)` form silently discards that error -- the
// real footgun. Use the two-value form to see it.
import "core:fmt"
import "core:mem"

main :: proc() {
	backing := make([]u8, 256)
	defer delete(backing)
	arena: mem.Arena
	mem.arena_init(&arena, backing)
	context.allocator = mem.arena_allocator(&arena)
	big, err := make([]int, 1000)
	fmt.printfln("overflow: len=%d err=%v", len(big), err)
}
