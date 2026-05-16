package main

import "core:fmt"
import "core:math"
import "core:math/linalg"

ortho_proj :: proc(left, right, bottom, top, near, far: f32) -> matrix[4, 4]f32 {
	return matrix[4, 4]f32{
		2/(right-left), 0,              0,              -(right+left)/(right-left),
		0,              2/(top-bottom), 0,              -(top+bottom)/(top-bottom),
		0,              0,              -2/(far-near),  -(far+near)/(far-near),
		0,              0,              0,              1,
	}
}

perspective_proj :: proc(fov_y_rad, aspect, near, far: f32) -> matrix[4, 4]f32 {
	f := 1.0 / math.tan(fov_y_rad * 0.5)
	return matrix[4, 4]f32{
		f/aspect, 0,  0,                              0,
		0,        f,  0,                              0,
		0,        0,  (far + near) / (near - far),   (2 * far * near) / (near - far),
		0,        0, -1,                              0,
	}
}

project_and_viewport :: proc(v: [3]f32, mvp: matrix[4, 4]f32, w, h: int) -> [3]f32 {
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
	corner_near :: [3]f32{-1, -1, -1}
	corner_far  :: [3]f32{ 1,  1,  1}
	origin      :: [3]f32{ 0,  0,  0}

	translate_back := linalg.matrix4_translate_f32({0, 0, -4})

	ortho := ortho_proj(-2, 2, -1.5, 1.5, 0.1, 100)
	persp := perspective_proj(math.PI / 3, f32(w) / f32(h), 0.1, 100)

	mvp_ortho := ortho * translate_back
	mvp_persp := persp * translate_back

	o_near := project_and_viewport(corner_near, mvp_ortho, w, h)
	o_far  := project_and_viewport(corner_far,  mvp_ortho, w, h)
	o_orig := project_and_viewport(origin,      mvp_ortho, w, h)

	p_near := project_and_viewport(corner_near, mvp_persp, w, h)
	p_far  := project_and_viewport(corner_far,  mvp_persp, w, h)
	p_orig := project_and_viewport(origin,      mvp_persp, w, h)

	// Ortho preserves parallel-edge spacing; corners project to identical screen-pixel
	// distance from origin regardless of which corner.
	fmt.printf("ortho_near    = (%.1f, %.1f, %.3f)\n", o_near.x, o_near.y, o_near.z)
	fmt.printf("ortho_far     = (%.1f, %.1f, %.3f)\n", o_far.x,  o_far.y,  o_far.z)
	fmt.printf("ortho_origin  = (%.1f, %.1f, %.3f)\n", o_orig.x, o_orig.y, o_orig.z)
	// Perspective: far corner appears smaller (closer to center) than near corner.
	fmt.printf("persp_near    = (%.1f, %.1f, %.3f)\n", p_near.x, p_near.y, p_near.z)
	fmt.printf("persp_far     = (%.1f, %.1f, %.3f)\n", p_far.x,  p_far.y,  p_far.z)
	fmt.printf("persp_origin  = (%.1f, %.1f, %.3f)\n", p_orig.x, p_orig.y, p_orig.z)
}
