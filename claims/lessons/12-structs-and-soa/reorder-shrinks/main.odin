package main

// L3 cost mitigation. The padding in `struct-layout`'s Mover (32 bytes) is a
// consequence of FIELD ORDER, not of the data. Reordering the exact same four
// fields largest-alignment-first packs the small fields into what was padding:
// 32 bytes -> 24 bytes, no fields removed, no #packed needed.
//   mass:f64 at 0, pos:[3]f32 at 8, id:u8 at 20, alive:bool at 21 (2 trailing pad).
import "core:fmt"

MoverPacked :: struct {
	mass:  f64,
	pos:   [3]f32,
	id:    u8,
	alive: bool,
}

main :: proc() {
	fmt.println("size_of  =", size_of(MoverPacked))
	fmt.println("offset mass  =", offset_of(MoverPacked, mass))
	fmt.println("offset pos   =", offset_of(MoverPacked, pos))
	fmt.println("offset id    =", offset_of(MoverPacked, id))
	fmt.println("offset alive =", offset_of(MoverPacked, alive))
}
