package main

// L4: the per-column views #soa hands you for free. On a #soa array, every struct
// field name becomes an array VIEW of length N: soa.pos is [N][3]f32, soa.mass is
// [N]f32 -- already the contiguous []T a SIMD/GPU/mixer loop wants, with no copy.
// Indexing the row view (soa[i].pos) is the identical syntax you'd write on a plain
// [N]Particle. We fill four particles exactly like the lesson and print both views.
import "core:fmt"

Particle :: struct {
	pos:  [3]f32,
	vel:  [3]f32,
	mass: f32,
}
N :: 4

main :: proc() {
	soa: #soa [N]Particle
	for i in 0 ..< N {
		soa[i] = Particle{pos = {f32(i), 0, 0}, vel = {1, 0, 0}, mass = 1}
	}
	dt: f32 = 0.5
	for i in 0 ..< N {
		soa[i].pos += soa[i].vel * dt
	}
	fmt.println("type soa.pos  :", typeid_of(type_of(soa.pos)))
	fmt.println("type soa.mass :", typeid_of(type_of(soa.mass)))
	fmt.println("soa.pos column :", soa.pos)
	fmt.println("soa.mass column:", soa.mass)
}
