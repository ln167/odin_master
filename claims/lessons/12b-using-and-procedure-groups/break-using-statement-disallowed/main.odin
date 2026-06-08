package main

// Lesson 12b "break it" #3 (corrected): `using <enum>` as a STATEMENT is disallowed
// in current Odin -- the build is rejected before any label-collision is reached.
// (The lesson's "two enums collide on Red" never gets that far.)
import "core:fmt"

main :: proc() {
	Color :: enum {
		Red,
		Green,
	}
	using Color
	x := Color.Red
	fmt.println(x)
}
