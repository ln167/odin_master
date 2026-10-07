package main

import "odin_lib:tele"
import "core:fmt"

work :: proc() {
	tele.SCOPE()
	sum := 0
	for i in 0 ..< 1000 {
		sum += i
	}
	_ = sum
}

main :: proc() {
	for _ in 0 ..< 50 {
		work()
	}
	fmt.println("off ok")
}
