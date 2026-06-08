package main

// Lesson 06b "break it" #2: return the address of a local. Odin's escape check
// rejects this exact shape at compile time (it does NOT catch indirect escapes).
import "core:fmt"

dangling :: proc() -> ^int {
	local := 7
	return &local
}

main :: proc() {
	fmt.println(dangling()^)
}
