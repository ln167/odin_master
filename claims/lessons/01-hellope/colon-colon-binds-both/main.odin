package main

import "core:fmt"

// The SAME `::` binds a name to a compile-time value, whether that value
// is a number constant or a procedure. `main` is just `::` applied to a proc.
GREETING :: "Hellope!"          // name :: a string constant
TIMES    :: 3                   // name :: an int constant

main :: proc() {                // name :: a proc value
	for _ in 0 ..< TIMES {
		fmt.println(GREETING)
	}
}
