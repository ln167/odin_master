package main

// No flags.txt -> default TELE=off. observe() registers nothing (when-ENABLED) and
// observe_frame() compiles to an empty body, so the [dynamic]Observation registry stays empty
// and nothing renders. Expect zero output. (Hard rule #5: off = gone.)

import "odin_lib:tele"

main :: proc() {
	hp := 100
	score := 0
	tele.observe("hp", &hp)
	tele.observe("score", &score)
	for frame in 0 ..< 3 {
		hp -= 10
		score += 5
		tele.observe_frame(frame)
	}
}
