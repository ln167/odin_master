package main

import "core:fmt"
import "core:math"
import "core:math/linalg"
import "core:os"

WIDTH  :: 800
HEIGHT :: 600

WHITE :: u32(0xFF_FF_FF_FF)
DARK  :: u32(0x10_10_18_FF)

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

perspective_proj :: proc(fov_y_rad, aspect, near, far: f32) -> matrix[4, 4]f32 {
	f := 1.0 / math.tan(fov_y_rad * 0.5)
	return matrix[4, 4]f32{
		f / aspect, 0,  0,                              0,
		0,          f,  0,                              0,
		0,          0,  (far + near) / (near - far),    (2 * far * near) / (near - far),
		0,          0, -1,                              0,
	}
}

// TODO 1: classic look-at view matrix.
//   1. forward = normalize(target - eye)        // camera looks down -z, so this is -z basis flipped
//   2. right   = normalize(cross(forward, up))
//   3. up'     = cross(right, forward)
//   4. assemble rotation rows from (right, up', -forward); translate by -dot of each basis with eye.
look_at :: proc(eye, target, up: [3]f32) -> matrix[4, 4]f32 {
	return linalg.MATRIX4F32_IDENTITY // TODO
}

// TODO 2: FPS-style view from position + yaw + pitch (radians).
//   forward.x = cos(pitch) * sin(yaw)
//   forward.y = sin(pitch)
//   forward.z = cos(pitch) * cos(yaw)  // negate if your -z is "into scene"
// then build right and up from cross products, assemble like look_at.
fps_camera_view :: proc(position: [3]f32, yaw, pitch: f32) -> matrix[4, 4]f32 {
	return linalg.MATRIX4F32_IDENTITY // TODO
}

project_to_screen :: proc(v: [3]f32, mvp: matrix[4, 4]f32, w, h: int) -> (sx, sy: int, ok: bool) {
	p := mvp * [4]f32{v.x, v.y, v.z, 1}
	if p.w <= 0 { return 0, 0, false }
	ndc := [3]f32{p.x / p.w, p.y / p.w, p.z / p.w}
	sx = int((ndc.x * 0.5 + 0.5) * f32(w))
	sy = int((1.0 - (ndc.y * 0.5 + 0.5)) * f32(h))
	return sx, sy, true
}

draw_cube :: proc(pixels: []u32, w, h: int, mvp: matrix[4, 4]f32, color: u32) {
	v := [8][3]f32{
		{-1, -1, -1}, { 1, -1, -1}, { 1,  1, -1}, {-1,  1, -1},
		{-1, -1,  1}, { 1, -1,  1}, { 1,  1,  1}, {-1,  1,  1},
	}
	edges := [12][2]int{
		{0, 1}, {1, 2}, {2, 3}, {3, 0},
		{4, 5}, {5, 6}, {6, 7}, {7, 4},
		{0, 4}, {1, 5}, {2, 6}, {3, 7},
	}
	for e in edges {
		ax, ay, ok_a := project_to_screen(v[e[0]], mvp, w, h)
		bx, by, ok_b := project_to_screen(v[e[1]], mvp, w, h)
		if !ok_a || !ok_b { continue }
		draw_line(pixels, w, h, ax, ay, bx, by, color)
	}
}

main :: proc() {
	pixels := make([]u32, WIDTH * HEIGHT); defer delete(pixels)
	proj := perspective_proj(math.PI / 3, f32(WIDTH) / f32(HEIGHT), 0.1, 100)

	// Orbit camera around the origin, dumping 4 frames.
	for i in 0 ..< 4 {
		angle := f32(i) * math.PI * 0.5
		eye := [3]f32{math.cos(angle) * 5, 2, math.sin(angle) * 5}
		view := look_at(eye, {0, 0, 0}, {0, 1, 0})
		mvp := proj * view

		clear_to(pixels, DARK)
		draw_cube(pixels, WIDTH, HEIGHT, mvp, WHITE)

		path := fmt.aprintf("view_%d.ppm", i); defer delete(path)
		dump_ppm(path, pixels, WIDTH, HEIGHT)
	}
	fmt.println("wrote view_0.ppm through view_3.ppm")
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
