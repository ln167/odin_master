package main

// Lesson 02 HTML probe: a string is two words (16 bytes) -- a data pointer in
// the first 8 bytes and a length in the second 8. For "hello" the length word
// reads 5, matching len(s). The string is a length-tagged view; the length, not
// a marker byte, is what says where it ends.
import "core:fmt"
import "core:mem"

main :: proc() {
	s := "hello"
	b := mem.any_to_bytes(s)
	fmt.println("size_of(string) =", size_of(string))
	fmt.println("len(s)          =", len(s))
	fmt.printf("length word     = %d\n", b[8])
}
