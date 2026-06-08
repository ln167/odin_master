package main

// Lesson 05 "break it" #1a: a COMPILE-TIME-constant out-of-bounds index.
// Because 10 is a literal constant, the compiler proves it is outside 0..<4
// and rejects it at COMPILE time -- no runtime check is even emitted.
import "core:fmt"

main :: proc() {
	a: [4]int = {10, 20, 30, 40}
	fmt.println(a[10])
}
