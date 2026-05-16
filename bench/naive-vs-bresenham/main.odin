// Compare a naive float-DDA line plotter with an integer Bresenham one.
// Both plot 10,000 random lines into a 1920x1080 framebuffer.
package main

import "core:fmt"
import "core:math/rand"
import "core:time"

W :: 1920
H :: 1080
N_LINES :: 10_000

set_pixel :: #force_inline proc(pixels: []u32, x, y: int, c: u32) {
	if x < 0 || y < 0 || x >= W || y >= H { return }
	pixels[y * W + x] = c
}

// Naive float DDA: step the dominant axis by 1, the other by a fractional slope.
draw_line_naive :: proc(pixels: []u32, x0, y0, x1, y1: int, c: u32) {
	dx := x1 - x0
	dy := y1 - y0
	steps := abs(dx) if abs(dx) >= abs(dy) else abs(dy)
	if steps == 0 { set_pixel(pixels, x0, y0, c); return }
	sx := f32(dx) / f32(steps)
	sy := f32(dy) / f32(steps)
	x := f32(x0)
	y := f32(y0)
	for _ in 0 ..= steps {
		set_pixel(pixels, int(x), int(y), c)
		x += sx
		y += sy
	}
}

// Integer Bresenham (generalized form, all 8 octants).
draw_line_bresenham :: proc(pixels: []u32, x0, y0, x1, y1: int, c: u32) {
	dx := abs(x1 - x0)
	dy := -abs(y1 - y0)
	sx := 1 if x0 < x1 else -1
	sy := 1 if y0 < y1 else -1
	err := dx + dy
	x := x0
	y := y0
	for {
		set_pixel(pixels, x, y, c)
		if x == x1 && y == y1 { break }
		e2 := 2 * err
		if e2 >= dy { err += dy; x += sx }
		if e2 <= dx { err += dx; y += sy }
	}
}

main :: proc() {
	pixels := make([]u32, W * H); defer delete(pixels)

	// Deterministic seed so two runs of the bench are comparable.
	rand.reset(0xC0FFEE)

	lines := make([][4]int, N_LINES); defer delete(lines)
	for i in 0 ..< N_LINES {
		lines[i] = {
			rand.int_max(W), rand.int_max(H),
			rand.int_max(W), rand.int_max(H),
		}
	}

	t0 := time.tick_now()
	for L in lines {
		draw_line_naive(pixels, L[0], L[1], L[2], L[3], 0xFFFFFFFF)
	}
	naive_ns := time.tick_diff(t0, time.tick_now())

	t1 := time.tick_now()
	for L in lines {
		draw_line_bresenham(pixels, L[0], L[1], L[2], L[3], 0xFFFFFFFF)
	}
	bres_ns := time.tick_diff(t1, time.tick_now())

	fmt.printf("naive     : %v ms\n", time.duration_milliseconds(naive_ns))
	fmt.printf("bresenham : %v ms\n", time.duration_milliseconds(bres_ns))
	fmt.printf("speedup   : %.2fx\n", f64(naive_ns) / f64(bres_ns))
}
