package main

import "core:fmt"
import strs "core:strings"
// Lesson 01b "break it" #2: import a path that does not exist. The sibling
// folder is named mymath/, but we point at mymath_typo/ -> package not found.
import "./mymath_typo"

@(private="file")
shout :: proc(s: string) -> string {
	return strs.to_upper(s)
}

main :: proc() {
	fmt.println("lesson 01b - packages and imports")
	fmt.printfln("contains 'hello' in 'hello world': %v", strs.contains("hello world", "hello"))
	v := mymath_typo.Vec2{3, 4}
	fmt.printfln("length of %v = %.4f", v, mymath_typo.vec_length(v))
	fmt.println("shouted:", shout("hellope"))
}
