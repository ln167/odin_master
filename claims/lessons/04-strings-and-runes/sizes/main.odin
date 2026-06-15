package main

// Lesson 04 HTML probe (L1 sizes panel): the fixed widths of the string types.
// A `string` is a 16-byte header {data, len}; a `rune` is a 32-bit code point
// (4 bytes); one byte is a u8 (1 byte); a `cstring` is just a pointer (8 bytes).
import "core:fmt"

main :: proc() {
	fmt.println("size_of(string)  =", size_of(string))
	fmt.println("size_of(rune)    =", size_of(rune))
	fmt.println("size_of(u8)      =", size_of(u8))
	fmt.println("size_of(cstring) =", size_of(cstring))
}
