package main

import "core:fmt"
import "core:os"

WIDTH  :: 800
HEIGHT :: 600

WHITE :: u32(0xFF_FF_FF_FF)
RED   :: u32(0xFF_00_00_FF)
GREEN :: u32(0x00_FF_00_FF)
BLUE  :: u32(0x00_00_FF_FF)
DARK  :: u32(0x10_10_18_FF)

clear_to :: proc(pixels: []u32, color: u32) {
	for i in 0 ..< len(pixels) { pixels[i] = color }
}

set_pixel :: proc(pixels: []u32, w, h, x, y: int, color: u32) {
	if x < 0 || y < 0 || x >= w || y >= h { return }
	pixels[y * w + x] = color
}

// TODO 1: signed parallelogram area of (a, b, p), the 2D edge function.
//   edge(a, b, p) = (b.x - a.x) * (p.y - a.y) - (b.y - a.y) * (p.x - a.x)
// Sign tells which side of directed edge a -> b the point p is on.
// Magnitude is twice the triangle area (a, b, p).
edge_func :: proc(a, b, p: [2]int) -> int {
	return 0 // TODO
}

// TODO 2: inclusive AABB of three vertices.
triangle_aabb :: proc(p0, p1, p2: [2]int) -> (xmin, ymin, xmax, ymax: int) {
	return 0, 0, 0, 0 // TODO
}

// TODO 3: rasterize a 2D triangle by edge functions.
//   1. compute AABB via triangle_aabb.
//   2. clamp AABB to [0, w-1] x [0, h-1].
//   3. for each pixel in the clamped AABB, compute three edge values
//      e0 = edge_func(p0, p1, p)
//      e1 = edge_func(p1, p2, p)
//      e2 = edge_func(p2, p0, p)
//      if all three are >= 0 (CCW), set the pixel.
// Convention: CCW windings render. CW windings render nothing
// (will be useful for back-face culling later).
draw_triangle :: proc(pixels: []u32, w, h: int, p0, p1, p2: [2]int, color: u32) {
	// TODO
}

main :: proc() {
	pixels := make([]u32, WIDTH * HEIGHT)
	defer delete(pixels)
	clear_to(pixels, DARK)

	// CCW triangle: should render.
	draw_triangle(pixels, WIDTH, HEIGHT,
		{100, 100}, {300, 100}, {200, 300}, WHITE)

	// CW triangle (same vertices, swapped p1 and p2): should render NOTHING.
	draw_triangle(pixels, WIDTH, HEIGHT,
		{500, 100}, {600, 300}, {700, 100}, RED)

	// Thin sliver (CCW), to expose top-left-rule cracks if you tighten
	// the inside test from >= 0 to > 0.
	draw_triangle(pixels, WIDTH, HEIGHT,
		{100, 400}, {700, 405}, {400, 410}, GREEN)

	// Triangle whose AABB extends off-screen on the right.
	draw_triangle(pixels, WIDTH, HEIGHT,
		{700, 450}, {900, 500}, {750, 550}, BLUE)

	dump_ppm("out.ppm", pixels, WIDTH, HEIGHT)
	fmt.println("wrote out.ppm")
}

dump_ppm :: proc(path: string, pixels: []u32, w, h: int) {
	header := fmt.aprintf("P6\n%d %d\n255\n", w, h)
	defer delete(header)
	total := len(header) + len(pixels) * 3
	buf := make([]u8, total)
	defer delete(buf)
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
