package main

// Verifies the Level 1 toggle on the page: the explicit (result, err) form,
// both the success branch and the failure branch. The error is an ordinary
// returned value the caller reads and branches on.
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

report :: proc(a, b: f64) {
	r, err := divide(a, b)
	if err != .None {
		fmt.println("divide", a, b, "-> err:", err)
	} else {
		fmt.println("divide", a, b, "-> ok:", r)
	}
}

main :: proc() {
	report(10, 2)
	report(10, 0)
}
