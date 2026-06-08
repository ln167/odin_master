package main

// Lesson 10 "break it" #3: single-result type assertion on the WRONG variant.
// `s` holds a Circle, but we assert `.(Square)`. This COMPILES (the types are
// compatible union members), then panics at runtime. The safe form is the
// two-value `sq, ok := s.(Square)`, which returns ok=false instead of panicking.
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
	sq := s.(Square)
	fmt.println(sq)
}
