package main

// Verifies the happy-path vs error-path trace shown on the lesson page:
// safe_chain runs divide() then safe_sqrt(); whichever fails first is where
// or_return bails, and that failure mode is what the caller sees.
import "core:fmt"
import "core:math"

Math_Error :: enum {
	None,
	Divide_By_Zero,
	Negative_Sqrt,
}

divide :: proc(a, b: f64) -> (f64, Math_Error) {
	if b == 0 {
		return 0, .Divide_By_Zero
	}
	return a / b, .None
}

safe_sqrt :: proc(x: f64) -> (f64, Math_Error) {
	if x < 0 {
		return 0, .Negative_Sqrt
	}
	return math.sqrt(x), .None
}

safe_chain :: proc(a, b: f64) -> (result: f64, err: Math_Error) {
	quotient := divide(a, b) or_return
	root := safe_sqrt(quotient) or_return
	return root, .None
}

main :: proc() {
	r, e := safe_chain(16, 4)
	fmt.println("chain(16, 4) ->", r, "err:", e)
	r, e = safe_chain(10, 0)
	fmt.println("chain(10, 0) ->", r, "err:", e)
	r, e = safe_chain(-4, 1)
	fmt.println("chain(-4, 1) ->", r, "err:", e)
}
