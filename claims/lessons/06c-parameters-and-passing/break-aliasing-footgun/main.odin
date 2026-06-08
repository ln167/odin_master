package main

// Lesson 06c "break it" #3: the rule-3 aliasing leak. Big is 32 bytes (> 16), so
// the `odin` calling convention passes `v` by hidden immutable pointer. Passing
// the SAME variable as both `v` and `p` means writing p.a also changes v.a.
// This is an output claim: it prints 999, not the original 1.
import "core:fmt"

Big :: struct {
	a, b, c, d: int,
}

footgun :: proc(v: Big, p: ^Big) {
	p.a = 999
	fmt.println(v.a)
}

main :: proc() {
	b := Big{1, 2, 3, 4}
	footgun(b, &b)
}
