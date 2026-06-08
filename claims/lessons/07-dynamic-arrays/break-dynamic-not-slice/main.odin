package main

// Lesson 07 "break it" #2: pass a [dynamic]int where []int is expected, with no
// [:]. The conversion is explicit in Odin, so the build fails on the type
// mismatch (the fix is sum_slice(scores[:])).
sum_slice :: proc(xs: []int) -> int {
	total := 0
	for v in xs {
		total += v
	}
	return total
}

main :: proc() {
	scores: [dynamic]int
	defer delete(scores)
	append(&scores, 1, 2, 3)
	_ = sum_slice(scores)
}
