package main

// Verifies the or_else trace on the page: or_else substitutes the default
// ONLY when the call failed; on success the default is ignored and the real
// value comes through. It yields a single value (the error tail is consumed).
import "core:fmt"

Math_Error :: enum {
	None,
	Divide_By_Zero,
}

divide :: proc(a, b: f64) -> (f64, Math_Error) {
	if b == 0 {
		return 0, .Divide_By_Zero
	}
	return a / b, .None
}

main :: proc() {
	failed := divide(10, 0) or_else 0
	fmt.println("divide(10, 0) or_else 0 ->", failed)
	ok := divide(20, 4) or_else 0
	fmt.println("divide(20, 4) or_else 0 ->", ok)
}
