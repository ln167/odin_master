package main

import "core:fmt"

main :: proc() {
	x: int
	y: int
	z: int
	z = 10
	x = 2
	y = 3
	z = x + y
	fmt.println("Hellop!!")
	fmt.println(z)
}

