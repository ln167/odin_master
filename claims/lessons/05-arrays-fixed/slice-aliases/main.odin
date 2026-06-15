package main

import "core:fmt"

// A slice does NOT copy: a[:] is a view into a's own storage. Writing through
// the slice changes a. This is the contrast with the copying assignment.
main :: proc() {
	a: [4]int = {10, 20, 30, 40}
	s := a[:]       // a view into a, no copy
	s[0] = 999      // writes a's storage through the view
	fmt.println("a =", a)
	fmt.println("s =", s)
}
