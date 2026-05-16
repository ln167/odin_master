package main

import "core:fmt"
import "core:math"

WIDTH  :: 800
HEIGHT :: 600

DARK :: u32(0x10_10_18_FF)

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

normalize3 :: proc(v: [3]f32) -> [3]f32 {
	l := math.sqrt(v.x*v.x + v.y*v.y + v.z*v.z)
	return {v.x/l, v.y/l, v.z/l}
}

dot3 :: proc(a, b: [3]f32) -> f32 {
	return a.x*b.x + a.y*b.y + a.z*b.z
}

lambert :: proc(n, l: [3]f32) -> f32 {
	d := dot3(n, l)
	if d < 0 { return 0 }
	return d
}

phong :: proc(n, l, v: [3]f32, shininess: f32) -> f32 {
	ndotl := dot3(n, l)
	r := [3]f32{2*ndotl*n.x - l.x, 2*ndotl*n.y - l.y, 2*ndotl*n.z - l.z}
	d := dot3(r, v)
	if d < 0 { return 0 }
	return math.pow(d, shininess)
}

gamma_encode :: proc(linear: f32) -> u8 {
	c := linear
	if c < 0 { c = 0 }
	if c > 1 { c = 1 }
	return u8(math.pow(c, 1.0/2.2) * 255)
}

pack_rgba :: proc(r, g, b: f32) -> u32 {
	return (u32(gamma_encode(r)) << 24) |
	       (u32(gamma_encode(g)) << 16) |
	       (u32(gamma_encode(b)) <<  8) | 0xFF
}

draw_lit_triangle :: proc(pixels: []u32, w, h: int,
                          p0, p1, p2: [2]int,
                          pos0, pos1, pos2: [3]f32,
                          n0, n1, n2: [3]f32,
                          base: [3]f32, light_dir, view_pos: [3]f32, shininess: f32) {
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
				n_pix := normalize3({w0*n0.x + w1*n1.x + w2*n2.x,
				                     w0*n0.y + w1*n1.y + w2*n2.y,
				                     w0*n0.z + w1*n1.z + w2*n2.z})
				pos := [3]f32{w0*pos0.x + w1*pos1.x + w2*pos2.x,
				              w0*pos0.y + w1*pos1.y + w2*pos2.y,
				              w0*pos0.z + w1*pos1.z + w2*pos2.z}
				view := normalize3({view_pos.x - pos.x, view_pos.y - pos.y, view_pos.z - pos.z})
				diff := lambert(n_pix, light_dir)
				spec := phong(n_pix, light_dir, view, shininess)
				r := base.x * diff + spec
				g := base.y * diff + spec
				b := base.z * diff + spec
				pixels[y * w + x] = pack_rgba(r, g, b)
			}
		}
	}
}

main :: proc() {
	pixels := make([]u32, WIDTH * HEIGHT); defer delete(pixels)
	for i in 0 ..< len(pixels) { pixels[i] = DARK }

	a_p := [2]int{150, 150}; a_n := normalize3({-1,  1,  1}); a_w := [3]f32{-1,  1, 0}
	b_p := [2]int{650, 150}; b_n := normalize3({ 1,  1,  1}); b_w := [3]f32{ 1,  1, 0}
	c_p := [2]int{650, 450}; c_n := normalize3({ 1, -1,  1}); c_w := [3]f32{ 1, -1, 0}
	d_p := [2]int{150, 450}; d_n := normalize3({-1, -1,  1}); d_w := [3]f32{-1, -1, 0}

	base      := [3]f32{0.8, 0.5, 0.3}
	light_dir := normalize3({0.4, 0.6, 0.7})
	view_pos  := [3]f32{0, 0, 3}
	shine     := f32(32)

	draw_lit_triangle(pixels, WIDTH, HEIGHT,
		a_p, b_p, c_p, a_w, b_w, c_w, a_n, b_n, c_n, base, light_dir, view_pos, shine)
	draw_lit_triangle(pixels, WIDTH, HEIGHT,
		a_p, c_p, d_p, a_w, c_w, d_w, a_n, c_n, d_n, base, light_dir, view_pos, shine)

	// Top-left corner of quad: normal points toward light, should be bright.
	fmt.printf("top_left(200,200)        = 0x%08X\n", pixels[200 * WIDTH + 200])
	// Middle of quad: normal is roughly facing camera, lambert near peak.
	fmt.printf("center(400,300)          = 0x%08X\n", pixels[300 * WIDTH + 400])
	// Bottom-right: normal points away from light, dim.
	fmt.printf("bot_right(600,400)       = 0x%08X\n", pixels[400 * WIDTH + 600])
	// Outside the quad: background.
	fmt.printf("outside(50,50)           = 0x%08X\n", pixels[50 * WIDTH + 50])
}
