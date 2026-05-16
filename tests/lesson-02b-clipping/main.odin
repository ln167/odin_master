package main

import "core:fmt"

WIDTH  :: 800
HEIGHT :: 600

INSIDE :: u8(0)
LEFT   :: u8(1 << 0)
RIGHT  :: u8(1 << 1)
BOTTOM :: u8(1 << 2)
TOP    :: u8(1 << 3)

WHITE :: u32(0xFF_FF_FF_FF)
GRAY  :: u32(0x80_80_80_FF)
DARK  :: u32(0x10_10_18_FF)

set_pixel :: proc(pixels: []u32, w, h, x, y: int, color: u32) {
	if x < 0 || y < 0 || x >= w || y >= h { return }
	pixels[y * w + x] = color
}

draw_line :: proc(pixels: []u32, w, h, x0, y0, x1, y1: int, color: u32) {
	dx :=  abs(x1 - x0)
	dy := -abs(y1 - y0)
	sx := -1; if x0 < x1 { sx = 1 }
	sy := -1; if y0 < y1 { sy = 1 }
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

compute_outcode :: proc(x, y, xmin, ymin, xmax, ymax: int) -> u8 {
	code := INSIDE
	if x < xmin { code |= LEFT }
	else if x > xmax { code |= RIGHT }
	if y < ymin { code |= BOTTOM }
	else if y > ymax { code |= TOP }
	return code
}

clip_line :: proc(x0, y0, x1, y1, xmin, ymin, xmax, ymax: int) -> (cx0, cy0, cx1, cy1: int, visible: bool) {
	a0, a1 := x0, y0
	b0, b1 := x1, y1
	out0 := compute_outcode(a0, a1, xmin, ymin, xmax, ymax)
	out1 := compute_outcode(b0, b1, xmin, ymin, xmax, ymax)
	for {
		if (out0 | out1) == 0 { return a0, a1, b0, b1, true }
		if (out0 & out1) != 0 { return 0, 0, 0, 0, false }
		outside := out0; if out1 != 0 && out1 > out0 { outside = out1 }
		if out0 == 0 { outside = out1 }
		x, y: int
		if (outside & TOP) != 0 {
			x = a0 + (b0 - a0) * (ymax - a1) / (b1 - a1)
			y = ymax
		} else if (outside & BOTTOM) != 0 {
			x = a0 + (b0 - a0) * (ymin - a1) / (b1 - a1)
			y = ymin
		} else if (outside & RIGHT) != 0 {
			y = a1 + (b1 - a1) * (xmax - a0) / (b0 - a0)
			x = xmax
		} else if (outside & LEFT) != 0 {
			y = a1 + (b1 - a1) * (xmin - a0) / (b0 - a0)
			x = xmin
		}
		if outside == out0 {
			a0, a1 = x, y
			out0 = compute_outcode(a0, a1, xmin, ymin, xmax, ymax)
		} else {
			b0, b1 = x, y
			out1 = compute_outcode(b0, b1, xmin, ymin, xmax, ymax)
		}
	}
}

draw_clipped :: proc(pixels: []u32, w, h, x0, y0, x1, y1, xmin, ymin, xmax, ymax: int, color: u32) {
	cx0, cy0, cx1, cy1, vis := clip_line(x0, y0, x1, y1, xmin, ymin, xmax, ymax)
	if !vis { return }
	draw_line(pixels, w, h, cx0, cy0, cx1, cy1, color)
}

main :: proc() {
	pixels := make([]u32, WIDTH * HEIGHT); defer delete(pixels)
	for i in 0 ..< len(pixels) { pixels[i] = DARK }

	xmin, ymin := 200, 150
	xmax, ymax := 600, 450

	// Inside-outside crosser
	draw_clipped(pixels, WIDTH, HEIGHT, 0, 100, WIDTH-1, 500, xmin, ymin, xmax, ymax, WHITE)
	// Fully outside
	draw_clipped(pixels, WIDTH, HEIGHT, 0, 0, 100, 50, xmin, ymin, xmax, ymax, WHITE)
	// Fully inside
	draw_clipped(pixels, WIDTH, HEIGHT, 250, 200, 550, 400, xmin, ymin, xmax, ymax, WHITE)

	// Outside the clip box: should be background.
	fmt.printf("outside_left(100,200)  = 0x%08X\n", pixels[200 * WIDTH + 100])
	fmt.printf("outside_right(700,300) = 0x%08X\n", pixels[300 * WIDTH + 700])
	fmt.printf("outside_top(400,50)    = 0x%08X\n", pixels[ 50 * WIDTH + 400])
	fmt.printf("outside_bottom(400,550)= 0x%08X\n", pixels[550 * WIDTH + 400])
	// Inside the clip box, on the inside-line: should be WHITE.
	fmt.printf("inside_line(300,250)   = 0x%08X\n", pixels[250 * WIDTH + 300])
	// Fully-outside line shouldn't paint anywhere.
	fmt.printf("fully_outside(50,25)   = 0x%08X\n", pixels[ 25 * WIDTH +  50])
}
