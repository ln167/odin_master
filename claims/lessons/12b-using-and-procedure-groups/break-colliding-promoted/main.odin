package main

// Lesson 12b "break it" #1: two `using` structs that both promote a field named
// `x`. The promoted name is ambiguous -> the build is rejected.
Transform :: struct {
	x, y, z: f32,
}

Health :: struct {
	x:  int,
	hp: int,
}

Entity :: struct {
	using xform:  Transform,
	using health: Health,
}

main :: proc() {
	e: Entity
	_ = e.x
}
