package main

// Lesson 06c HTML L1: to change the caller's value you pass an explicit pointer
// and write THROUGH it. add_point takes ^int; `score^ += 1` lands on the
// caller's storage. Proves "the ^T path writes through to the caller."
import "core:fmt"

add_point :: proc(score: ^int) {
	score^ += 1
}

main :: proc() {
	score := 10
	add_point(&score) // the & at the call site hands over the address
	add_point(&score)
	fmt.println("after two add_point, caller score:", score)
}
