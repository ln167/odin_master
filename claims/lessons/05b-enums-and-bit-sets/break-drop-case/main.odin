package main

// Lesson 05b "break it" #2: drop a case from a non-#partial enum switch.
// Odin enforces exhaustiveness -> the build fails naming the missing case.
import "core:fmt"

Element :: enum {
	Fire,
	Ice,
	Lightning,
	Physical,
}

describe :: proc(e: Element) -> string {
	switch e {
	case .Fire:
		return "hot"
	case .Ice:
		return "cold"
	case .Lightning:
		return "fast"
	}
	return ""
}

main :: proc() {
	fmt.println(describe(.Fire))
}
