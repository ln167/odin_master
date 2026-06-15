package main

import "core:fmt"
import "core:mem"

main :: proc() {
	// The canonical array, dumped as raw bytes so the page's byte strip is real.
	a: [4]int = {10, 20, 30, 40}
	bytes := mem.any_to_bytes(a)
	fmt.printf("size_of([4]int) = %d\n", size_of(a))
	for b in bytes do fmt.printf("%02x ", b)
	fmt.println()
}
