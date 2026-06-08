package main

// Lesson 06c "break it" #1: reassign a parameter directly (no shadow).
// A parameter is an immutable binding, so `some_int += 1` is a compile error.
import "core:fmt"

increment :: proc(some_int: int) {
	some_int += 1
	fmt.println(some_int)
}

main :: proc() {
	increment(5)
}
