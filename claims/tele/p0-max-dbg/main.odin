package main

// TELE=max. ENABLED := TELE=="on" || TELE=="max", so max enables the lean dbg output.
// MAX is the new automatic-feeder switch (Hooks W1 / Weaver W2); at W0 it is defined-but-unread,
// so for the lean dbg path max is still a behavioral alias for on (byte-identical output, verified).
// This claim pins max-enables-dbg-output so it cannot silently regress to off.
import "odin_lib:tele"

main :: proc() {
	x := 42
	pos := [2]f32{400, 100}
	tele.dbg(x, pos)
}
