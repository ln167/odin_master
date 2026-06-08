package main

// Lesson 12 "break it" #3: column access on a plain array. [N]Particle has no
// `pos` field -- only the Particle element does. Only #soa arrays expose columns.
import "core:fmt"

Particle :: struct {
	pos:  [3]f32,
	vel:  [3]f32,
	mass: f32,
}

N :: 4

main :: proc() {
	aos: [N]Particle
	fmt.println(aos.pos)
}
