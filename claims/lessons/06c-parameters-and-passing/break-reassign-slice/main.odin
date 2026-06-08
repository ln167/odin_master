package main

// Lesson 06c "break it" #2: reassign a slice parameter's header. Even a
// pointer-bearing type's header is an immutable binding: `s = ...` is rejected
// (you may write s[0] through the pointer, but not rebind s).
zero_first :: proc(s: []int) {
	s = []int{}
}

main :: proc() {
	nums := [3]int{5, 6, 7}
	zero_first(nums[:])
}
