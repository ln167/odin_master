package main

// Lesson 07b low-level note: `return` inside a deferred block is a compile error.
import "core:fmt"

main :: proc() {
	defer {
		return
	}
	fmt.println("hi")
}
