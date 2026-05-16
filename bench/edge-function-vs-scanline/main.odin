// Compare AABB+edge-function triangle rasterization with a scanline rasterizer.
// Both fill 5,000 random triangles into a 1920x1080 framebuffer.
package main

import "core:fmt"
import "core:math/rand"
import "core:slice"
import "core:time"

W :: 1920
H :: 1080
N_TRIS :: 5_000

edge_func :: #force_inline proc(ax, ay, bx, by, px, py: int) -> int {
	return (bx - ax) * (py - ay) - (by - ay) * (px - ax)
}

// AABB + edge-function rasterizer.
draw_tri_edge :: proc(pixels: []u32, p0, p1, p2: [2]int, c: u32) {
	xmin := min(p0.x, min(p1.x, p2.x))
	ymin := min(p0.y, min(p1.y, p2.y))
	xmax := max(p0.x, max(p1.x, p2.x))
	ymax := max(p0.y, max(p1.y, p2.y))
	if xmin < 0 { xmin = 0 }
	if ymin < 0 { ymin = 0 }
	if xmax >= W { xmax = W - 1 }
	if ymax >= H { ymax = H - 1 }
	for y in ymin ..= ymax {
		for x in xmin ..= xmax {
			e0 := edge_func(p1.x, p1.y, p2.x, p2.y, x, y)
			e1 := edge_func(p2.x, p2.y, p0.x, p0.y, x, y)
			e2 := edge_func(p0.x, p0.y, p1.x, p1.y, x, y)
			if e0 >= 0 && e1 >= 0 && e2 >= 0 {
				pixels[y * W + x] = c
			}
		}
	}
}

// Scanline rasterizer: sort vertices by y, walk left/right edges, fill spans.
draw_tri_scan :: proc(pixels: []u32, p0_in, p1_in, p2_in: [2]int, c: u32) {
	pts := [3][2]int{p0_in, p1_in, p2_in}
	slice.sort_by(pts[:], proc(a, b: [2]int) -> bool { return a.y < b.y })
	a, b, mid := pts[0], pts[2], pts[1]
	if a.y == b.y { return }

	plot_span :: proc(pixels: []u32, x_a, x_b, y: int, c: u32) {
		if y < 0 || y >= H { return }
		l, r := x_a, x_b
		if l > r { l, r = r, l }
		if l < 0 { l = 0 }
		if r >= W { r = W - 1 }
		for x in l ..= r { pixels[y * W + x] = c }
	}

	dx_long := f32(b.x - a.x) / f32(b.y - a.y)
	// Upper half: a -> mid.
	if mid.y > a.y {
		dx_short := f32(mid.x - a.x) / f32(mid.y - a.y)
		x_long := f32(a.x)
		x_short := f32(a.x)
		for y in a.y ..< mid.y {
			plot_span(pixels, int(x_long), int(x_short), y, c)
			x_long += dx_long
			x_short += dx_short
		}
	}
	// Lower half: mid -> b.
	if b.y > mid.y {
		dx_short := f32(b.x - mid.x) / f32(b.y - mid.y)
		x_long := f32(a.x) + dx_long * f32(mid.y - a.y)
		x_short := f32(mid.x)
		for y in mid.y ..= b.y {
			plot_span(pixels, int(x_long), int(x_short), y, c)
			x_long += dx_long
			x_short += dx_short
		}
	}
}

main :: proc() {
	pixels := make([]u32, W * H); defer delete(pixels)

	rand.reset(0xC0FFEE)
	tris := make([][3][2]int, N_TRIS); defer delete(tris)
	for i in 0 ..< N_TRIS {
		// CCW-ish small triangles: pick a base point, then offset two more.
		bx := rand.int_max(W)
		by := rand.int_max(H)
		tris[i] = {
			{bx, by},
			{bx + rand.int_max(80) - 40, by + rand.int_max(80)},
			{bx + rand.int_max(80) + 40, by + rand.int_max(80)},
		}
	}

	t0 := time.tick_now()
	for t in tris { draw_tri_edge(pixels, t[0], t[1], t[2], 0xFFFFFFFF) }
	edge_ns := time.tick_diff(t0, time.tick_now())

	t1 := time.tick_now()
	for t in tris { draw_tri_scan(pixels, t[0], t[1], t[2], 0xFFFFFFFF) }
	scan_ns := time.tick_diff(t1, time.tick_now())

	fmt.printf("edge-function : %v ms\n", time.duration_milliseconds(edge_ns))
	fmt.printf("scanline      : %v ms\n", time.duration_milliseconds(scan_ns))
	fmt.printf("speedup       : %.2fx (edge/scan)\n", f64(edge_ns) / f64(scan_ns))
}
