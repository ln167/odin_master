package main

// Lesson 04 HTML probe (L4 cstring): a `cstring` is the NUL-terminated variant
// used at foreign-library boundaries. It is 8 bytes -- just a pointer, with no
// length stored alongside (half the size of a 16-byte string). `len` on a
// cstring has to scan forward to the terminating NUL byte to find the count;
// a real `string` already carries that count in its header.
import "core:fmt"
import "core:strings"

main :: proc() {
	c: cstring = "héllo"
	fmt.println("size_of(cstring) =", size_of(cstring))
	fmt.println("size_of(string)  =", size_of(string))
	fmt.println("len(c) =", len(c))
	s := strings.clone_from_cstring(c)
	defer delete(s)
	fmt.println("as string, len =", len(s))
}
