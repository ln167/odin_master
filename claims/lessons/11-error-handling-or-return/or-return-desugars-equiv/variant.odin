package main

import "core:fmt"
import "core:math"

// PROVES: `or_return` is exactly the hand-written `if err != .None { return }`.
// variant_A writes the chain with the operator. variant_B writes the SAME chain
// with the branch the compiler expands it into. Both run the chain over the same
// three inputs and fold the (value, error) outcomes into one identical string.
// equiv passing => the operator and the longhand are behavior-identical.

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

// Sugar: two `or_return` calls, then a normal return.
chain_sugar :: proc(a, b: f64) -> (result: f64, err: Math_Error) {
	quotient := divide(a, b) or_return
	root := safe_sqrt(quotient) or_return
	return root, .None
}

// Desugared: exactly what the compiler expands the two `or_return`s into —
// a temp, an `if err != .None` test, and a bare `return` using the named slots.
chain_desugared :: proc(a, b: f64) -> (result: f64, err: Math_Error) {
	quotient: f64
	{
		tmp_v, tmp_e := divide(a, b)
		if tmp_e != .None {
			err = tmp_e
			return
		}
		quotient = tmp_v
	}
	root: f64
	{
		tmp_v, tmp_e := safe_sqrt(quotient)
		if tmp_e != .None {
			err = tmp_e
			return
		}
		root = tmp_v
	}
	return root, .None
}

INPUTS := [3][2]f64{{16, 4}, {10, 0}, {-4, 1}}

variant_A :: proc() -> string {
	out: string
	for in_ in INPUTS {
		v, e := chain_sugar(in_[0], in_[1])
		out = fmt.aprintf("%s%v/%v ", out, v, e)
	}
	return out
}

variant_B :: proc() -> string {
	out: string
	for in_ in INPUTS {
		v, e := chain_desugared(in_[0], in_[1])
		out = fmt.aprintf("%s%v/%v ", out, v, e)
	}
	return out
}
