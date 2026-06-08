package main

// Lesson 07d "break it" #1: return the address of a local. Odin's escape check
// rejects this direct shape at compile time, steering escaping data to the heap.
broken :: proc() -> ^int {
	local := 7
	return &local
}

main :: proc() {
	_ = broken()
}
