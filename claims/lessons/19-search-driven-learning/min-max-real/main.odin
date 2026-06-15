package main

// Grounds lesson 19 (search-driven learning): the payoff of READING the
// core: source is that you find `slice.min_max` instead of hand-rolling two
// loops. This probe calls the real proc and prints what it returns, so the
// output shown on the HTML page is real compiler output, not invented.

import "core:fmt"
import "core:slice"

main :: proc() {
	scores := []int{42, 7, 99, 13, 99, 4}

	// One pass, three return values — found by reading core/slice/slice.odin,
	// not by guessing a proc name.
	lo, hi, ok := slice.min_max(scores)

	fmt.printf("min=%d max=%d ok=%t\n", lo, hi, ok)

	// The empty-slice case the source documents: ok is false, both are zero.
	empty: []int
	lo2, hi2, ok2 := slice.min_max(empty)
	fmt.printf("empty: min=%d max=%d ok=%t\n", lo2, hi2, ok2)
}
