package main

// flags.txt sets ONLY TELE_FORMAT=machine -> TELE defaults to off. The off
// master dial must beat the format override: the when-ENABLED guard gates
// _emit before FORMAT is ever consulted. Expect zero bytes.

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
