package main

import "core:fmt"

// TODO 1: implement the dot product of two 3-vectors.
//   sum of componentwise products: a.x*b.x + a.y*b.y + a.z*b.z
dot3 :: proc(a, b: [3]f32) -> f32 {
	return 0 // TODO
}

// TODO 2: implement the right-handed cross product.
//   result.x = a.y * b.z - a.z * b.y
//   result.y = a.z * b.x - a.x * b.z
//   result.z = a.x * b.y - a.y * b.x
cross3 :: proc(a, b: [3]f32) -> [3]f32 {
	return {0, 0, 0} // TODO
}

// TODO 3: transform a 3-point as a homogeneous 4-point through a 4x4 matrix.
// Treat p as (p.x, p.y, p.z, 1). Multiply by m. Divide xyz by the resulting w
// (the w divide matters once you hit perspective projection in lesson 05; it
// is a no-op for affine transforms where w stays 1).
transform_point :: proc(m: matrix[4, 4]f32, p: [3]f32) -> [3]f32 {
	return {0, 0, 0} // TODO
}

// Translation matrix in column-major (Odin matrix literals look row-stacked
// but store column-major; m[row, col] indexing).
translation :: proc(t: [3]f32) -> matrix[4, 4]f32 {
	return matrix[4, 4]f32{
		1, 0, 0, t.x,
		0, 1, 0, t.y,
		0, 0, 1, t.z,
		0, 0, 0, 1,
	}
}

approx :: proc(a, b: f32, eps: f32 = 1e-5) -> bool {
	d := a - b
	if d < 0 { d = -d }
	return d < eps
}

approx3 :: proc(a, b: [3]f32, eps: f32 = 1e-5) -> bool {
	return approx(a.x, b.x, eps) && approx(a.y, b.y, eps) && approx(a.z, b.z, eps)
}

main :: proc() {
	// dot tests
	assert(approx(dot3({1, 0, 0}, {0, 1, 0}), 0),         "perpendicular dot must be 0")
	assert(approx(dot3({1, 2, 3}, {4, 5, 6}), 32),        "dot3([1,2,3],[4,5,6]) must be 32")
	assert(approx(dot3({2, 0, 0}, {3, 0, 0}), 6),         "parallel dot must equal magnitude product")

	// cross tests (right-handed)
	assert(approx3(cross3({1, 0, 0}, {0, 1, 0}), {0, 0, 1}), "x cross y must be +z (right-handed)")
	assert(approx3(cross3({0, 1, 0}, {1, 0, 0}), {0, 0, -1}),"y cross x must be -z")
	assert(approx3(cross3({1, 0, 0}, {1, 0, 0}), {0, 0, 0}), "parallel cross must be zero")

	// transform_point tests
	t := translation({2, 3, 5})
	assert(approx3(transform_point(t, {1, 1, 1}), {3, 4, 6}), "translation must add t componentwise")
	assert(approx3(transform_point(t, {0, 0, 0}), {2, 3, 5}), "translation of origin must equal t")

	fmt.println("all ok")
}
