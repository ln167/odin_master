package main

// No flags.txt -> default TELE=off. every() and cond() both fold to constant false
// (ENABLED is a compile-time false), so the guarded info() calls are unreachable and
// optimize away -- the gate calls too. every-gated loop + a cond(true) that WOULD fire
// when on must together emit nothing. (Hard rule #5: off = gone.)

import "odin_lib:tele"

main :: proc() {
	for tick in 0 ..< 180 {
		if tele.every(60, tick) { tele.info("tick", tick) }
	}
	if tele.cond(true) { tele.info("cond fired") }
}
