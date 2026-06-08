package main

// Lesson 06 "break it" #1 (runtime variant): a non-constant upper bound the
// compiler cannot prove. Builds, then the inserted bounds check panics at runtime.
import "core:fmt"
import "core:os"

main :: proc() {
	prices: [6]int = {100, 200, 300, 400, 500, 600}
	hi := len(os.args) + 98 // >= 99 at runtime, unknowable at compile time
	bad := prices[2:hi]
	fmt.println(bad)
}
