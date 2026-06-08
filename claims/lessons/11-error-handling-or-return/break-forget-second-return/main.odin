package main

// Lesson 11 "break it" #2: bind only one name to a two-return proc. Odin won't
// silently drop the trailing error value; you must consume both or discard with _.
import "core:fmt"

Math_Error :: enum {
	None,
	Divide_By_Zero,
}

divide :: proc(a, b: f64) -> (f64, Math_Error) {
	if b == 0 {
		return 0, .Divide_By_Zero
	}
	return a / b, .None
}

main :: proc() {
	r := divide(10, 2)
	fmt.println(r)
}
