package main

// Lesson 14 "break it" #4: push an int onto a Stack(string). After specialization
// T is string for this stack, so an int value doesn't match.
Stack :: struct($T: typeid) {
	data: [dynamic]T,
}

push :: proc(s: ^Stack($T), value: T) {
	append(&s.data, value)
}

main :: proc() {
	s: Stack(string)
	defer delete(s.data)
	push(&s, 42)
}
