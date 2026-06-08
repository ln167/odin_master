package main

// Lesson 10 "break it on purpose" #1: drop a case from the type switch.
// The lesson promises the compiler names the uncovered variant. This claim
// asserts that promise holds: the build MUST fail naming Triangle.

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

area :: proc(s: Shape) -> f32 {
	switch v in s {
	case Circle:
		return 3.14159 * v.r * v.r
	case Square:
		return v.side * v.side
	// case Triangle deliberately removed, and no catch-all
	}
}

main :: proc() {
	fmt.println(area(Circle{r = 1}))
}
