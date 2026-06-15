package main

// Lesson 09 HTML L2: free_all snaps the cursor back to the start, so the very
// next allocation reuses the SAME address the first one had. Raw addresses are
// nondeterministic; we print the DERIVED fact that the two addresses are equal,
// plus the offset before/after the reset and after the re-allocation.
import "core:fmt"
import "core:mem"

main :: proc() {
	backing := make([]u8, 64 * 1024)
	defer delete(backing)
	arena: mem.Arena
	mem.arena_init(&arena, backing)

	first, _ := mem.arena_alloc(&arena, 32)
	off_before := arena.offset

	mem.arena_free_all(&arena)
	off_after_reset := arena.offset

	second, _ := mem.arena_alloc(&arena, 32)
	off_after_realloc := arena.offset

	fmt.printfln("offset after first alloc=%d", off_before)
	fmt.printfln("offset after free_all=%d", off_after_reset)
	fmt.printfln("offset after re-alloc=%d", off_after_realloc)
	fmt.printfln("second addr == first addr: %v", uintptr(second) == uintptr(first))
}
