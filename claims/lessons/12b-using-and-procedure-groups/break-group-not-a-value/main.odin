package main

// Lesson 12b "not a proc value": a procedure GROUP has no single type of its own
// (each member has its own signature), so the compiler cannot infer a type for a
// bare `f := area`. A group is a compile-time dispatch alias, not a first-class
// procedure value you can store untyped in a variable (that's lesson 13).
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
	f := area // no target type -> compiler has no single signature to infer
	_ = f
}
