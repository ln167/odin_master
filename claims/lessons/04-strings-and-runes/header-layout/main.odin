package main

// Lesson 04 HTML probe (L1 header strip): a `string` value is a 16-byte header.
// Bytes 0..7 are the data pointer (where the UTF-8 bytes live -- nondeterministic,
// differs every run). Bytes 8..15 are the length, as a little-endian int. For
// "Aé猫🐈" the length is 10 bytes (0a 00 00 00 00 00 00 00). The header does NOT
// contain the text -- only where it is and how many bytes it is.
import "core:fmt"
import "core:mem"

main :: proc() {
	s := "Aé猫🐈"
	hdr := mem.any_to_bytes(s)
	fmt.print("data ptr (bytes 0-7): ")
	for i in 0 ..< 8 do fmt.printf("%02x ", hdr[i])
	fmt.println()
	fmt.print("len field (bytes 8-15): ")
	for i in 8 ..< 16 do fmt.printf("%02x ", hdr[i])
	fmt.println()
	fmt.println("len(s) =", len(s))
}
