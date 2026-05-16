package main

import "core:fmt"

WIDTH  :: 800
HEIGHT :: 600

WHITE :: u32(0xFF_FF_FF_FF)
GREEN :: u32(0x00_FF_00_FF)
RED   :: u32(0xFF_00_00_FF)
BLUE  :: u32(0x00_00_FF_FF)
DARK  :: u32(0x10_10_18_FF)

set_pixel :: proc(pixels: []u32, w, h, x, y: int, color: u32) {
	if x < 0 || y < 0 || x >= w || y >= h { return }
	pixels[y * w + x] = color
}

// All-octant Bresenham.
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

main :: proc() {
	pixels := make([]u32, WIDTH * HEIGHT); defer delete(pixels)
	for i in 0 ..< len(pixels) { pixels[i] = DARK }

	draw_line(pixels, WIDTH, HEIGHT,  50,  50, 750, 450, WHITE)
	draw_line(pixels, WIDTH, HEIGHT, 100, 300, 700, 320, GREEN)
	draw_line(pixels, WIDTH, HEIGHT, 100, 100, 300, 300, RED)
	draw_line(pixels, WIDTH, HEIGHT, 400, 100, 400, 500, BLUE)
	draw_line(pixels, WIDTH, HEIGHT, 700, 100, 100, 100, WHITE)

	// Sample endpoints of each line and verify they got plotted.
	fmt.printf("line1_start(50,50)    = 0x%08X\n", pixels[ 50 * WIDTH +  50])
	fmt.printf("line1_end(750,450)    = 0x%08X\n", pixels[450 * WIDTH + 750])
	fmt.printf("line2_start(100,300)  = 0x%08X\n", pixels[300 * WIDTH + 100])
	fmt.printf("line2_end(700,320)    = 0x%08X\n", pixels[320 * WIDTH + 700])
	fmt.printf("line3_diagonal(200,200)= 0x%08X\n", pixels[200 * WIDTH + 200])
	fmt.printf("line4_vert_top(400,100)= 0x%08X\n", pixels[100 * WIDTH + 400])
	fmt.printf("line4_vert_mid(400,300)= 0x%08X\n", pixels[300 * WIDTH + 400])
	fmt.printf("line4_vert_bot(400,500)= 0x%08X\n", pixels[500 * WIDTH + 400])
	fmt.printf("line5_left(100,100)   = 0x%08X\n", pixels[100 * WIDTH + 100])
	fmt.printf("line5_right(700,100)  = 0x%08X\n", pixels[100 * WIDTH + 700])
	fmt.printf("background(0,0)       = 0x%08X\n", pixels[0])
}
