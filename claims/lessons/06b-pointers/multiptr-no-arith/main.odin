package main

// Lesson 06b HTML probe (Level 4): a multi-pointer [^]T does NOT support `+`
// arithmetic either. To advance, you slice: mp[1:] gives a [^]int starting at
// index 1. (And mp[lo:hi] gives a bounded []int.) Compile error expected.
import "core:fmt"

main :: proc() {
	nums: [4]int = {10, 20, 30, 40}
	mp: [^]int = raw_data(nums[:])
	q := mp + 1 // ERROR: no `+` arithmetic on a multi-pointer
	fmt.println(q)
}
