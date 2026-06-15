package main

// Lesson 07b L1 — a defer fires at the end of ITS OWN scope, which can be an
// inner brace-block, not just the function. The inner `defer x = 4` fires the
// instant the inner { } closes (before the line after it runs), so the
// "after inner block" print already sees x == 4. The outer defer fires when
// main exits and reads x's value then (234).
import "core:fmt"

main :: proc() {
	x := 123
	defer fmt.println("outer defer, main exit: x =", x)
	{
		defer x = 4
		x = 2
	}
	fmt.println("after inner block: x =", x)
	x = 234
}
