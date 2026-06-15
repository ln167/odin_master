package main

import "core:fmt"

// `println` writes its argument followed by a newline.
// `print` writes the same text with no trailing newline.
// This shows what the "ln" in println does.
main :: proc() {
	fmt.println("Hellope!")
	fmt.print("Hellope!")
	fmt.print(" again")
}
