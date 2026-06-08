package main

import "core:fmt"
// Lesson 01b "break it" #4: two imports bind the same name `strings`.
// core:strings -> strings, and the sibling ./strings (also `package strings`)
// -> strings. The duplicate local name is what the compiler rejects.
import "core:strings"
import "./strings"

main :: proc() {
	fmt.println("lesson 01b - packages and imports")
	fmt.printfln("contains: %v", strings.contains("hello world", "hello"))
	fmt.println(strings.greet())
}
