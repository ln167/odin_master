package main

import "core:fmt"
import "core:math"
import "core:os"

WIDTH  :: 800
HEIGHT :: 600

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

normalize3 :: proc(v: [3]f32) -> [3]f32 {
	l := math.sqrt(v.x*v.x + v.y*v.y + v.z*v.z)
	return {v.x/l, v.y/l, v.z/l}
}

dot3 :: proc(a, b: [3]f32) -> f32 {
	return a.x*b.x + a.y*b.y + a.z*b.z
}

// TODO 1: Lambert diffuse intensity.
//   I_d = max(0, dot(N, L))
//   Both N and L must be normalized.
lambert :: proc(n, l: [3]f32) -> f32 {
	return 0 // TODO
}

// TODO 2: Phong specular intensity.
//   R = reflect(-L, N) = 2 * dot(N, L) * N - L
//   I_s = pow(max(0, dot(R, V)), shininess)
//   N, L, V must be normalized.
phong :: proc(n, l, v: [3]f32, shininess: f32) -> f32 {
	return 0 // TODO
}

// TODO 3: gamma-encode a linear [0, 1] channel to an 8-bit sRGB-ish byte.
//   approx: out = u8(pow(linear, 1.0/2.2) * 255)
//   clamp linear to [0, 1] first.
gamma_encode :: proc(linear: f32) -> u8 {
	return 0 // TODO
}

// Pack a linear-space (r, g, b) into u32 0xRRGGBBAA with gamma encode applied.
pack_rgba :: proc(r, g, b: f32) -> u32 {
	return (u32(gamma_encode(r)) << 24) |
	       (u32(gamma_encode(g)) << 16) |
	       (u32(gamma_encode(b)) <<  8) | 0xFF
}

// TODO 4: shaded triangle rasterizer.
//   For each pixel:
//     w0, w1, w2 = barycentric weights.
//     n_pixel = normalize(w0*n0 + w1*n1 + w2*n2)  -- normalize after interp!
//     pos_pixel = w0*pos0 + w1*pos1 + w2*pos2 (for view dir)
//     diff = lambert(n_pixel, L)
//     spec = phong(n_pixel, L, normalize(view - pos_pixel), shininess)
//     r,g,b in linear space = base_color * diff + spec
//     pixels[idx] = pack_rgba(r, g, b)   -- pack_rgba does gamma at the end
draw_lit_triangle :: proc(pixels: []u32, w, h: int,
                          p0, p1, p2: [2]int,
                          pos0, pos1, pos2: [3]f32,
                          n0, n1, n2: [3]f32,
                          base: [3]f32, light_dir, view_pos: [3]f32, shininess: f32) {
	// TODO
}

main :: proc() {
	pixels := make([]u32, WIDTH * HEIGHT); defer delete(pixels)
	clear_to(pixels, DARK)

	// One tilted quad faking a curved surface via four different corner normals.
	// Two CCW triangles: (a, b, c) and (a, c, d).
	a_p := [2]int{150, 150}; a_n := normalize3({-1,  1,  1}); a_w := [3]f32{-1,  1, 0}
	b_p := [2]int{650, 150}; b_n := normalize3({ 1,  1,  1}); b_w := [3]f32{ 1,  1, 0}
	c_p := [2]int{650, 450}; c_n := normalize3({ 1, -1,  1}); c_w := [3]f32{ 1, -1, 0}
	d_p := [2]int{150, 450}; d_n := normalize3({-1, -1,  1}); d_w := [3]f32{-1, -1, 0}

	base      := [3]f32{0.8, 0.5, 0.3}    // warm tan
	light_dir := normalize3({0.4, 0.6, 0.7})
	view_pos  := [3]f32{0, 0, 3}
	shine     := f32(32)

	draw_lit_triangle(pixels, WIDTH, HEIGHT,
		a_p, b_p, c_p, a_w, b_w, c_w, a_n, b_n, c_n, base, light_dir, view_pos, shine)
	draw_lit_triangle(pixels, WIDTH, HEIGHT,
		a_p, c_p, d_p, a_w, c_w, d_w, a_n, c_n, d_n, base, light_dir, view_pos, shine)

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
