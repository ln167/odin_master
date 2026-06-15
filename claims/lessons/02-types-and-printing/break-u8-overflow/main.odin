package main

// Lesson 02 "types" #4: a typed constant that doesn't fit is caught at COMPILE
// time, with the exact range named. 300 does not fit in a u8 (max 255).
import "core:fmt"

main :: proc() {
	y: u8 = 300
	fmt.println(y)
}
