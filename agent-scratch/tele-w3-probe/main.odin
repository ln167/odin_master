package main

import "core:fmt"

add :: proc(a, b: int) -> int {
	c := a + b
	return c
}

main :: proc() {
	x := 10
	y := 20
	sum := add(x, y)
	fmt.println("sum =", sum)
	for i in 0 ..< 3 {
		fmt.println("i =", i)
	}
}
