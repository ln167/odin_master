package main

// Lesson 07d HTML probe (Level 2): heap data outlives the proc that made it.
// make_counter() allocates a Counter on the heap, sets it, and returns the ^T.
// The proc's frame is gone, but the Counter is NOT in that frame -- it's on the
// heap -- so the returned pointer is still valid and still writable. We mutate
// through it AFTER the maker returned, proving the data survived the return.
// (Contrast: a by-value return hands back a COPY; here we keep a live handle to
// storage that persists until WE free it.)
import "core:fmt"

Counter :: struct {
	n: int,
}

make_counter :: proc() -> ^Counter {
	c := new(Counter) // heap: survives this frame popping
	c.n = 1
	return c // caller now owns it
}

main :: proc() {
	c := make_counter() // maker has already returned
	fmt.println("survived the return, n =", c.n) // still readable -> 1
	c.n += 1 // and still WRITABLE through the pointer
	fmt.println("mutated after return, n =", c.n) // 2
	free(c) // we own it, so we hand it back
}
