package main

import "core:fmt"

Vec3 :: [3]f32

main :: proc() {
	// element widths and array widths, all measured at compile time.
	fmt.println("size_of(int)       =", size_of(int))
	fmt.println("size_of([4]int)    =", size_of([4]int))
	fmt.println("size_of(f32)       =", size_of(f32))
	fmt.println("size_of(Vec3)      =", size_of(Vec3))
	fmt.println("size_of([4096]u8)  =", size_of([4096]u8))
	fmt.println("align_of([4]int)   =", align_of([4]int))

	// len is a compile-time constant for a fixed array.
	a: [4]int = {10, 20, 30, 40}
	fmt.println("len(a)             =", len(a))

	// each int slot is 8 bytes, so the 4 slots span 0..<32 contiguously.
	fmt.println("slot stride        =", size_of(a[0]))
}
