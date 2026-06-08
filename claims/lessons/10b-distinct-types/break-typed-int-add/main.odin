package main

// Lesson 10b "break it" #2: add a TYPED int to a distinct type. `p1 + 1` works
// (untyped literal adapts), but `p1 + some_raw_int` (typed int) does not.
import "core:fmt"

Player_Id :: distinct int

main :: proc() {
	p1 := Player_Id(1)
	some_raw_int: int = 5
	r := p1 + some_raw_int
	fmt.println(r)
}
