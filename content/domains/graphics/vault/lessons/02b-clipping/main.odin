package main

import "core:fmt"
import "core:os"

WIDTH  :: 800
HEIGHT :: 600

// Cohen-Sutherland outcode bits. The order matters; if you swap them,
// the trivial-accept and trivial-reject tests still work but lines clip
// against the wrong edges and you get silent visual bugs.
INSIDE :: u8(0)
LEFT   :: u8(1 << 0)
RIGHT  :: u8(1 << 1)
BOTTOM :: u8(1 << 2)
TOP    :: u8(1 << 3)

WHITE :: u32(0xFF_FF_FF_FF)
GRAY  :: u32(0x80_80_80_FF)
RED   :: u32(0xFF_00_00_FF)
GREEN :: u32(0x00_FF_00_FF)
DARK  :: u32(0x10_10_18_FF)

set_pixel :: proc(pixels: []u32, w, h, x, y: int, color: u32) {
	if x < 0 || y < 0 || x >= w || y >= h { return }
	pixels[y * w + x] = color
}

clear_to :: proc(pixels: []u32, color: u32) {
	for i in 0 ..< len(pixels) { pixels[i] = color }
}

// Bresenham generalized to all 8 octants. Assumed working from lesson 02.
draw_line :: proc(pixels: []u32, w, h, x0, y0, x1, y1: int, color: u32) {
	dx :=  abs(x1 - x0)
	dy := -abs(y1 - y0)
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

// TODO 1: compute the 4-bit outcode for point (x, y) against rect
// [xmin, ymin, xmax, ymax]. Return INSIDE (0) if the point is inside.
//   - if x < xmin: set LEFT
//   - if x > xmax: set RIGHT
//   - if y < ymin: set BOTTOM
//   - if y > ymax: set TOP
// Bits OR together if multiple apply (e.g. top-left corner is LEFT|TOP).
compute_outcode :: proc(x, y, xmin, ymin, xmax, ymax: int) -> u8 {
	return INSIDE // TODO
}

// TODO 2: Cohen-Sutherland line clipping.
//
// Algorithm:
//   1. compute outcodes for both endpoints
//   2. loop:
//      a. if both outcodes == 0: trivial accept, return current endpoints, visible=true
//      b. if (out0 & out1) != 0: trivial reject, return anything, visible=false
//      c. else: pick the endpoint that is outside (nonzero outcode).
//         find which clip edge to intersect (one of the bits set in its outcode).
//         compute the intersection (parametric line vs that edge):
//           if TOP:    x = x0 + (x1 - x0) * (ymax - y0) / (y1 - y0); y = ymax
//           if BOTTOM: x = x0 + (x1 - x0) * (ymin - y0) / (y1 - y0); y = ymin
//           if RIGHT:  y = y0 + (y1 - y0) * (xmax - x0) / (x1 - x0); x = xmax
//           if LEFT:   y = y0 + (y1 - y0) * (xmin - x0) / (x1 - x0); x = xmin
//         replace the outside endpoint with (x, y) and re-compute its outcode.
//   3. converges in at most 4 iterations.
clip_line :: proc(x0, y0, x1, y1, xmin, ymin, xmax, ymax: int) -> (cx0, cy0, cx1, cy1: int, visible: bool) {
	// TODO
	return x0, y0, x1, y1, true
}

draw_line_clipped :: proc(pixels: []u32, w, h, x0, y0, x1, y1, xmin, ymin, xmax, ymax: int, color: u32) {
	cx0, cy0, cx1, cy1, vis := clip_line(x0, y0, x1, y1, xmin, ymin, xmax, ymax)
	if !vis { return }
	draw_line(pixels, w, h, cx0, cy0, cx1, cy1, color)
}

draw_rect_outline :: proc(pixels: []u32, w, h, xmin, ymin, xmax, ymax: int, color: u32) {
	draw_line(pixels, w, h, xmin, ymin, xmax, ymin, color)
	draw_line(pixels, w, h, xmax, ymin, xmax, ymax, color)
	draw_line(pixels, w, h, xmax, ymax, xmin, ymax, color)
	draw_line(pixels, w, h, xmin, ymax, xmin, ymin, color)
}

main :: proc() {
	pixels := make([]u32, WIDTH * HEIGHT)
	defer delete(pixels)
	clear_to(pixels, DARK)

	// Clip rectangle: inner half of the screen.
	xmin, ymin := 200, 150
	xmax, ymax := 600, 450
	draw_rect_outline(pixels, WIDTH, HEIGHT, xmin, ymin, xmax, ymax, GRAY)

	// Lines that cross the rectangle. Should render only inside it.
	draw_line_clipped(pixels, WIDTH, HEIGHT,   0, 100, WIDTH-1, 500, xmin, ymin, xmax, ymax, WHITE)
	draw_line_clipped(pixels, WIDTH, HEIGHT,  50, 550, 750,      50, xmin, ymin, xmax, ymax, GREEN)
	draw_line_clipped(pixels, WIDTH, HEIGHT, 400,   0, 400, HEIGHT-1, xmin, ymin, xmax, ymax, RED)

	// Fully outside: render nothing.
	draw_line_clipped(pixels, WIDTH, HEIGHT,   0,   0, 100,  50, xmin, ymin, xmax, ymax, WHITE)

	// Fully inside: render fully.
	draw_line_clipped(pixels, WIDTH, HEIGHT, 250, 200, 550, 400, xmin, ymin, xmax, ymax, WHITE)

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
