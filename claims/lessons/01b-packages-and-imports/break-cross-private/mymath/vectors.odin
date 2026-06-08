package mymath

import "core:math"

Vec2 :: [2]f32

vec_length :: proc(v: Vec2) -> f32 {
	return math.sqrt(v.x * v.x + v.y * v.y)
}

circle_circumference :: proc(radius: f32) -> f32 {
	return 2.0 * PI * radius
}

// Lesson 01b "break it" #3: a package-private proc. @(private) hides it from
// other packages, so a call from package main (below) must fail to compile.
@(private)
secret_seed :: proc() -> int {
	return 42
}
