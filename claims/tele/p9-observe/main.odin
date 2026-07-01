package main

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
