package main

// Lesson 02 "break it" #2: a %d verb fed a string. Odin's fmt is checked at
// RUNTIME, not compile time -- it does not crash and does not fail to build;
// it prints a marker showing the verb/arg mismatch. This is an output claim.
import "core:fmt"

main :: proc() {
	fmt.printf("%d\n", "hello")
}
