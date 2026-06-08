package main

// Lesson 02 "break it" #1: assign a float literal to an integer type.
// 3.14 is not representable as i32, so the build must fail.
import "core:fmt"

main :: proc() {
	b: i32 = 3.14
	fmt.println(b)
}
