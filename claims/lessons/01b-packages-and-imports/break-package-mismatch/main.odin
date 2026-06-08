package main

import "core:fmt"
import strs "core:strings"
import "./mymath"

// A file-private helper: invisible to other files and other packages.
@(private="file")
shout :: proc(s: string) -> string {
	return strs.to_upper(s)
}

main :: proc() {
	// 1. core:fmt still works.
	fmt.println("lesson 01b - packages and imports")

	// 2. the aliased import (strs == core:strings).
	fmt.printfln("contains 'hello' in 'hello world': %v", strs.contains("hello world", "hello"))

	// 3. call into the sibling mymath package.
	v := mymath.Vec2{3, 4}
	fmt.printfln("length of %v = %.4f", v, mymath.vec_length(v))
	fmt.printfln("circumference of r=1 circle = %.4f", mymath.circle_circumference(1.0))
	fmt.println("mymath version:", mymath.VERSION)

	// 4. the file-private helper.
	fmt.println("shouted:", shout("hellope"))

	// 5. two files sharing one package scope (PI lives in constants.odin).
	fmt.println("PI from constants.odin, used by vectors.odin:", mymath.PI)
}
