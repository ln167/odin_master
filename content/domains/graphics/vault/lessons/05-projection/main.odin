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

clear_to :: proc(pixels: []u32, color: u32) {
	for i in 0 ..< len(pixels) { pixels[i] = color }
}

set_pixel :: proc(pixels: []u32, w, h, x, y: int, color: u32) {
	if x < 0 || y < 0 || x >= w || y >= h { return }
	pixels[y * w + x] = color
}

// Bresenham, all octants. From lesson 02.
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

// TODO 1: orthographic projection matrix (column-major literal).
//   Maps [left, right] x [bottom, top] x [near, far] to NDC [-1, 1]^3.
ortho_proj :: proc(left, right, bottom, top, near, far: f32) -> matrix[4, 4]f32 {
	return linalg.MATRIX4F32_IDENTITY // TODO
}

// TODO 2: perspective projection matrix.
//   fov_y is in radians; aspect = width / height.
//   Column-major literal; the -1 in the w-row of the third column is what
//   makes perspective divide do anything.
perspective_proj :: proc(fov_y_rad, aspect, near, far: f32) -> matrix[4, 4]f32 {
	return linalg.MATRIX4F32_IDENTITY // TODO
}

// TODO 3: project a 3D point through an MVP matrix, do the perspective
// divide, and viewport-remap to screen pixels. Return (x, y, z) where
// z is in NDC [-1, 1] (for the z-buffer).
project_and_viewport :: proc(v: [3]f32, mvp: matrix[4, 4]f32, w, h: int) -> [3]f32 {
	return {0, 0, 0} // TODO
}

draw_wireframe_cube :: proc(pixels: []u32, w, h: int, mvp: matrix[4, 4]f32, color: u32) {
	// 8 cube corners at [+/-1, +/-1, +/-1]
	v := [8][3]f32{
		{-1, -1, -1}, { 1, -1, -1}, { 1,  1, -1}, {-1,  1, -1},
		{-1, -1,  1}, { 1, -1,  1}, { 1,  1,  1}, {-1,  1,  1},
	}
	// 12 edges
	edges := [12][2]int{
		{0, 1}, {1, 2}, {2, 3}, {3, 0},  // back face
		{4, 5}, {5, 6}, {6, 7}, {7, 4},  // front face
		{0, 4}, {1, 5}, {2, 6}, {3, 7},  // connectors
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
	pixels := make([]u32, WIDTH * HEIGHT); defer delete(pixels)
	clear_to(pixels, DARK)

	// Translate cube backward into the scene so perspective has room.
	translate_back := linalg.matrix4_translate_f32({0, 0, -4})

	// Left half: orthographic. Right half: perspective. We just shift the
	// model in X so the two cubes render side by side.
	shift_left  := linalg.matrix4_translate_f32({-2, 0, 0})
	shift_right := linalg.matrix4_translate_f32({ 2, 0, 0})

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
