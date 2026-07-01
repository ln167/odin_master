package main

// W5 -- the human reader's collapse-friendly grouping by proc. Forensic console format, but
// deterministic given int values, so it IS claim-pinnable (same as p9-human's grouped observe
// output). A `proc:` header prints once when the proc changes and captures indent under it;
// main -> add -> main re-headers `main:` on return, proving the grouping tracks proc transitions.
// ANSI colors are part of the human format. The loc path is wildcarded (<...>); the grouping
// structure, seq, and line numbers are asserted exact. (Direct tele.capture() == weaver injection.)

import "odin_lib:tele"

add :: proc(a: int, b: int) -> int {
	c := a + b
	tele.capture("c", c)
	return c
}

main :: proc() {
	x := 10
	tele.capture("x", x)
	s := add(x, 5)
	tele.capture("s", s)
}
