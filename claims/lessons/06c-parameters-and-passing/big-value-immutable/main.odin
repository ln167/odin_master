package main

// Lesson 06c HTML L3: a big aggregate (> 16 bytes) is still passed as an
// immutable VALUE. The `odin` calling convention may hand it over as a hidden
// immutable pointer for speed, but you can't write the parameter and the
// caller's value is unaffected. Here Big is 32 bytes; inspect reads it, the
// caller's b is unchanged afterward.
import "core:fmt"

Big :: struct {
	a, b, c, d: int, // 4 * 8 = 32 bytes, well over the 16-byte threshold
}

inspect :: proc(v: Big) -> int {
	return v.a + v.b + v.c + v.d // read-only; the parameter is immutable
}

main :: proc() {
	b := Big{1, 2, 3, 4}
	sum := inspect(b)
	fmt.println("size_of(Big):", size_of(Big))
	fmt.println("inspect sum:", sum)
	fmt.println("caller b unchanged:", b)
}
