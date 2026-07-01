package main

// No flags.txt -> default TELE=off. Every dbg call must compile to nothing:
// build succeeds, runs clean, prints zero bytes (Hard rule #5: off = gone).

import "odin_lib:tele"

Player :: struct {
	hp:   int,
	name: string,
}

main :: proc() {
	x := 42
	pos := [2]f32{400, 100}
	p := Player{hp = 100, name = "hero"}
	tele.dbg(x)
	tele.dbg(x, pos)
	tele.dbg(x, pos, p)
}
