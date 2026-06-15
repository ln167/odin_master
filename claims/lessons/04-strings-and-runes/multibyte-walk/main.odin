package main

// Lesson 04 HTML probe (L1/L2 byte strip + rune walk): "Aé猫🐈" is 10 UTF-8 bytes
// but only 4 runes. Each rune takes a different number of bytes -- 1, 2, 3, 4 --
// so `for r, i in s` decodes one rune per step and the byte index i jumps by the
// rune's width: 0 -> 1 -> 3 -> 6. This is the exact data the page's byte strip
// and stepper render.
import "core:fmt"
import "core:unicode/utf8"

main :: proc() {
	s := "Aé猫🐈"
	fmt.println("len(s) =", len(s))
	fmt.println("rune_count =", utf8.rune_count(s))
	fmt.print("bytes: ")
	for i in 0 ..< len(s) do fmt.printf("%02x ", s[i])
	fmt.println()
	for r, i in s {
		fmt.printf("i=%d r=%r U+%04X width=%d\n", i, r, r, utf8.rune_size(r))
	}
}
