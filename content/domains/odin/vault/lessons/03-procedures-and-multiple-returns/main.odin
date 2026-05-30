package main

import "core:fmt"

// Just one return
square :: proc(x: int) -> int {
	return x * x
}

// This returns two variable. Its a "bare return"
divmod :: proc(a, b: int) -> (q: int, r: int) {
	q = a / b
	r = a %% b
	return
}

main :: proc() {
	fmt.println(square(7))

	q, r := divmod(17, 5)
	fmt.printf("17 / 5 = %d remainder %d\n", q, r)

	only_q, _ := divmod(20, 6)
	fmt.printf("20 / 6 ->", only_q)
	fmt.println(only_q)
	

}

