package main

// Lesson 03 "break it" #1: bind only one name to a two-value return, with no `_`.
// Odin refuses to silently discard the second return value -> build fails.
import "core:fmt"

divmod :: proc(a, b: int) -> (q: int, r: int) {
	q = a / b
	r = a %% b
	return
}

main :: proc() {
	only_q := divmod(20, 6)
	fmt.println(only_q)
}
