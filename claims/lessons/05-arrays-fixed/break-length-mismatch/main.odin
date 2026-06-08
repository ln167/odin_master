package main

// Lesson 05 "break it" #2: add arrays of different lengths. The length is part
// of the type, so [3]f32 + [4]f32 is a type mismatch -> compile error (unlike C,
// which would silently read past the shorter array).
import "core:fmt"

main :: proc() {
	p: [3]f32 = {1, 2, 3}
	q: [4]f32 = {10, 20, 30, 40}
	r := p + q
	fmt.println(r)
}
