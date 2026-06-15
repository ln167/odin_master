package main

// Lesson 03 HTML L1: a proc returning THREE values, caller unpacks all three
// into three bound names in one `x, y, z := f()` binding.
import "core:fmt"

minmax :: proc(a, b, c: int) -> (lo: int, hi: int, span: int) {
	lo = a
	hi = a
	if b < lo do lo = b
	if c < lo do lo = c
	if b > hi do hi = b
	if c > hi do hi = c
	span = hi - lo
	return
}

main :: proc() {
	lo, hi, span := minmax(8, 3, 11)
	fmt.printf("lo=%d hi=%d span=%d\n", lo, hi, span)
}
