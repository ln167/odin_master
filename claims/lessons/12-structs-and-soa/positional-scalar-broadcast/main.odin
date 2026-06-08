package main

// Lesson 12 nuance: Particle{1, 2, 3} supplies all 3 fields positionally and each
// scalar broadcasts to its field type -- so pos and vel ([3]f32) become [1,1,1]
// and [2,2,2]. It compiles and runs; this output claim pins that real behavior.
import "core:fmt"

Particle :: struct {
	pos:  [3]f32,
	vel:  [3]f32,
	mass: f32,
}

main :: proc() {
	a := Particle{1, 2, 3}
	fmt.println(a)
}
