package main

// Lesson 10 "break it on purpose" #5: a nil case under #no_nil.
// With #no_nil the union can never be nil, so a `case nil` is rejected.
// The claim asserts the build fails because nil is not a valid case here.

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
Shape :: union #no_nil {
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
	case Triangle:
		return 0.5 * v.base * v.height
	case nil:
		return 0 // dead under #no_nil — the compiler rejects this case
	}
}

main :: proc() {
	fmt.println(area(Circle{r = 1}))
}
