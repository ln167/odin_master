package main

import "odin_lib:tele"

main :: proc() {
	for tick in 0 ..< 180 {
		if tele.every(60, tick) {
			tele.info("tick", tick)
		}
	}
}
