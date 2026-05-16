package main

import "core:fmt"
import "core:os"

WIDTH  :: 800
HEIGHT :: 600

TEX_W :: 8
TEX_H :: 8

DARK :: u32(0x10_10_18_FF)

clear_to :: proc(pixels: []u32, color: u32) {
	for i in 0 ..< len(pixels) { pixels[i] = color }
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

// 8x8 black/white checker; alternating cells are WHITE / dark grey.
make_checker :: proc() -> [TEX_W * TEX_H]u32 {
	tex: [TEX_W * TEX_H]u32
	for y in 0 ..< TEX_H {
		for x in 0 ..< TEX_W {
			tex[y * TEX_W + x] = ((x + y) & 1) == 0 ? 0xFF_FF_FF_FF : 0x40_40_40_FF
		}
	}
	return tex
}

// TODO 1: nearest-neighbor sample.
//   tx = int(u * TEX_W); ty = int(v * TEX_H)
//   clamp tx in [0, TEX_W-1], ty in [0, TEX_H-1]
//   return tex[ty * TEX_W + tx]
sample_nearest :: proc(tex: []u32, u, v: f32) -> u32 {
	return 0 // TODO
}

// TODO 2 + 4: textured triangle rasterizer with optional perspective-correct UV.
//   Inputs include per-vertex 1/w (inv_w) and per-vertex (u, v).
//   1. compute total area; bail if 0.
//   2. for each pixel inside the triangle:
//        w0, w1, w2 = barycentric weights (e0/tot, e1/tot, e2/tot)
//      naive:
//        u = w0*u0 + w1*u1 + w2*u2
//        v = w0*v0 + w1*v1 + w2*v2
//      perspective-correct:
//        u_over_w = w0*(u0*inv_w0) + w1*(u1*inv_w1) + w2*(u2*inv_w2)
//        v_over_w = w0*(v0*inv_w0) + w1*(v1*inv_w1) + w2*(v2*inv_w2)
//        one_over_w = w0*inv_w0 + w1*inv_w1 + w2*inv_w2
//        u = u_over_w / one_over_w
//        v = v_over_w / one_over_w
//      pixels[idx] = sample_nearest(tex, u, v)
draw_textured_triangle :: proc(pixels: []u32, w, h: int,
                               p0, p1, p2: [2]int,
                               u0, v0, inv_w0,
                               u1, v1, inv_w1,
                               u2, v2, inv_w2: f32,
                               tex: []u32, perspective_correct: bool) {
	// TODO
}

main :: proc() {
	pixels_naive   := make([]u32, WIDTH * HEIGHT); defer delete(pixels_naive)
	pixels_correct := make([]u32, WIDTH * HEIGHT); defer delete(pixels_correct)
	clear_to(pixels_naive,   DARK)
	clear_to(pixels_correct, DARK)

	tex := make_checker()

	// A quad tilted in z, split into two CCW triangles. The far edge has small
	// 1/w (large w), the near edge has large 1/w. Naive UV interp will swim
	// because screen-space linear is not 3D-linear here.
	p0 := [2]int{150, 150}; uv0 := [2]f32{0, 0}; iw0 := f32(1.0)   // near top-left
	p1 := [2]int{650, 200}; uv1 := [2]f32{1, 0}; iw1 := f32(0.2)   // far top-right
	p2 := [2]int{650, 500}; uv2 := [2]f32{1, 1}; iw2 := f32(0.2)   // far bottom-right
	p3 := [2]int{150, 450}; uv3 := [2]f32{0, 1}; iw3 := f32(1.0)   // near bottom-left

	for pc in 0 ..< 2 {
		pixels := pc == 0 ? pixels_naive : pixels_correct
		correct := pc == 1
		draw_textured_triangle(pixels, WIDTH, HEIGHT,
			p0, p1, p2,
			uv0.x, uv0.y, iw0,
			uv1.x, uv1.y, iw1,
			uv2.x, uv2.y, iw2,
			tex[:], correct)
		draw_textured_triangle(pixels, WIDTH, HEIGHT,
			p0, p2, p3,
			uv0.x, uv0.y, iw0,
			uv2.x, uv2.y, iw2,
			uv3.x, uv3.y, iw3,
			tex[:], correct)
	}

	dump_ppm("out_naive.ppm",   pixels_naive,   WIDTH, HEIGHT)
	dump_ppm("out_correct.ppm", pixels_correct, WIDTH, HEIGHT)
	fmt.println("wrote out_naive.ppm, out_correct.ppm")
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
