package main

// Lesson 07d HTML probe (Level 3): the footgun the escape check MISSES.
// The compiler rejects the DIRECT shape `return &local`, but it only guards
// that one shape. Let a local's address escape INDIRECTLY -- written through an
// out-pointer here -- and it compiles with no error and no warning. `p` ends up
// pointing into a frame that has already popped: a dangling pointer the language
// did nothing to stop. (This is why lifetimes are YOUR job: the guard is
// targeted, not a general lifetime system.) We only assert that it COMPILES --
// reading through `p` afterward is genuine undefined behavior, so we don't.
import "core:fmt"

escape :: proc(out: ^^int) {
	local := 7 // lives in escape()'s frame
	out^ = &local // its address escapes upward -- the frame is about to pop
}

main :: proc() {
	p: ^int
	escape(&p) // p now dangles into a reclaimed frame; the build allowed it
	_ = p
	fmt.println("compiled with no error: the indirect escape slipped past")
}
