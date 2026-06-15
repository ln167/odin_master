package main

// Lesson 07b L1: defers fire in reverse order of registration (LIFO).
// Register A, B, C top-to-bottom; at scope exit they fire C, B, A.
// "after defers" prints first because it is normal flow that runs
// before main's scope exits.
import "core:fmt"

main :: proc() {
	defer fmt.println("defer A")
	defer fmt.println("defer B")
	defer fmt.println("defer C")
	fmt.println("after defers")
}
