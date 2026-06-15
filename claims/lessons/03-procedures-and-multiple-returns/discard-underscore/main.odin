package main

// Lesson 03 HTML L2: discard a return you don't want with `_`. divmod hands back
// two values; the caller keeps the quotient and explicitly throws away the
// remainder. `_` is the only way to drop a value the proc produced.
import "core:fmt"

divmod :: proc(a, b: int) -> (q: int, r: int) {
	q = a / b
	r = a %% b
	return
}

main :: proc() {
	only_q, _ := divmod(20, 6)
	fmt.printf("20 / 6 -> %d (remainder discarded)\n", only_q)
}
