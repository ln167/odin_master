package main

// Lesson 07b L3 — capture semantics. A deferred statement is a recipe to RUN
// at scope exit, not a snapshot taken when it is registered. It reads the
// CURRENT value of every variable it names at the moment it fires.
//
// y is 10 when "defer fmt.println(y)" is registered, then reassigned twice.
// The deferred print fires at the end of main and reads y's value THEN: 99.
// Likewise n is registered at 1, bumped to 2 then 3; the deferred print
// reads 3. Proof that nothing is frozen at registration time.
import "core:fmt"

main :: proc() {
	y := 10
	defer fmt.println("y at fire time =", y)

	n := 1
	defer fmt.println("n at fire time =", n)

	y = 50
	n = 2
	fmt.println("body sees y =", y, "n =", n)
	y = 99
	n = 3
}
