package main

// Lesson 03 "break it" #2: return only one value from a two-value proc.
// `return q` supplies q but not r -> the build fails on the missing value.
import "core:fmt"

divmod :: proc(a, b: int) -> (q: int, r: int) {
	q = a / b
	r = a %% b
	return q
}

main :: proc() {
	q, r := divmod(17, 5)
	fmt.println(q, r)
}
