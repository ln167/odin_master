package main

import "core:fmt"
import "core:os"

WIDTH  :: 800
HEIGHT :: 600

// Pixel format (same as lesson 00): 0xRRGGBBAA in u32.
WHITE :: u32(0xFF_FF_FF_FF)
BLACK :: u32(0x00_00_00_FF)
RED   :: u32(0xFF_00_00_FF)
GREEN :: u32(0x00_FF_00_FF)
BLUE  :: u32(0x00_00_FF_FF)
DARK  :: u32(0x10_10_18_FF)

clear_to :: proc(pixels: []u32, color: u32) {
	for i in 0 ..< len(pixels) {
		pixels[i] = color
	}
}

set_pixel :: proc(pixels: []u32, w, h, x, y: int, color: u32) {
	if x < 0 || y < 0 || x >= w || y >= h { return }
	pixels[y * w + x] = color
}

// TODO: implement Bresenham for the FIRST OCTANT only:
//   x0 < x1 and 0 <= (y1 - y0) <= (x1 - x0)
// The skeleton plots nothing. Type the algorithm from the README.
//
// Reference pseudo-code (your inner loop):
//   dx = x1 - x0
//   dy = y1 - y0
//   err = 2*dy - dx
//   y = y0
//   for x in x0 ..= x1:
//       set_pixel(pixels, w, h, x, y, color)
//       if err > 0: y += 1; err -= 2*dx
//       err += 2*dy
//
// After it works for the first octant, the README's "Now break it"
// section walks you through generalizing to all 8 octants.
draw_line :: proc(pixels: []u32, w, h, x0, y0, x1, y1: int, color: u32) {
	// TODO
}

main :: proc() {
	pixels := make([]u32, WIDTH * HEIGHT)
	defer delete(pixels)

	clear_to(pixels, DARK)

	// First-octant tests. These should all render solid after you finish TODO.
	draw_line(pixels, WIDTH, HEIGHT,  50,  50, 750, 450, WHITE)  // ~30 deg
	draw_line(pixels, WIDTH, HEIGHT, 100, 300, 700, 320, GREEN)  // shallow
	draw_line(pixels, WIDTH, HEIGHT, 100, 100, 300, 300, RED)    // 45 deg

	// Outside-first-octant tests. These will be wrong until you generalize
	// (see README "Now break it"). Leave them in to make the failure visible.
	draw_line(pixels, WIDTH, HEIGHT, 400, 100, 400, 500, BLUE)   // vertical
	draw_line(pixels, WIDTH, HEIGHT, 700, 100, 100, 100, WHITE)  // right-to-left

	dump_ppm("out.ppm", pixels, WIDTH, HEIGHT)
	fmt.println("wrote out.ppm")
}

// Same dumper as lesson 00. Assumes 0xRRGGBBAA in each u32; A is dropped.
dump_ppm :: proc(path: string, pixels: []u32, w, h: int) {
	header := fmt.aprintf("P6\n%d %d\n255\n", w, h)
	defer delete(header)

	total := len(header) + len(pixels) * 3
	buf := make([]u8, total)
	defer delete(buf)

	for i in 0 ..< len(header) {
		buf[i] = u8(header[i])
	}

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
