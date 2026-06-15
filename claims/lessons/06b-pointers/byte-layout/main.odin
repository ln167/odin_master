package main

// Lesson 06b HTML probe (Level 1 byte strip): the real little-endian bytes of
// an int (x = 42) and a pointer (p = &x). x's 8 bytes are the value; p's 8 bytes
// ARE x's address (so p's bytes equal &x reinterpreted as a u64, little-endian).
// The address is nondeterministic; the page renders it as one representative
// run and labels it "differs every run". The int's bytes (2a 00 ...) are stable.
import "core:fmt"
import "core:mem"

main :: proc() {
	x: int = 42
	p := &x
	xb := mem.any_to_bytes(x)
	fmt.print("x bytes: ")
	for b in xb do fmt.printf("%02x ", b)
	fmt.println()
	addr := uintptr(p)
	pb := mem.any_to_bytes(addr)
	fmt.print("p bytes: ")
	for b in pb do fmt.printf("%02x ", b)
	fmt.println()
	fmt.println("p as number =", addr)
}
