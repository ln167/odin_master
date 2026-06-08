package main

// Lesson 07b "break it" #4: a defer cannot change a named return value. The
// defer runs AFTER the value is handed back, so foo() returns 123, not 456.
// (Go's defer can reach back and modify it; Odin's deliberately can't.)
import "core:fmt"

foo :: proc() -> (n: int) {
	defer {
		n = 456
	}
	n = 123
	return
}

main :: proc() {
	fmt.println(foo())
}
