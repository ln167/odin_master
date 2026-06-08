package main

// Lesson 06 "break it" #1: an out-of-bounds slice expression. Upper bound 99 on
// a length-6 array. Probe whether constant bounds are caught at compile time.
import "core:fmt"

main :: proc() {
	prices: [6]int = {100, 200, 300, 400, 500, 600}
	bad := prices[2:99]
	fmt.println(bad)
}
