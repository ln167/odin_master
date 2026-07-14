package main

// h2 -- the CORRELATED RECORD (spec §18 gap #2, "the core missing piece"): a value capture stamps
// the LIVE execution context -- the current own-code call depth and the call-id of the innermost
// open call -- so a cap line answers "which activation of which proc saw this value" (the value
// fused with its execution context; CONTEXT.md "Correlation"). main (depth 1, call 1) captures x;
// inner (main -> outer -> inner, depth 3, call 3) captures y; outer captures z AFTER inner
// returned (depth 2, call 2 -- the cursor unwinds with the stack, not with time). The surrounding
// hook records are asserted alongside: each cap's depth/call EQUAL its enclosing enter's, which is
// the joined-Record acceptance mechanics (spec §18 questions #2/#4/#5 -- execution-vs-mental-model,
// caller attribution, call frequency all read off this join). Deterministic fields exact;
// ts/thread/dur wildcarded in their fixed positions.

import "odin_lib:tele"

inner :: proc() {
	y := 7
	tele.capture("y", y)
}

outer :: proc() {
	inner()
	z := 9
	tele.capture("z", z)
}

main :: proc() {
	x := 5
	tele.capture("x", x)
	outer()
}
