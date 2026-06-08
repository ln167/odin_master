package main

// Verified complete solution for vault lesson 10 (tagged unions).
// Its stdout must equal the lesson's expected-output.txt — that is the claim:
// the lesson's documented answer key is actually achievable by real, compiling code.

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
	case Triangle:
		return 0.5 * v.base * v.height
	case:
		return 0 // catches nil
	}
}

main :: proc() {
	shapes := [3]Shape{
		Circle{r = 2},
		Square{side = 3},
		Triangle{base = 4, height = 5},
	}
	for sh in shapes {
		fmt.printfln("area = %.3f  variant: %v", area(sh), sh)
	}

	s: Shape = Circle{r = 7}
	if c, ok := s.(Circle); ok {
		fmt.printfln("it was a Circle with r=%.1f", c.r)
	}

	none: Shape
	fmt.println("none == nil ->", none == nil, " area:", area(none))
}
