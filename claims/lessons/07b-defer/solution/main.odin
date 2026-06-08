package main

import "core:fmt"

main :: proc() {
	// 1. scope demo - when defers fire.
	x := 123
	defer fmt.println("outer x =", x)
	{
		defer x = 4
		x = 2
	}
	fmt.println("after inner block, x =", x)
	x = 234

	// 2. LIFO order.
	defer fmt.println("defer 1")
	defer fmt.println("defer 2")
	defer fmt.println("defer 3")
	fmt.println("after defers")

	// 3. early-return guarantee (happy path).
	timed_load(0)

	// 4. loop-scoped defer.
	iteration_demo()

	// 5. defer captures the expression, not the value.
	y := 10
	defer fmt.println("y at defer-fire time =", y)
	y = 99
}


// Used by task 3. The timing report sits at the top and fires on every exit.
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


// Used by task 4. The defer is INSIDE the loop body, so it fires each iteration.
iteration_demo :: proc() {
	fmt.println("--- iteration_demo start ---")
	for i in 0 ..< 3 {
		fmt.printfln("  iter %d: top of body", i)
		defer fmt.printfln("  iter %d: deferred print", i)
		fmt.printfln("  iter %d: middle of body", i)
	}
	fmt.println("--- iteration_demo end ---")
}
