package main

// Lesson 10 "break it on purpose" #2: read a variant field without narrowing.
// The claim asserts the build fails because a Shape has no field r — the only
// way to reach r is through a variant binding (type switch or assertion).

import "core:fmt"

Circle :: struct {
	r: f32,
}
Square :: struct {
	side: f32,
}
Triangle :: struct {
	base, height: f32,
}
Shape :: union {
	Circle,
	Square,
	Triangle,
}

main :: proc() {
	s: Shape = Circle{r = 2}
	fmt.println(s.r) // s is a Shape, not a Circle — no field r
}
