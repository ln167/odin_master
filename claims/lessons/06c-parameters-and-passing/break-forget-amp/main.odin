package main

// Lesson 06c "break it" #4: call a ^int proc without the `&`. The call site must
// hand over an address explicitly; passing an int where ^int is wanted fails.
add_point :: proc(score: ^int) {
	score^ += 1
}

main :: proc() {
	score := 10
	add_point(score)
}
