package main

import "core:fmt"

// Passing [4]int by value gives the proc a copy; mutating it does not stick.
// (A by-value parameter is itself immutable, so we copy into a local first.)
// Passing ^[4]int hands over the address, so the write reaches the caller.
by_value :: proc(x: [4]int) {
	local := x   // an explicit copy of the already-copied parameter
	local[0] = 999
	fmt.println("  inside by_value   local =", local)
}

by_pointer :: proc(x: ^[4]int) {
	x[0] = 999  // mutates the caller's array
}

main :: proc() {
	a: [4]int = {10, 20, 30, 40}
	by_value(a)
	fmt.println("after by_value   a =", a)
	by_pointer(&a)
	fmt.println("after by_pointer a =", a)
}
