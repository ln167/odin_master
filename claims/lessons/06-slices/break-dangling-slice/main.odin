package main

// Lesson 06 "break it" #3: return a slice of a local array. Odin's escape check
// rejects this exact shape at compile time (it does NOT catch indirect escapes).
import "core:fmt"

leak :: proc() -> []int {
	local: [4]int = {1, 2, 3, 4}
	return local[:]
}

main :: proc() {
	fmt.println(leak())
}
