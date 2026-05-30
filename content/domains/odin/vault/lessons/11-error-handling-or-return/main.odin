package main

import "core:fmt"
import "core:math"


// Define an error enum. Convention: the zero/first value means
// "no error", and downstream code reads `err != .None` to branch.
// Put this at package scope so every proc in the file can use it.

Math_Error :: enum {
	None,
	Divide_By_Zero,
	Negative_Sqrt,
}


// 1. WRITE THE FAILING PROC.
//
//    Define `divide :: proc(a, b: f64) -> (f64, Math_Error)` above
//    `main`. The body:
//
//        - If `b == 0`, return `0, .Divide_By_Zero`.
//        - Otherwise, return `a / b, .None`.
//
//    Notice the return type is a parenthesized tuple `(f64, Math_Error)`.
//    The error is positional and conventionally LAST, because the
//    `or_return` operator keys off the trailing return value.

// TODO: divide here


// 2. WRITE A SECOND FAILING PROC for the chaining exercise.
//
//    Define `safe_sqrt :: proc(x: f64) -> (f64, Math_Error)`:
//
//        - If `x < 0`, return `0, .Negative_Sqrt`.
//        - Otherwise, return `math.sqrt(x), .None`.
//
//    Same shape as `divide`, different failure mode. Putting both
//    failure modes in the same enum is what lets a single error
//    return type carry information from two different operations
//    when we chain them in task 5.

// TODO: safe_sqrt here


// 5. WRITE THE CHAINING PROC.
//
//    Define `safe_chain :: proc(a, b: f64) -> (result: f64, err: Math_Error)`.
//
//    The returns MUST be named (`result:` and `err:`). `or_return`
//    expands to a bare `return` that uses the named slots, and a
//    bare `return` only compiles when the slots have names. If you
//    write `-> (f64, Math_Error)` the compiler will refuse the
//    `or_return` calls below.
//
//    Body:
//
//        quotient := divide(a, b) or_return
//        root     := safe_sqrt(quotient) or_return
//        return root, .None
//
//    Trace what happens for the inputs we'll send in:
//
//        safe_chain(16, 4)  -> divide gives 4, sqrt gives 2,
//                              returns (2, .None)
//        safe_chain(10, 0)  -> divide fails; or_return bails;
//                              returns (0, .Divide_By_Zero)
//        safe_chain(-4, 1)  -> divide gives -4; safe_sqrt fails;
//                              returns (0, .Negative_Sqrt)

// TODO: safe_chain here


main :: proc() {
	// 3. CALL DIVIDE THE EXPLICIT WAY.
	//
	//    This is the form most C programmers would recognise. Call
	//    `divide(10, 2)` and bind both returns with `:=`. Branch on
	//    `err != .None`. On success print:
	//
	//        explicit ok: 5
	//
	//    On failure print:
	//
	//        explicit err: <err>
	//
	//    Wired below as a syntax demo so you see one fully-typed
	//    example. Type tasks 4-6 yourself.

	r1, err1 := divide(10, 2)
	if err1 != .None {
		fmt.println("explicit err:", err1)
	} else {
		fmt.println("explicit ok:", r1)
	}


	// 4. CALL DIVIDE WITH or_else.
	//
	//    `or_else` substitutes a default value when the call fails. It
	//    does NOT propagate the error; it locally swallows the failure
	//    and gives you back a single value. Useful when "no answer"
	//    has a sensible default in this context.
	//
	//    Do two calls and print each:
	//
	//        safe1 := divide(10, 0) or_else 0
	//        fmt.println("or_else result:", safe1)   // prints 0 (failed, default used)
	//
	//        safe2 := divide(20, 4) or_else 0
	//        fmt.println("or_else result:", safe2)   // prints 5 (success, default ignored)
	//
	//    Notice you only get one value back from the whole expression;
	//    the error tail has been consumed by the operator.


	// 5. CALL SAFE_CHAIN THREE TIMES.
	//
	//    Call `safe_chain` three times and print each result with the
	//    explicit two-return form so you can see both the value and
	//    the error side by side:
	//
	//        chain(16, 4) -> 2 err: None
	//        chain(10, 0) -> 0 err: Divide_By_Zero
	//        chain(-4, 1) -> 0 err: Negative_Sqrt
	//
	//    Pattern for each:
	//        a, ea := safe_chain(16, 4)
	//        fmt.println("chain(16, 4) ->", a, "err:", ea)
	//
	//    Then the same for `(10, 0)` and `(-4, 1)`. This is the
	//    payoff: a single error enum carrying information from
	//    two different failure sites, propagated upward by
	//    `or_return` without any explicit `if` checks.


	// 6. IGNORE THE ERROR ON PURPOSE.
	//
	//    Sometimes you really do want to throw the error away. Odin
	//    makes you say so out loud with `_`. Write:
	//
	//        r2, _ := divide(99, 3)
	//        fmt.println("ignored err, r2:", r2)
	//
	//    This is the dangerous form. The caller has no idea the proc
	//    could have failed. Reserve it for cases where you've already
	//    proven the inputs are safe, or for prototype code you intend
	//    to revisit. In review it should always raise an eyebrow.


	// Run with: odin run main.odin -file
	// Compare your output to expected-output.txt.
}
