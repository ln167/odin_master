package main

// cond(c): the only-if gate. cond(true) lets the guarded log fire; cond(false) suppresses
// it. Exactly one of the two info lines should appear (the hp<10 branch). Proves cond
// routes on its argument, not unconditionally.

import "odin_lib:tele"

main :: proc() {
	hp := 5
	if tele.cond(hp < 10) { tele.info("low hp", hp) } // true  -> fires
	if tele.cond(hp > 99) { tele.info("high hp", hp) } // false -> silent
}
