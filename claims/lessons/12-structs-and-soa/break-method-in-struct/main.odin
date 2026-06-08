package main

// Lesson 12 "break it" #1: a struct body is a list of fields, not a class body.
// Declaring a procedure inside it (with ::) is rejected; write a free proc instead.
Particle :: struct {
	pos:    [3]f32,
	update :: proc() {},
}

main :: proc() {
	p: Particle
	_ = p
}
