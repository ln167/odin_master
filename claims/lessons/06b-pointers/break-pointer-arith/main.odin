package main

// Lesson 06b "break it" #3: arithmetic on a single-value pointer. `^int` does
// not support `+`; C-style pointer math needs a multi-pointer [^]int instead.
import "core:fmt"

main :: proc() {
	x: int = 42
	p := &x
	q := p + 1
	fmt.println(q)
}
