// Lesson 01 "break it" #1: the `package main` declaration is removed.
// Every .odin file must declare its package before anything else; without it the build fails.
import "core:fmt"

main :: proc() {
	fmt.println("Hellope!")
}
