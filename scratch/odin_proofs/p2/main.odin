package main

import "core:fmt"

// PROOF 2: the 16-byte threshold is OBSERVABLE.
// We pass the SAME variable twice: once as a plain value param, once as a pointer.
// Then we mutate through the pointer and look at the "value" param.
//   - If the value param was COPIED, it won't change.
//   - If it was secretly passed BY REFERENCE (same memory), it WILL change.

Small :: struct { a: int }                 // size_of == 8  (<= 16) -> copied
Big   :: struct { a, b, c, d: int }        // size_of == 32 (>  16) -> by reference

test_small :: proc(v: Small, p: ^Small) {
	before := v.a
	p.a = 999                              // write through the pointer
	fmt.printf("  Small (size %v): v.a before=%v  after=%v\n", size_of(Small), before, v.a)
}

test_big :: proc(v: Big, p: ^Big) {
	before := v.a
	p.a = 999                              // write through the pointer
	fmt.printf("  Big   (size %v): v.a before=%v  after=%v\n", size_of(Big), before, v.a)
}

main :: proc() {
	s := Small{1}
	test_small(s, &s)

	b := Big{1, 2, 3, 4}
	test_big(b, &b)
}
