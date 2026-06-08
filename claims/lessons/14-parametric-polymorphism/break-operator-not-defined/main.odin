package main

// Lesson 14 "break it" #2: call max with a struct. The `where
// intrinsics.type_is_ordered(T)` clause rejects Pair before the body runs.
import "core:fmt"
import "base:intrinsics"

max :: proc(a, b: $T) -> T where intrinsics.type_is_ordered(T) {
	return a if a > b else b
}

Pair :: struct {
	a, b: int,
}

main :: proc() {
	fmt.println(max(Pair{1, 2}, Pair{3, 4}))
}
