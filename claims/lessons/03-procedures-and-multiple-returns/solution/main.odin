package main

import "core:fmt"

// One return.
square :: proc(x: int) -> int {
	return x * x
}

// Two returns. Caller can ignore the second with `_`.
divmod :: proc(a, b: int) -> (q: int, r: int) {
	q = a / b
	r = a %% b // Odin's signed-safe modulo
	return // bare return uses named values
}

main :: proc() {
	fmt.println(square(7))

	q, r := divmod(17, 5)
	fmt.printf("17 / 5 = %d rem %d\n", q, r)

	only_q, _ := divmod(20, 6)
	fmt.println("20 / 6 ->", only_q)
}
