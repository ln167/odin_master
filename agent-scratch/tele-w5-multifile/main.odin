package main

import "core:fmt"

main :: proc() {
	a := 1
	b := helper(a)
	fmt.println(b)
}
