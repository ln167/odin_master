package main

// Lesson 04 HTML probe (L2 misconception callout): indexing a string gives the
// i-th BYTE, typed u8 -- not the i-th character. For "café" the é is two bytes
// (c3 a9 = 195, 169); indexing lands on each byte separately, and neither half
// is a usable character on its own. typeid confirms s[i] is a u8.
import "core:fmt"

main :: proc() {
	s := "café"
	fmt.println("len(s) =", len(s))
	fmt.printf("type of s[0] is u8: %v\n", typeid_of(type_of(s[0])) == u8)
	for i in 0 ..< len(s) {
		fmt.printf("s[%d] = %d\n", i, s[i])
	}
}
