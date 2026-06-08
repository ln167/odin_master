package main

// Lesson 13 "break it" #1: a proc literal cannot capture a local. Odin has no
// closures, so `count += 1` inside the literal can't see main's `count`.
main :: proc() {
	count := 0
	bump := proc() {count += 1}
	bump()
	_ = count
}
