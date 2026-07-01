package main

// Exercises the top of the overload set, _dbg8 (eight args). Only 1-3 args were tested
// before; this proves the 8-arity overload resolves and #caller_expression captures each
// arg's source text independently (a..h).
import "odin_lib:tele"

main :: proc() {
	a := 1; b := 2; c := 3; d := 4; e := 5; f := 6; g := 7; h := 8
	tele.dbg(a, b, c, d, e, f, g, h)
}
