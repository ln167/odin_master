package main
import "core:fmt"

// PROOF 4: the two legitimate ways to mutate.

// (a) shadow to get a mutable LOCAL copy (caller untouched)
add_local :: proc(n: int) -> int {
	n := n        // var := var idiom
	n += 1
	return n
}

// (b) take a pointer to mutate the CALLER's value
add_caller :: proc(n: ^int) {
	n^ += 1       // reach through the pointer
}

main :: proc() {
	x := 10
	fmt.println("add_local returns:", add_local(x), " x still:", x) // 11, 10
	add_caller(&x)
	fmt.println("after add_caller, x:", x)                          // 11
}
