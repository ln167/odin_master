package main

// Lesson 06c HTML L1: a by-value proc cannot change the caller. Even when the
// body mutates a SHADOW of the parameter, that change is confined to the call;
// the caller's `score` is untouched. Proves "parameter behaves like an
// independent value — the callee's change does not escape."
import "core:fmt"

bump :: proc(n: int) -> int {
	n := n // a mutable local shadow; the parameter itself stays immutable
	n += 1
	return n
}

main :: proc() {
	score := 10
	returned := bump(score)
	fmt.println("inside returned:", returned, "| caller score:", score)
}
