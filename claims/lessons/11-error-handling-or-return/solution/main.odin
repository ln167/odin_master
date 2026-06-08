package main

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
	// 3. the explicit two-return form.
	r1, err1 := divide(10, 2)
	if err1 != .None {
		fmt.println("explicit err:", err1)
	} else {
		fmt.println("explicit ok:", r1)
	}

	// 4. or_else substitutes a default on failure.
	safe1 := divide(10, 0) or_else 0
	fmt.println("or_else result:", safe1)
	safe2 := divide(20, 4) or_else 0
	fmt.println("or_else result:", safe2)

	// 5. or_return chaining, propagating either failure mode.
	a, ea := safe_chain(16, 4)
	fmt.println("chain(16, 4) ->", a, "err:", ea)
	b, eb := safe_chain(10, 0)
	fmt.println("chain(10, 0) ->", b, "err:", eb)
	c, ec := safe_chain(-4, 1)
	fmt.println("chain(-4, 1) ->", c, "err:", ec)

	// 6. ignore the error on purpose, out loud with _.
	r2, _ := divide(99, 3)
	fmt.println("ignored err, r2:", r2)
}
