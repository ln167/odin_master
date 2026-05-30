package mymath

import "core:math"

// A tiny vector type, just enough to demonstrate that this package
// exposes something useful.
Vec2 :: [2]f32

// Computes the Euclidean length of a 2D vector. Top-level proc with
// no @(private) attribute, so it's visible to any package that
// imports mymath.
//
// Notice: this proc uses PI from constants.odin in the same folder.
// There is NO import statement bringing PI into scope - the two
// files share scope automatically because they both declare
// `package mymath`. That's the multi-file-package payoff.
vec_length :: proc(v: Vec2) -> f32 {
	return math.sqrt(v.x * v.x + v.y * v.y)
}

// A second proc that uses the package-level constant directly. No
// import, no qualifier - PI is just a name in mymath's scope, and
// vectors.odin shares that scope with constants.odin.
circle_circumference :: proc(radius: f32) -> f32 {
	return 2.0 * PI * radius
}
