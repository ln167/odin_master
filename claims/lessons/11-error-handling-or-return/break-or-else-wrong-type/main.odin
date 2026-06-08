package main

// Lesson 11 "break it" #4: or_else with a default of the wrong type. The default
// must be assignment-compatible with the value slot (f64), not a string.
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
	n := divide(10, 0) or_else "nope"
	fmt.println(n)
}
