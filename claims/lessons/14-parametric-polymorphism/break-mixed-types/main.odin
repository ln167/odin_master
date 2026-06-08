package main

// Lesson 14 "break it" #1: call max with mixed types. Both args must resolve $T
// to the SAME type; an int and an f64 can't, so inference fails.
import "core:fmt"
import "base:intrinsics"

max :: proc(a, b: $T) -> T where intrinsics.type_is_ordered(T) {
	return a if a > b else b
}

main :: proc() {
	fmt.println(max(3, 2.5))
}
