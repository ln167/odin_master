package main

import "core:fmt"
import "core:strings"
import "core:unicode/utf8"

main :: proc() {
	s := "héllo"

	fmt.println("byte len:", len(s)) // bytes, not runes
	fmt.println("rune count:", utf8.rune_count(s)) // actual codepoints

	// Iterate codepoints with `for r in s` -- `for r, i in s` gives byte index.
	for r, i in s {
		fmt.printf("  byte %d -> rune %r (U+%04X)\n", i, r, r)
	}

	// Build a new string. strings.concatenate allocates via context.allocator.
	greeting := strings.concatenate({"hi, ", s, "!"})
	defer delete(greeting) // free what we allocated
	fmt.println(greeting)
}
