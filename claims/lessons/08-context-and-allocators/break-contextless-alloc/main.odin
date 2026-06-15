package main

// Lesson 08 "break it" (Level 4): a proc marked "contextless" receives NO
// context, so context.allocator does not exist inside it. Any allocation -- here
// a bare new(int) -- is a COMPILE error, not a silent runtime surprise. The
// compiler even names the fix it expects. This is why marking a proc
// "contextless" to "save" the cost of passing context is a footgun: if anything
// it (transitively) calls allocates, the build stops.
import "core:fmt"

bad :: proc "contextless" () {
	p := new(int) // no context in scope -> error
	p^ = 1
	fmt.println(p^)
}

main :: proc() {
	bad()
}
