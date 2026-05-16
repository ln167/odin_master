package main

import "core:fmt"
import "core:math"
import "core:os"

WIDTH  :: 800
HEIGHT :: 600
NMAP_W :: 64
NMAP_H :: 64

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

cross3 :: proc(a, b: [3]f32) -> [3]f32 {
	return {a.y*b.z - a.z*b.y, a.z*b.x - a.x*b.z, a.x*b.y - a.y*b.x}
}

dot3 :: proc(a, b: [3]f32) -> f32 {
	return a.x*b.x + a.y*b.y + a.z*b.z
}

// Procedural normal map: sinusoidal bumps. Encoded as 0xRRGGBB__ where
// R,G,B map to N.x, N.y, N.z in [-1, 1] via (channel/255)*2 - 1.
make_normal_map :: proc() -> [NMAP_W * NMAP_H]u32 {
	nm: [NMAP_W * NMAP_H]u32
	for y in 0 ..< NMAP_H {
		for x in 0 ..< NMAP_W {
			u := f32(x) / f32(NMAP_W)
			v := f32(y) / f32(NMAP_H)
			// Small slopes; mostly +z.
			nx := math.sin(u * math.PI * 8) * 0.4
			ny := math.cos(v * math.PI * 8) * 0.4
			nz := math.sqrt(max(f32(0), 1 - nx*nx - ny*ny))
			r := u8((nx * 0.5 + 0.5) * 255)
			g := u8((ny * 0.5 + 0.5) * 255)
			b := u8((nz * 0.5 + 0.5) * 255)
			nm[y * NMAP_W + x] = (u32(r) << 24) | (u32(g) << 16) | (u32(b) << 8) | 0xFF
		}
	}
	return nm
}

// TODO 1: per-vertex tangent from triangle positions + UVs.
//   Edges: e1 = p1 - p0, e2 = p2 - p0
//   UV deltas: du1 = uv1 - uv0, du2 = uv2 - uv0
//   Solve the 2x2 system for the tangent T aligned with the U direction:
//     T = (du2.y * e1 - du1.y * e2) / (du1.x * du2.y - du2.x * du1.y)
//   Then normalize T.
triangle_tangent :: proc(p0, p1, p2: [3]f32, uv0, uv1, uv2: [2]f32) -> [3]f32 {
	return {0, 0, 0} // TODO
}

// TODO 2: sample the normal map; remap [0,255] to [-1, 1].
//   tx = int(u * NMAP_W); ty = int(v * NMAP_H)
//   clamp tx in [0, NMAP_W-1], ty in [0, NMAP_H-1]
//   p = nmap[ty * NMAP_W + tx]
//   r = ((p >> 24) & 0xFF); g = ((p >> 16) & 0xFF); b = ((p >> 8) & 0xFF)
//   return ((rgb / 255) * 2 - 1) as a [3]f32, normalized
sample_normal :: proc(nmap: []u32, u, v: f32) -> [3]f32 {
	return {0, 0, 1} // TODO
}

// TODO 3: build TBN per pixel; transform tangent-space normal into world.
//   B = cross(N, T) (recompute per pixel after interp; do NOT just interpolate B)
//   Optionally Gram-Schmidt: T = normalize(T - dot(T, N) * N)
//   Return: world_n = T * tn.x + B * tn.y + N * tn.z (then normalize)
apply_tbn :: proc(n, t: [3]f32, tn: [3]f32) -> [3]f32 {
	return n // TODO
}

lambert :: proc(n, l: [3]f32) -> f32 {
	d := dot3(n, l)
	if d < 0 { return 0 }
	return d
}

// Bumpy-quad rasterizer. For each pixel: barycentric-interp world position,
// world normal, world tangent, and UV; resample tangent-space normal from the
// map; apply TBN; light via lambert; write.
draw_bumpy_triangle :: proc(pixels: []u32, w, h: int,
                            p0, p1, p2: [2]int,
                            pos0, pos1, pos2: [3]f32,
                            n0, n1, n2: [3]f32,
                            t0, t1, t2: [3]f32,
                            uv0, uv1, uv2: [2]f32,
                            nmap: []u32, base: [3]f32, light_dir: [3]f32) {
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
				n  := normalize3({w0*n0.x + w1*n1.x + w2*n2.x,
				                  w0*n0.y + w1*n1.y + w2*n2.y,
				                  w0*n0.z + w1*n1.z + w2*n2.z})
				t  := normalize3({w0*t0.x + w1*t1.x + w2*t2.x,
				                  w0*t0.y + w1*t1.y + w2*t2.y,
				                  w0*t0.z + w1*t1.z + w2*t2.z})
				u := w0*uv0.x + w1*uv1.x + w2*uv2.x
				v := w0*uv0.y + w1*uv1.y + w2*uv2.y
				tn := sample_normal(nmap, u, v)
				world_n := apply_tbn(n, t, tn)
				lit := lambert(world_n, light_dir)
				r := u8(min(f32(255), base.x * lit * 255))
				g := u8(min(f32(255), base.y * lit * 255))
				b := u8(min(f32(255), base.z * lit * 255))
				pixels[y * w + x] = (u32(r) << 24) | (u32(g) << 16) | (u32(b) << 8) | 0xFF
			}
		}
	}
}

main :: proc() {
	pixels := make([]u32, WIDTH * HEIGHT); defer delete(pixels)
	clear_to(pixels, DARK)

	nmap := make_normal_map()

	// One flat quad facing +z. Bumpiness comes only from the normal map.
	pos_a := [3]f32{-1,  1, 0}; uv_a := [2]f32{0, 0}; pa := [2]int{150, 150}
	pos_b := [3]f32{ 1,  1, 0}; uv_b := [2]f32{1, 0}; pb := [2]int{650, 150}
	pos_c := [3]f32{ 1, -1, 0}; uv_c := [2]f32{1, 1}; pc := [2]int{650, 450}
	pos_d := [3]f32{-1, -1, 0}; uv_d := [2]f32{0, 1}; pd := [2]int{150, 450}

	n_flat := [3]f32{0, 0, 1}
	t_abc := triangle_tangent(pos_a, pos_b, pos_c, uv_a, uv_b, uv_c)
	t_acd := triangle_tangent(pos_a, pos_c, pos_d, uv_a, uv_c, uv_d)

	base      := [3]f32{0.8, 0.5, 0.3}
	light_dir := normalize3({0.4, 0.5, 0.7})

	draw_bumpy_triangle(pixels, WIDTH, HEIGHT,
		pa, pb, pc, pos_a, pos_b, pos_c,
		n_flat, n_flat, n_flat, t_abc, t_abc, t_abc,
		uv_a, uv_b, uv_c, nmap[:], base, light_dir)
	draw_bumpy_triangle(pixels, WIDTH, HEIGHT,
		pa, pc, pd, pos_a, pos_c, pos_d,
		n_flat, n_flat, n_flat, t_acd, t_acd, t_acd,
		uv_a, uv_c, uv_d, nmap[:], base, light_dir)

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
