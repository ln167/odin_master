package main

import "core:fmt"

dot3 :: proc(a, b: [3]f32) -> f32 {
	return a.x*b.x + a.y*b.y + a.z*b.z
}

cross3 :: proc(a, b: [3]f32) -> [3]f32 {
	return {
		a.y*b.z - a.z*b.y,
		a.z*b.x - a.x*b.z,
		a.x*b.y - a.y*b.x,
	}
}

transform_point :: proc(m: matrix[4, 4]f32, p: [3]f32) -> [3]f32 {
	v := [4]f32{p.x, p.y, p.z, 1}
	r := m * v
	return {r.x / r.w, r.y / r.w, r.z / r.w}
}

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
	assert(approx(dot3({1, 0, 0}, {0, 1, 0}), 0))
	assert(approx(dot3({1, 2, 3}, {4, 5, 6}), 32))
	assert(approx(dot3({2, 0, 0}, {3, 0, 0}), 6))

	assert(approx3(cross3({1, 0, 0}, {0, 1, 0}), {0, 0, 1}))
	assert(approx3(cross3({0, 1, 0}, {1, 0, 0}), {0, 0, -1}))
	assert(approx3(cross3({1, 0, 0}, {1, 0, 0}), {0, 0, 0}))

	t := translation({2, 3, 5})
	assert(approx3(transform_point(t, {1, 1, 1}), {3, 4, 6}))
	assert(approx3(transform_point(t, {0, 0, 0}), {2, 3, 5}))

	fmt.println("all ok")
}
