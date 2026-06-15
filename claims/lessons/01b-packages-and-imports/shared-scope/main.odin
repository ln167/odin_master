package main

import "core:fmt"

// `main.odin` and `greeting.odin` sit in ONE folder and both declare
// `package main`, so they share one flat scope. This file names
// `BANNER` and `greet` even though both live in the OTHER file, with
// NO import statement between the two files.
main :: proc() {
	fmt.println(BANNER)
	fmt.println(greet("packages"))
}
