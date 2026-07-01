package main

import "odin_lib:tele"

main :: proc() {
	for i in 0 ..< 10 {
		tele.capture("i", i) // one site x10; TELE_CAP=3 -> only the first 3 emit (hot-loop guard)
	}
}
