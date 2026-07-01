package main

// No flags.txt -> default TELE=off. count() and dump_counts() are each when-ENABLED, so
// the bumps and the whole sorted dump compile to empty bodies. The package-global counter
// map is never even allocated. Expect zero output. (Hard rule #5: off = gone.)

import "odin_lib:tele"

main :: proc() {
	for i in 0 ..< 10 {
		if i % 2 == 0 {
			tele.count("even")
		} else {
			tele.count("odd")
		}
	}
	tele.count("total", 10)
	tele.dump_counts()
}
