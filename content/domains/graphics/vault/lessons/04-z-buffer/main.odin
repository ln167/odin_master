package main

import "core:fmt"
import "core:math"
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

clear_z :: proc(z: []f32) {
	for i in 0 ..< len(z) { z[i] = math.F32_MAX }
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

// TODO: depth-aware triangle rasterizer.
//   1. compute AABB; clamp to [0, w-1] x [0, h-1].
//   2. compute total signed area: tot = edge_func(p0, p1, p2).
//      if tot == 0: degenerate, return.
//   3. for each pixel p in clamped AABB:
//      e0 = edge_func(p1, p2, p)   // weight of vertex 0
//      e1 = edge_func(p2, p0, p)   // weight of vertex 1
//      e2 = edge_func(p0, p1, p)   // weight of vertex 2
//      if all three >= 0 (CCW), the pixel is inside.
//      barycentric weights:
//        w0 = f32(e0) / f32(tot)
//        w1 = f32(e1) / f32(tot)
//        w2 = f32(e2) / f32(tot)
//      depth: z_pixel = w0*z0 + w1*z1 + w2*z2
//      if z_pixel < z[idx]:
//        z[idx]      = z_pixel
//        pixels[idx] = color
draw_triangle_z :: proc(pixels: []u32, z: []f32, w, h: int,
                        p0, p1, p2: [2]int, z0, z1, z2: f32, color: u32) {
	// TODO
}

main :: proc() {
	pixels := make([]u32, WIDTH * HEIGHT); defer delete(pixels)
	z      := make([]f32, WIDTH * HEIGHT); defer delete(z)

	clear_to(pixels, DARK)
	clear_z(z)

	// Two intersecting triangles. Near and far vary across the screen.
	// With z-buffering, the nearer per-pixel wins. Without, draw order wins.
	draw_triangle_z(pixels, z, WIDTH, HEIGHT,
		{100, 100}, {600, 100}, {350, 500},
		 10.0,        90.0,       50.0,    RED)

	draw_triangle_z(pixels, z, WIDTH, HEIGHT,
		{100, 500}, {350, 100}, {600, 500},
		 90.0,        50.0,       10.0,    GREEN)

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
