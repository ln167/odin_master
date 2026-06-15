package main

// Lesson 06c HTML L2: named arguments at the call site. You may name parameters
// when calling; named args may be given in any order, and combine with defaults
// so you can set a later parameter while leaving earlier ones at their default.
import "core:fmt"

spawn :: proc(x: int = 0, y: int = 0, hp: int = 100) -> (int, int, int) {
	return x, y, hp
}

main :: proc() {
	a, b, c := spawn(y = 5, x = 3)   // named + reordered; hp stays default
	fmt.println("spawn(y=5, x=3):", a, b, c)

	d, e, f := spawn(hp = 50)        // skip x and y, set only hp
	fmt.println("spawn(hp=50):", d, e, f)
}
