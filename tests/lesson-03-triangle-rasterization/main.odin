package main

import "core:fmt"

WIDTH  :: 800
HEIGHT :: 600

WHITE :: u32(0xFF_FF_FF_FF)
RED   :: u32(0xFF_00_00_FF)
GREEN :: u32(0x00_FF_00_FF)
BLUE  :: u32(0x00_00_FF_FF)
DARK  :: u32(0x10_10_18_FF)

set_pixel :: proc(pixels: []u32, w, h, x, y: int, color: u32) {
	if x < 0 || y < 0 || x >= w || y >= h { return }
	pixels[y * w + x] = color
}

edge_func :: proc(a, b, p: [2]int) -> int {
	return (b.x - a.x) * (p.y - a.y) - (b.y - a.y) * (p.x - a.x)
}

triangle_aabb :: proc(p0, p1, p2: [2]int) -> (xmin, ymin, xmax, ymax: int) {
	xmin = min(p0.x, min(p1.x, p2.x))
	ymin = min(p0.y, min(p1.y, p2.y))
	xmax = max(p0.x, max(p1.x, p2.x))
	ymax = max(p0.y, max(p1.y, p2.y))
	return
}

draw_triangle :: proc(pixels: []u32, w, h: int, p0, p1, p2: [2]int, color: u32) {
	xmin, ymin, xmax, ymax := triangle_aabb(p0, p1, p2)
	if xmin < 0 { xmin = 0 }
	if ymin < 0 { ymin = 0 }
	if xmax >= w { xmax = w - 1 }
	if ymax >= h { ymax = h - 1 }
	for y in ymin ..= ymax {
		for x in xmin ..= xmax {
			p := [2]int{x, y}
			e0 := edge_func(p0, p1, p)
			e1 := edge_func(p1, p2, p)
			e2 := edge_func(p2, p0, p)
			if e0 >= 0 && e1 >= 0 && e2 >= 0 {
				pixels[y * w + x] = color
			}
		}
	}
}

main :: proc() {
	pixels := make([]u32, WIDTH * HEIGHT); defer delete(pixels)
	for i in 0 ..< len(pixels) { pixels[i] = DARK }

	// CCW: renders white.
	draw_triangle(pixels, WIDTH, HEIGHT, {100, 100}, {300, 100}, {200, 300}, WHITE)
	// CW (same vertices swapped): renders nothing.
	draw_triangle(pixels, WIDTH, HEIGHT, {500, 100}, {600, 300}, {700, 100}, RED)
	// Sliver CCW.
	draw_triangle(pixels, WIDTH, HEIGHT, {100, 400}, {700, 405}, {400, 410}, GREEN)
	// Off-screen-right triangle.
	draw_triangle(pixels, WIDTH, HEIGHT, {700, 450}, {900, 500}, {750, 550}, BLUE)

	// CCW triangle should fill interior.
	fmt.printf("ccw_interior(200,200)   = 0x%08X\n", pixels[200 * WIDTH + 200])
	fmt.printf("ccw_top_edge(200,100)   = 0x%08X\n", pixels[100 * WIDTH + 200])
	// Outside the CCW triangle (above).
	fmt.printf("outside_above(200,90)   = 0x%08X\n", pixels[ 90 * WIDTH + 200])
	// CW triangle should NOT fill. Pick a point inside the would-be triangle.
	fmt.printf("cw_interior(600,150)    = 0x%08X\n", pixels[150 * WIDTH + 600])
	// Sliver interior.
	fmt.printf("sliver(400,406)         = 0x%08X\n", pixels[406 * WIDTH + 400])
	// Off-screen triangle: pixel just inside left edge.
	fmt.printf("offscreen(720,500)      = 0x%08X\n", pixels[500 * WIDTH + 720])
	// Background.
	fmt.printf("background(0,0)         = 0x%08X\n", pixels[0])
}
