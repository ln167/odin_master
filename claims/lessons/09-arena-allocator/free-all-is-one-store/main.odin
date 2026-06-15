package main

// Lesson 09 HTML L4: free_all is a single store (offset = 0). It does NOT zero
// the backing buffer, so the bytes from the previous use are still sitting there
// after the reset -- which is exactly why a pointer held across free_all reads
// stale-but-plausible data instead of crashing. We write a sentinel, reset, and
// read the SAME backing bytes back: still the sentinel. Then a fresh allocation
// overwrites them. We keep a raw ^int into backing[0:] to dodge the escape check.
import "core:fmt"
import "core:mem"

main :: proc() {
	backing := make([]u8, 64 * 1024)
	defer delete(backing)
	arena: mem.Arena
	mem.arena_init(&arena, backing)

	context.allocator = mem.arena_allocator(&arena)

	first := make([]int, 1)
	first[0] = 1234
	stale := &first[0] // a pointer into the arena's bytes

	mem.arena_free_all(&arena)
	fmt.printfln("offset after free_all=%d", arena.offset)
	fmt.printfln("stale read after reset (not zeroed)=%d", stale^)

	second := make([]int, 1)
	second[0] = 5678
	fmt.printfln("after re-alloc, same address now reads=%d", stale^)
	fmt.printfln("stale and second alias same address: %v", uintptr(stale) == uintptr(&second[0]))
}
