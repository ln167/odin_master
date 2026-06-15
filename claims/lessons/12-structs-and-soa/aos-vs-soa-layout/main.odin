package main

// The load-bearing facts for the AoS-vs-SoA diagram.
//  - Both [N]Particle and #soa [N]Particle occupy the SAME total bytes: #soa is a
//    transposition, not a packing.
//  - In AoS, consecutive particles' `pos` are size_of(Particle)=28 bytes apart (a
//    whole Particle, with vel+mass wedged between the two pos values).
//  - In #soa, consecutive `pos` values sit 12 bytes apart (size_of([3]f32)) -- the
//    pos column is one contiguous run with nothing between the values.
//  - &soa[0].pos and &soa.pos[0] are the SAME address: the row view and the column
//    view name one storage location two ways.
import "core:fmt"

Particle :: struct {
	pos:  [3]f32,
	vel:  [3]f32,
	mass: f32,
}
N :: 4

main :: proc() {
	fmt.println("size_of(Particle)         =", size_of(Particle))
	fmt.println("size_of([3]f32)           =", size_of([3]f32))
	fmt.println("size_of([N]Particle)      =", size_of([N]Particle))
	fmt.println("size_of(#soa [N]Particle) =", size_of(#soa [N]Particle))

	aos: [N]Particle
	soa: #soa [N]Particle
	aos_stride := uintptr(&aos[1].pos) - uintptr(&aos[0].pos)
	soa_stride := uintptr(&soa.pos[1]) - uintptr(&soa.pos[0])
	fmt.println("AoS pos stride            =", aos_stride)
	fmt.println("SoA pos stride            =", soa_stride)
	fmt.println("&soa[0].pos == &soa.pos[0]:", &soa[0].pos == &soa.pos[0])
}
