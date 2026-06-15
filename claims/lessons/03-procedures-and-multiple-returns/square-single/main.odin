package main

// Lesson 03 HTML L1: the simplest shape -- one parameter in, one value out.
// `-> int` with no parens is a single unnamed return; `return x * x` ships it.
import "core:fmt"

square :: proc(x: int) -> int {
	return x * x
}

main :: proc() {
	fmt.println(square(7))
}
