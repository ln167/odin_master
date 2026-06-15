package main

// Lesson 02 HTML probe: the explicit conversion u8(x) compiles, and a value
// past 255 WRAPS into the byte -- u8(300) is 44 -- because the narrowing is
// something you wrote, not something the machine did silently.
import "core:fmt"

main :: proc() {
	x: int = 300
	y := u8(x)
	fmt.println("u8(300) =", y)
}
