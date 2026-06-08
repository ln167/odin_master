package main

// Lesson 04 "break it" #1: index the string -> you get raw BYTES, not runes.
// The two-byte é (U+00E9, UTF-8 C3 A9) shows up as 195 then 169 -- neither a
// valid rune on its own. This is the byte-vs-codepoint point, as an output claim.
import "core:fmt"

main :: proc() {
	s := "héllo"
	for i in 0 ..< len(s) {
		fmt.println(s[i])
	}
}
