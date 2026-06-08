package main

// Lesson 05b "break it" #1: an out-of-range int -> enum cast.
// The lesson claims Element(99) "compiles AND runs" unchecked. Probe whether a
// compile-time-constant 99 is actually caught at compile time (like a constant
// array index is) or really slips through.
import "core:fmt"

Element :: enum {
	Fire,
	Ice,
	Lightning,
	Physical,
}

main :: proc() {
	bad := Element(99)
	fmt.println(bad)
}
