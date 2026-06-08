package main

import "core:fmt"

main :: proc() {
	a := 42 // inferred: int
	b: f32 = 3.14 // explicit: 32-bit float
	c := "ok" // string (immutable, length-tagged)
	d: bool = true

	fmt.println(a, b, c, d)
	fmt.printf("a=%d  b=%.2f  c=%q  d=%v\n", a, b, c, d)
}
