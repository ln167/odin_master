package main

// Lesson 11 "break it" #3: or_return inside a proc with UNNAMED multi-returns.
// or_return expands to a bare `return`, which needs named return slots.
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

safe_chain :: proc(a, b: f64) -> (f64, Math_Error) {
	quotient := divide(a, b) or_return
	return quotient, .None
}

main :: proc() {
	_, _ = safe_chain(16, 4)
}
