package main

// Lesson 07d HTML probe (Level 1): the stack slot is reused; the heap is not.
// frame_local() builds a frame, takes its local's address, and pops the frame.
// The next call builds its frame at the SAME spot, so the local lands at the
// SAME address -> the slot was reused. By contrast new() reaches into the heap
// and hands back FRESH storage each time, so two news are never equal. This is
// the whole stack-vs-heap split in two comparisons.
import "core:fmt"

frame_local :: proc() -> uintptr {
	x: int
	return uintptr(&x) // address of a local in THIS call's frame
}

main :: proc() {
	a1 := frame_local()
	a2 := frame_local()
	fmt.println("stack slot reused across calls:", a1 == a2) // true

	p1 := new(int)
	p2 := new(int)
	fmt.println("two new(int) are the same address:", p1 == p2) // false
	free(p1)
	free(p2)
}
