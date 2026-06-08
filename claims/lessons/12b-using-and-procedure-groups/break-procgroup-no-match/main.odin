package main

// Lesson 12b "break it" #2: call a proc group with a type no member accepts.
// area() has Circle/Square members; a string matches none -> compile error.
Circle :: struct {
	radius: f32,
}

Square :: struct {
	side: f32,
}

area_circle :: proc(c: Circle) -> f32 {return 3.14159 * c.radius * c.radius}
area_square :: proc(s: Square) -> f32 {return s.side * s.side}

area :: proc{area_circle, area_square}

main :: proc() {
	_ = area("hello")
}
