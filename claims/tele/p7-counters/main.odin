package main

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
