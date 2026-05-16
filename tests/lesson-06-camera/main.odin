package main

import "core:fmt"
import "core:math"
import "core:math/linalg"

normalize3 :: proc(v: [3]f32) -> [3]f32 {
	l := math.sqrt(v.x*v.x + v.y*v.y + v.z*v.z)
	return {v.x/l, v.y/l, v.z/l}
}

cross3 :: proc(a, b: [3]f32) -> [3]f32 {
	return {a.y*b.z - a.z*b.y, a.z*b.x - a.x*b.z, a.x*b.y - a.y*b.x}
}

dot3 :: proc(a, b: [3]f32) -> f32 {
	return a.x*b.x + a.y*b.y + a.z*b.z
}

look_at :: proc(eye, target, up: [3]f32) -> matrix[4, 4]f32 {
	f := normalize3({target.x - eye.x, target.y - eye.y, target.z - eye.z})
	r := normalize3(cross3(f, up))
	u := cross3(r, f)
	return matrix[4, 4]f32{
		 r.x,  r.y,  r.z, -dot3(r, eye),
		 u.x,  u.y,  u.z, -dot3(u, eye),
		-f.x, -f.y, -f.z,  dot3(f, eye),
		   0,    0,    0,             1,
	}
}

perspective_proj :: proc(fov_y_rad, aspect, near, far: f32) -> matrix[4, 4]f32 {
	f := 1.0 / math.tan(fov_y_rad * 0.5)
	return matrix[4, 4]f32{
		f/aspect, 0, 0,                              0,
		0,        f, 0,                              0,
		0,        0, (far + near) / (near - far),   (2 * far * near) / (near - far),
		0,        0, -1,                             0,
	}
}

project :: proc(v: [3]f32, mvp: matrix[4, 4]f32, w, h: int) -> [3]f32 {
	p := mvp * [4]f32{v.x, v.y, v.z, 1}
	if p.w == 0 { return {-1, -1, -1} }
	ndc := [3]f32{p.x/p.w, p.y/p.w, p.z/p.w}
	return {
		(ndc.x * 0.5 + 0.5) * f32(w),
		(1.0 - (ndc.y * 0.5 + 0.5)) * f32(h),
		ndc.z,
	}
}

main :: proc() {
	w, h := 800, 600
	proj := perspective_proj(math.PI / 3, f32(w) / f32(h), 0.1, 100)

	// Orbit camera around origin at radius 5, height 2.
	for i in 0 ..< 4 {
		angle := f32(i) * math.PI * 0.5
		eye := [3]f32{math.cos(angle) * 5, 2, math.sin(angle) * 5}
		view := look_at(eye, {0, 0, 0}, {0, 1, 0})
		mvp := proj * view
		origin_screen := project({0, 0, 0}, mvp, w, h)
		// Project a point at (+1, 0, 0) world to see how it shifts as the camera orbits.
		px_screen := project({1, 0, 0}, mvp, w, h)
		fmt.printf("view_%d origin=(%.1f, %.1f) px=(%.1f, %.1f)\n",
			i, origin_screen.x, origin_screen.y, px_screen.x, px_screen.y)
	}
}
