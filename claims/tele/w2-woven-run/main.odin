package main

import "core:fmt"

add :: proc(a, b: int) -> int { tele.capture("a", a); tele.capture("b", b);
	sum := a + b; tele.capture("sum", sum)
	return sum
}

main :: proc() {
	xs := []int{1, 2, 3}; tele.capture("xs", xs)
	acc := 0; tele.capture("acc", acc)
	for x in xs { tele.capture("x", x);
		acc = add(acc, x); tele.capture("acc", acc)
	}
	if acc > 3 {
		big := acc * 2; tele.capture("big", big)
		fmt.println(big)
	}
	fmt.println(acc)
}

import "odin_lib:tele"

// GENERATED -- real output of the W2 weaver (odin_lib:weave) on a clean fixture, checked in verbatim.
// Run at TELE=max it proves the woven program (a) compiles and (b) reports each value at its ORIGINAL
// source line (same-line injection: xs@11, a/b@5, sum@6 ...), deterministically, tagged with its proc
// (Correlation) and seq. DO NOT edit above the EOF import -- the captured line numbers are asserted in
// expected.txt; a comment there would shift them. Regenerate via tools/domains/odin/weaver on change.
