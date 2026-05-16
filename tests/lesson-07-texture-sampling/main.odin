package main

import "core:fmt"

WIDTH  :: 800
HEIGHT :: 600

TEX_W :: 8
TEX_H :: 8

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

make_checker :: proc() -> [TEX_W * TEX_H]u32 {
	tex: [TEX_W * TEX_H]u32
	for y in 0 ..< TEX_H {
		for x in 0 ..< TEX_W {
			tex[y * TEX_W + x] = ((x + y) & 1) == 0 ? 0xFF_FF_FF_FF : 0x40_40_40_FF
		}
	}
	return tex
}

sample_nearest :: proc(tex: []u32, u, v: f32) -> u32 {
	tx := int(u * TEX_W)
	ty := int(v * TEX_H)
	if tx < 0 { tx = 0 }
	if ty < 0 { ty = 0 }
	if tx >= TEX_W { tx = TEX_W - 1 }
	if ty >= TEX_H { ty = TEX_H - 1 }
	return tex[ty * TEX_W + tx]
}

draw_textured_triangle :: proc(pixels: []u32, w, h: int,
                               p0, p1, p2: [2]int,
                               u0, v0, inv_w0,
                               u1, v1, inv_w1,
                               u2, v2, inv_w2: f32,
                               tex: []u32, perspective_correct: bool) {
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
				u, v: f32
				if perspective_correct {
					uw := w0*u0*inv_w0 + w1*u1*inv_w1 + w2*u2*inv_w2
					vw := w0*v0*inv_w0 + w1*v1*inv_w1 + w2*v2*inv_w2
					iw := w0*inv_w0 + w1*inv_w1 + w2*inv_w2
					u = uw / iw
					v = vw / iw
				} else {
					u = w0*u0 + w1*u1 + w2*u2
					v = w0*v0 + w1*v1 + w2*v2
				}
				pixels[y * w + x] = sample_nearest(tex, u, v)
			}
		}
	}
}

main :: proc() {
	pixels_naive   := make([]u32, WIDTH * HEIGHT); defer delete(pixels_naive)
	pixels_correct := make([]u32, WIDTH * HEIGHT); defer delete(pixels_correct)
	for i in 0 ..< len(pixels_naive)   { pixels_naive[i]   = DARK }
	for i in 0 ..< len(pixels_correct) { pixels_correct[i] = DARK }

	tex := make_checker()

	p0 := [2]int{150, 150}; uv0 := [2]f32{0, 0}; iw0 := f32(1.0)
	p1 := [2]int{650, 200}; uv1 := [2]f32{1, 0}; iw1 := f32(0.2)
	p2 := [2]int{650, 500}; uv2 := [2]f32{1, 1}; iw2 := f32(0.2)
	p3 := [2]int{150, 450}; uv3 := [2]f32{0, 1}; iw3 := f32(1.0)

	for pc in 0 ..< 2 {
		pixels := pc == 0 ? pixels_naive : pixels_correct
		correct := pc == 1
		draw_textured_triangle(pixels, WIDTH, HEIGHT,
			p0, p1, p2,
			uv0.x, uv0.y, iw0, uv1.x, uv1.y, iw1, uv2.x, uv2.y, iw2,
			tex[:], correct)
		draw_textured_triangle(pixels, WIDTH, HEIGHT,
			p0, p2, p3,
			uv0.x, uv0.y, iw0, uv2.x, uv2.y, iw2, uv3.x, uv3.y, iw3,
			tex[:], correct)
	}

	// Near side: naive and PC should mostly agree (1/w is close-to-equal at this corner).
	fmt.printf("naive_near(200,200)      = 0x%08X\n", pixels_naive[200 * WIDTH + 200])
	fmt.printf("correct_near(200,200)    = 0x%08X\n", pixels_correct[200 * WIDTH + 200])
	// Mid: PC starts to differ.
	fmt.printf("naive_mid(400,300)       = 0x%08X\n", pixels_naive[300 * WIDTH + 400])
	fmt.printf("correct_mid(400,300)     = 0x%08X\n", pixels_correct[300 * WIDTH + 400])
	// Far side: 1/w small, distortion most visible.
	fmt.printf("naive_far(600,300)       = 0x%08X\n", pixels_naive[300 * WIDTH + 600])
	fmt.printf("correct_far(600,300)     = 0x%08X\n", pixels_correct[300 * WIDTH + 600])
	// Outside the quad.
	fmt.printf("outside(50,50)           = 0x%08X\n", pixels_naive[50 * WIDTH + 50])
}
