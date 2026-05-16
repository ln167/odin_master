package main

import "core:fmt"
import "core:math"

WIDTH  :: 800
HEIGHT :: 600

RED   :: u32(0xFF_00_00_FF)
GREEN :: u32(0x00_FF_00_FF)
DARK  :: u32(0x10_10_18_FF)

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

draw_triangle_z :: proc(pixels: []u32, z: []f32, w, h: int,
                        p0, p1, p2: [2]int, z0, z1, z2: f32, color: u32) {
	xmin, ymin, xmax, ymax := triangle_aabb(p0, p1, p2)
	if xmin < 0 { xmin = 0 }
	if ymin < 0 { ymin = 0 }
	if xmax >= w { xmax = w - 1 }
	if ymax >= h { ymax = h - 1 }
	tot := edge_func(p0, p1, p2)
	if tot == 0 { return }
	for y in ymin ..= ymax {
		for x in xmin ..= xmax {
			p := [2]int{x, y}
			e0 := edge_func(p1, p2, p)
			e1 := edge_func(p2, p0, p)
			e2 := edge_func(p0, p1, p)
			if e0 >= 0 && e1 >= 0 && e2 >= 0 {
				w0 := f32(e0) / f32(tot)
				w1 := f32(e1) / f32(tot)
				w2 := f32(e2) / f32(tot)
				zp := w0*z0 + w1*z1 + w2*z2
				idx := y * w + x
				if zp < z[idx] {
					z[idx]      = zp
					pixels[idx] = color
				}
			}
		}
	}
}

main :: proc() {
	pixels := make([]u32, WIDTH * HEIGHT); defer delete(pixels)
	z      := make([]f32, WIDTH * HEIGHT); defer delete(z)
	for i in 0 ..< len(pixels) { pixels[i] = DARK }
	for i in 0 ..< len(z)      { z[i] = math.F32_MAX }

	// Two CCW triangles, same screen footprint, different depths.
	draw_triangle_z(pixels, z, WIDTH, HEIGHT,
		{100, 100}, {600, 100}, {350, 500},
		 10.0,       90.0,       50.0,    RED)
	draw_triangle_z(pixels, z, WIDTH, HEIGHT,
		{100, 500}, {350, 100}, {600, 500},
		 90.0,       50.0,       10.0,    GREEN)

	// Red-only zone (top-left, inside red, outside green).
	fmt.printf("red_only(200,200)        = 0x%08X\n", pixels[200 * WIDTH + 200])
	// Green-only zone (bottom-right, outside red, inside green).
	fmt.printf("green_only(450,400)      = 0x%08X\n", pixels[400 * WIDTH + 450])
	// Mid intersection (both triangles cover; depths tie at z=50; draw order wins -> red).
	fmt.printf("middle_tie(350,300)      = 0x%08X\n", pixels[300 * WIDTH + 350])
	// Background.
	fmt.printf("background(0,0)          = 0x%08X\n", pixels[0])
}
