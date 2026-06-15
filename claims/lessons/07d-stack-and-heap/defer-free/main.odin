package main

// Lesson 07d HTML probe (Level 3): you own heap memory, and `defer` is how you
// hand it back without forgetting. `defer free(c)` schedules the hand-back at
// scope exit, right next to the `new` that asked for it -- so the ask and the
// return read as a pair and you can't lose track of the free in the middle of a
// long body. make/delete is the same pairing for slice-backed storage. The
// program runs to the end and frees both -- a clean, leak-free scope.
import "core:fmt"

Counter :: struct {
	n: int,
}

main :: proc() {
	c := new(Counter) // ask
	defer free(c) // hand back at scope exit, paired with the ask
	c.n = 41
	c.n += 1
	fmt.println("counter (heap, will be freed on exit):", c.n) // 42

	buf := make([]int, 4) // ask: a slice whose backing array is on the heap
	defer delete(buf) // hand back at scope exit
	for &v, i in buf {
		v = i * i
	}
	fmt.println("slice (heap, will be deleted on exit):", buf[0], buf[1], buf[2], buf[3])
	fmt.println("reached end of scope; both defers fire now")
}
