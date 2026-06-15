package main

// Lesson 06c HTML L2: default parameter values. A parameter can declare a
// default; omit the argument and the default is supplied at the call site.
import "core:fmt"

attack :: proc(damage: int = 10, crit: bool = false) -> int {
	return crit ? damage * 2 : damage
}

main :: proc() {
	fmt.println("attack():", attack())                      // both defaults
	fmt.println("attack(25):", attack(25))                  // override first
	fmt.println("attack(25, true):", attack(25, true))      // override both
}
