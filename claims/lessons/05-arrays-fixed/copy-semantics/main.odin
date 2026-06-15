package main

import "core:fmt"

// Assigning a fixed array copies every element. b is an independent copy of a;
// writing through b does not touch a.
main :: proc() {
	a: [4]int = {10, 20, 30, 40}
	b := a          // copies all 4 ints
	b[0] = 999      // writes the copy only
	fmt.println("a =", a)
	fmt.println("b =", b)
}
