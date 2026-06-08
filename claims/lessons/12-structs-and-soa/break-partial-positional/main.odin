package main

// Lesson 12 "break it" #2: a positional struct literal must supply EVERY field.
// Particle has 3 fields; {1, 2} supplies only 2 -> rejected. (Note {1, 2, 3} does
// NOT fail -- it supplies all 3 and each scalar broadcasts to its field; see the
// positional-scalar-broadcast claim.)
import "core:fmt"

Particle :: struct {
	pos:  [3]f32,
	vel:  [3]f32,
	mass: f32,
}

main :: proc() {
	a := Particle{1, 2}
	fmt.println(a)
}
