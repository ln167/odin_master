package main

import "core:fmt"

Counter :: struct {
	n: int,
}

frame_local_addr :: proc() -> uintptr {
	x: int
	return uintptr(&x)
}

deeper :: proc() -> uintptr {
	y: int
	return uintptr(&y)
}

make_on_heap :: proc() -> ^Counter {
	c := new(Counter)
	c.n = 1
	return c
}

main :: proc() {
	// 1. a stack frame is reused across calls.
	a1 := frame_local_addr()
	a2 := frame_local_addr()
	fmt.println("same stack slot reused across calls:", a1 == a2)

	// 2. the stack grows downward.
	outer: int
	fmt.println("deeper frame is at a lower address:", deeper() < uintptr(&outer))

	// 3. a heap value outlives the proc that made it.
	c := make_on_heap()
	c.n += 1
	fmt.println("heap counter survived the return:", c.n)
	free(c)

	// 4. a heap slice you own, then give back.
	buf := make([]int, 4)
	for &v, i in buf {
		v = i * i
	}
	fmt.println("heap slice built:", buf[0], buf[1], buf[2], buf[3])
	delete(buf)
}
