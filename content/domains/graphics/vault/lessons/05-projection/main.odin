package main

import "core:fmt"
import "core:math"
import "core:math/linalg"
import "core:os"

WIDTH  :: 800
HEIGHT :: 600

WHITE :: u32(0xFF_FF_FF_FF)
DARK  :: u32(0x10_10_18_FF)
RED   :: u32(0xFF_00_00_FF)

// --- Plumbing from earlier lessons. Don't rewrite these. -------------------

clear_to :: proc(pixels: []u32, color: u32) {
	for i in 0 ..< len(pixels) { pixels[i] = color }
}

set_pixel :: proc(pixels: []u32, w, h, x, y: int, color: u32) {
	if x < 0 || y < 0 || x >= w || y >= h { return }
	pixels[y * w + x] = color
}

draw_line :: proc(pixels: []u32, w, h, x0, y0, x1, y1: int, color: u32) {
	dx :=  abs(x1 - x0); dy := -abs(y1 - y0)
	sx := -1; if x0 < x1 { sx =  1 }
	sy := -1; if y0 < y1 { sy =  1 }
	err := dx + dy
	x, y := x0, y0
	for {
		set_pixel(pixels, w, h, x, y, color)
		if x == x1 && y == y1 { break }
		e2 := 2 * err
		if e2 >= dy { err += dy; x += sx }
		if e2 <= dx { err += dx; y += sy }
	}
}

// --- Your work starts here. -------------------------------------------------
//
// You are writing three procedures. Read the README first; the math is
// there. These comment blocks tell you WHAT to write, not HOW. Type the
// bodies yourself. If you find yourself wanting to copy from somewhere,
// stop and re-derive the entry you're stuck on.


// ortho_proj
//
// Build a 4x4 orthographic projection matrix that maps the axis-aligned
// box [left, right] x [bottom, top] x [near, far] onto the NDC cube
// [-1, 1]^3.
//
// Approach:
//   1. Each axis is an independent affine remap: scale by 2/(hi - lo),
//      then translate by -(hi + lo)/(hi - lo).
//   2. The z axis flips sign in this convention (we look down -z), so
//      its scale uses (near - far) in the denominator instead of
//      (far - near). If you get a mirrored cube, this is why.
//   3. Return the matrix as a `matrix[4, 4]f32` literal. Remember: Odin
//      writes literals row-by-row but stores column-major. The entries
//      that look like the "right column" in the math textbook (the
//      translation column) appear as the LAST argument of each row in
//      the literal.
//
// Sanity check before you trust it:
//   ortho_proj(-1, 1, -1, 1, 0, 1) * [4]f32{0, 0, -0.5, 1} ≈ (0, 0, 0, 1)
ortho_proj :: proc(left, right, bottom, top, near, far: f32) -> matrix[4, 4]f32 {
	// TODO: write me
	return linalg.MATRIX4F32_IDENTITY
}


// perspective_proj
//
// Build a 4x4 perspective projection matrix from a vertical field-of-view
// (in radians), an aspect ratio (width / height), and near/far clip
// planes.
//
// Approach:
//   1. Compute the focal-length-ish term f = 1 / tan(fov_y * 0.5).
//      Use `math.tan` from core:math.
//   2. Place f/aspect at (0,0), f at (1,1).
//   3. The z column has two entries derived from near and far. Don't
//      look them up; derive them by demanding that z = -near maps to
//      NDC z = -1 and z = -far maps to NDC z = +1 after the divide.
//      Two equations, two unknowns.
//   4. The single most important entry: row 3, column 2 is -1. That's
//      the entry that copies -z into w. Without it you have an
//      orthographic matrix in a perspective costume.
//
// Sanity check:
//   M := perspective_proj(math.PI / 2, 1, 1, 100)
//   r := M * [4]f32{0, 0, -1, 1}   ; r.w should be 1, r.z/r.w ≈ -1
perspective_proj :: proc(fov_y_rad, aspect, near, far: f32) -> matrix[4, 4]f32 {
	// TODO: write me
	return linalg.MATRIX4F32_IDENTITY
}


// project_and_viewport
//
// Take a 3D point in object/world space, push it through an MVP
// matrix, perform the perspective divide, and remap NDC to pixel
// coordinates. Return (x_pixel, y_pixel, z_ndc).
//
// Approach (three small blocks):
//   1. Promote v to homogeneous: clip := mvp * [4]f32{v.x, v.y, v.z, 1}.
//   2. Perspective divide: ndc.xyz := clip.xyz / clip.w. (Watch out for
//      clip.w == 0; for this lesson, ignore it. A real renderer clips
//      before dividing, which is lesson 02b.)
//   3. Viewport remap:
//        px := (ndc.x * 0.5 + 0.5) * f32(w)
//        py := (1 - (ndc.y * 0.5 + 0.5)) * f32(h)   // y flips: pixel y
//                                                   // grows downward
//      Return {px, py, ndc.z}.
//
// Note: Odin lets you do `clip.xyz` swizzle on a [4]f32. Try it.
project_and_viewport :: proc(v: [3]f32, mvp: matrix[4, 4]f32, w, h: int) -> [3]f32 {
	// TODO: write me
	return {0, 0, 0}
}


// --- Driver. You write the warmup; the cube drawing is set up for you. -----

draw_wireframe_cube :: proc(pixels: []u32, w, h: int, mvp: matrix[4, 4]f32, color: u32) {
	v := [8][3]f32{
		{-1, -1, -1}, { 1, -1, -1}, { 1,  1, -1}, {-1,  1, -1},
		{-1, -1,  1}, { 1, -1,  1}, { 1,  1,  1}, {-1,  1,  1},
	}
	edges := [12][2]int{
		{0, 1}, {1, 2}, {2, 3}, {3, 0},
		{4, 5}, {5, 6}, {6, 7}, {7, 4},
		{0, 4}, {1, 5}, {2, 6}, {3, 7},
	}
	s: [8][3]f32
	for i in 0 ..< 8 {
		s[i] = project_and_viewport(v[i], mvp, w, h)
	}
	for e in edges {
		a, b := s[e[0]], s[e[1]]
		draw_line(pixels, w, h, int(a.x), int(a.y), int(b.x), int(b.y), color)
	}
}

main :: proc() {
	// WARMUP (delete this block once you've done it):
	//   Declare a [4]f32 with the values (1, 2, 3, 1). Print the length
	//   of its xyz part. Two ways: by hand with sqrt, or with
	//   linalg.length on a [3]f32. Try both; notice they agree.

	pixels := make([]u32, WIDTH * HEIGHT); defer delete(pixels)
	clear_to(pixels, DARK)

	translate_back := linalg.matrix4_translate_f32({0, 0, -4})
	shift_left     := linalg.matrix4_translate_f32({-2, 0, 0})
	shift_right    := linalg.matrix4_translate_f32({ 2, 0, 0})

	ortho       := ortho_proj(-4, 4, -3, 3, 0.1, 100)
	perspective := perspective_proj(math.PI / 3, f32(WIDTH) / f32(HEIGHT), 0.1, 100)

	mvp_ortho := ortho * translate_back * shift_left
	mvp_persp := perspective * translate_back * shift_right

	draw_wireframe_cube(pixels, WIDTH, HEIGHT, mvp_ortho, WHITE)
	draw_wireframe_cube(pixels, WIDTH, HEIGHT, mvp_persp, RED)

	dump_ppm("out.ppm", pixels, WIDTH, HEIGHT)
	fmt.println("wrote out.ppm")
}

dump_ppm :: proc(path: string, pixels: []u32, w, h: int) {
	header := fmt.aprintf("P6\n%d %d\n255\n", w, h); defer delete(header)
	total := len(header) + len(pixels) * 3
	buf := make([]u8, total); defer delete(buf)
	for i in 0 ..< len(header) { buf[i] = u8(header[i]) }
	o := len(header)
	for i in 0 ..< len(pixels) {
		p := pixels[i]
		buf[o + i*3 + 0] = u8((p >> 24) & 0xFF)
		buf[o + i*3 + 1] = u8((p >> 16) & 0xFF)
		buf[o + i*3 + 2] = u8((p >>  8) & 0xFF)
	}
	if err := os.write_entire_file(path, buf); err != nil {
		fmt.eprintln("write failed:", path, err)
	}
}
