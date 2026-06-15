package main

// Lesson 07d "break it" #4: free the same pointer twice. The first free hands
// the bytes back to the allocator; the second hands back bytes that are no
// longer yours -- a double-free. The default allocator detects it and aborts.
import "core:fmt"

Counter :: struct {
	n: int,
}

main :: proc() {
	c := new(Counter)
	c.n = 1
	free(c) // legitimate hand-back
	fmt.println("first free ok")
	free(c) // double-free: handing back already-returned bytes
	fmt.println("if you see this, it did not abort")
}
