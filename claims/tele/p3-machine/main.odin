package main

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
