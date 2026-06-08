package main

// Lesson 16 "break it" #2: a runtime value in a `when` condition. `when` requires
// a constant known at compile time; a runtime variable is rejected (use `if`).
main :: proc() {
	some_local_bool := true
	when some_local_bool {
		_ = 1
	}
}
