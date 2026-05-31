package main

// PROOF 1: a procedure parameter is an immutable binding.
// This should FAIL to compile with the exact error you saw.

increment :: proc(some_int: int) {
	some_int += 1   // illegal: can't assign to a parameter
}

main :: proc() {
	increment(5)
}
