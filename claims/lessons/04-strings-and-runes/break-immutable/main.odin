package main

// Lesson 04 "break it": a string is a read-only view -- you cannot assign through
// an index. The build is rejected at compile time, not at run time.
import "core:fmt"

main :: proc() {
	s := "héllo"
	s[0] = 'H'
	fmt.println(s)
}
