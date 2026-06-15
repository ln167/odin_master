package main

import "core:fmt"

// A by-value array parameter is a copy AND immutable: you cannot even assign to
// an element of it. The value is so thoroughly the callee's own that the
// compiler treats the parameter as read-only.
bump :: proc(x: [4]int) {
	x[0] = 999
}

main :: proc() {
	a: [4]int = {10, 20, 30, 40}
	bump(a)
	fmt.println(a)
}
