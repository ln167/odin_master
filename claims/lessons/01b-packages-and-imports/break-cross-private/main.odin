package main

import "core:fmt"
import strs "core:strings"
import "./mymath"

@(private="file")
shout :: proc(s: string) -> string {
	return strs.to_upper(s)
}

main :: proc() {
	fmt.println("lesson 01b - packages and imports")
	v := mymath.Vec2{3, 4}
	fmt.printfln("length of %v = %.4f", v, mymath.vec_length(v))
	fmt.println("shouted:", shout("hellope"))
	// Reach across packages into a @(private) symbol -> not visible here.
	fmt.println("secret:", mymath.secret_seed())
}
