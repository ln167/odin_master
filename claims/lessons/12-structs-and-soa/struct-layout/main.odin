package main

// L1 byte-strip ground truth. A struct is named fields laid out in declaration
// order; each field starts at an offset that satisfies its type's alignment, and
// the struct's size rounds up to its own alignment. This Mover deliberately mixes
// alignments so the padding is visible:
//   id:u8 at 0 (1 byte) -> 3 pad bytes so pos aligns to 4
//   pos:[3]f32 at 4 (12 bytes)
//   alive:bool at 16 (1 byte) -> 7 pad bytes so mass aligns to 8
//   mass:f64 at 24 (8 bytes)
// size 32, align 8.
import "core:fmt"

Mover :: struct {
	id:    u8,
	pos:   [3]f32,
	alive: bool,
	mass:  f64,
}

main :: proc() {
	fmt.println("size_of  =", size_of(Mover))
	fmt.println("align_of =", align_of(Mover))
	fmt.println("offset id    =", offset_of(Mover, id))
	fmt.println("offset pos   =", offset_of(Mover, pos))
	fmt.println("offset alive =", offset_of(Mover, alive))
	fmt.println("offset mass  =", offset_of(Mover, mass))
}
