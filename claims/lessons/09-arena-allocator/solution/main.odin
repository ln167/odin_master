package main

import "core:fmt"
import "core:mem"

main :: proc() {
	// 1. backing buffer.
	backing := make([]u8, 64 * 1024)
	defer delete(backing)

	// 2. init the arena over it.
	arena: mem.Arena
	mem.arena_init(&arena, backing)
	fmt.printfln("arena ready, capacity: %d", len(arena.data))

	// 3. a "frame" under the arena allocator.
	{
		context.allocator = mem.arena_allocator(&arena)
		squares := make([dynamic]int, 0, 8)
		for i in 0 ..< 8 {
			append(&squares, i * i)
		}
		msg := fmt.aprintf("squares: %v", squares[:])
		fmt.println(msg)
		fmt.printfln("after frame 1: offset=%d peak=%d", arena.offset, arena.peak_used)
	}

	// 4. reset; peak is preserved.
	mem.arena_free_all(&arena)
	fmt.printfln("after free_all: offset=%d peak=%d (peak preserved)", arena.offset, arena.peak_used)

	// 5. a second, bigger frame into the same buffer.
	{
		context.allocator = mem.arena_allocator(&arena)
		big := make([]int, 1024)
		big[0] = 99
		big[len(big) - 1] = -1
		fmt.printfln("frame 2: big[0]=%d big[last]=%d len=%d", big[0], big[len(big) - 1], len(big))
		fmt.printfln("after frame 2: offset=%d peak=%d", arena.offset, arena.peak_used)
	}
}
