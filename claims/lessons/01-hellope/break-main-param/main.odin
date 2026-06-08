package main

// Lesson 01 "break it" #2: give `main` a parameter it is never passed.
// The program entry point must be `proc()`; declaring a parameter makes the build fail.
import "core:fmt"

main :: proc(x: int) {
	fmt.println("Hellope!")
}
