package main

// No flags.txt -> default TELE=off. Every tele.capture() above must compile to nothing:
// build ok, run ok, ZERO output (the value firehose exists only at max).

import "odin_lib:tele"

P :: struct {
	hp:  int,
	pos: [2]f32,
}

main :: proc() {
	x := 42
	tele.capture("x", x)
	nums := []int{2, 4, 6}
	tele.capture("nums", nums)
	p := P{hp = 90, pos = {400, 100}}
	tele.capture("p", p)
	px := &x
	tele.capture("px", px)
	npx: ^int = nil
	tele.capture("npx", npx)
}
