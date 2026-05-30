package main

import "core:fmt"

main :: proc() {
	// 1. SCOPE DEMO - see WHEN defers fire.
	//
	//    Reproduce the docs' first example:
	//        x := 123
	//        defer fmt.println("outer x =", x)
	//        {
	//            defer x = 4
	//            x = 2
	//        }
	//        fmt.println("after inner block, x =", x)
	//        x = 234
	//
	//    Predict the output before you run it. Two prints:
	//    one after the inner block ends, one when main exits.
	//    The outer defer reads x's value at firing time, not at
	//    declaration time.


	// 2. LIFO ORDER - prove that deferred statements run in
	//    reverse order of declaration.
	//
	//    Write three defers in a row, each printing "defer N" for
	//    N = 1, 2, 3. Below them, write a normal print "after defers"
	//    so you can see which side of the defers is the normal flow.
	//
	//    Expected order at the end of main: "after defers", "defer 3",
	//    "defer 2", "defer 1".
	//
	//    Reason about why this matches how teardown naturally nests:
	//    if defer 1 was the FIRST thing you grabbed (most "outer"),
	//    it makes sense it's the LAST thing released.


	// 3. EARLY RETURN GUARANTEE - prove defer fires on early returns.
	//
	//    Call timed_load(0) (declared at package scope below) for the
	//    happy path. The "--- timed_load end ---" line is from a
	//    defer at the top of the proc, but it prints AFTER the body's
	//    "normal success path" message because the defer fires when
	//    the proc exits.
	//
	//    After you've matched expected-output.txt with the single
	//    happy-path call, try also calling timed_load(1) and
	//    timed_load(2) to see the early-return paths ALSO fire the
	//    same defer. (Output will no longer match the file - that's
	//    the point.)


	// 4. LOOP-SCOPED DEFER - the Go contrast in practice.
	//
	//    Call iteration_demo() (declared at package scope). It loops
	//    five times and defers a print inside the loop body. Notice
	//    the prints interleave with the iteration counter - the defer
	//    fires AT THE END OF EACH ITERATION, not after the whole loop
	//    finishes. This is the Odin-vs-Go difference made concrete.


	// 5. (Optional brain-tickler) DEFER THAT CAPTURES THE EXPRESSION,
	//    NOT THE VALUE.
	//
	//    Write:
	//        y := 10
	//        defer fmt.println("y at defer-fire time =", y)
	//        y = 99
	//
	//    The defer prints 99, not 10. The deferred statement is a
	//    recipe to run later; it reads y when it fires, not when
	//    it was declared.

	// Run with: odin run main.odin -file
	// Compare to expected-output.txt.
}


// Used by task 3. Demonstrates: the timing report sits at the top,
// next to the start_time, and fires on every exit path - both the
// early returns and the normal one.
timed_load :: proc(simulate_failure: int) -> bool {
	fmt.println("--- timed_load start ---")
	defer fmt.println("--- timed_load end ---")

	if simulate_failure == 1 {
		fmt.println("failing early (path 1)")
		return false
	}
	if simulate_failure == 2 {
		fmt.println("failing later (path 2)")
		return false
	}
	fmt.println("normal success path")
	return true
}


// Used by task 4. The defer is INSIDE the loop body, so it fires at
// the end of each iteration - not after the loop finishes.
iteration_demo :: proc() {
	fmt.println("--- iteration_demo start ---")
	for i in 0 ..< 3 {
		fmt.printfln("  iter %d: top of body", i)
		defer fmt.printfln("  iter %d: deferred print", i)
		fmt.printfln("  iter %d: middle of body", i)
	}
	fmt.println("--- iteration_demo end ---")
}
