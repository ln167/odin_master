package main

// Lesson 02 "types" #3: there is NO silent narrowing. An 'int' value does not
// flow into a 'u8' variable on its own -- you must write the conversion u8(x).
// The build fails until you do.
import "core:fmt"

main :: proc() {
	x: int = 300
	y: u8 = x
	fmt.println(y)
}
