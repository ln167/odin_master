package mymath

import "core:math"

// A tiny vector type, just enough to demonstrate that this package
// exposes something useful.
Vec2 :: [2]f32

// Computes the Euclidean length of a 2D vector.
vec_length :: proc(v: Vec2) -> f32 {
	return math.sqrt(v.x * v.x + v.y * v.y)
}

// A second proc that uses the package-level constant PI directly. No
// import, no qualifier - PI is just a name in mymath's scope, shared
// from constants.odin because both files declare `package mymath`.
circle_circumference :: proc(radius: f32) -> f32 {
	return 2.0 * PI * radius
}
