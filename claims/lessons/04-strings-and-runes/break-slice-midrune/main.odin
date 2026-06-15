package main

// Lesson 04 "break it": slicing cuts BYTES, so a byte-range can land in the
// middle of a multi-byte rune. "café" is 5 bytes; é is bytes 3..4 (c3 a9).
// Slicing [0:4] keeps only the first half of é -- a dangling lead byte (0xc3).
// That orphaned half is not a valid rune; decoding it yields U+FFFD, the
// replacement character. (We print the orphan byte as hex so this stays valid
// UTF-8 on stdout; the point is that the byte split is silent and lossy.)
import "core:fmt"
import "core:unicode/utf8"

main :: proc() {
	s := "café"
	cut := s[0:4]
	fmt.println("len(cut) =", len(cut))
	fmt.printf("last byte of cut = 0x%02x (a lead byte with no continuation)\n", cut[3])
	r, _ := utf8.decode_rune(cut[3:])
	fmt.printf("decode of the orphan: U+%04X  valid=%v\n", r, r != utf8.RUNE_ERROR)
}
