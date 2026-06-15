package main

// Lesson 03 HTML L4: named returns double as zero-initialized locals, so a bare
// `return` ships whatever they currently hold. Here `r` is never assigned on the
// b==0 path, so it stays at its zero value (0) and the bare return sends it out.
import "core:fmt"

safe_div :: proc(a, b: int) -> (q: int, ok: bool) {
	if b == 0 {
		return // q and ok both still hold their zero values: 0, false
	}
	q = a / b
	ok = true
	return
}

main :: proc() {
	q1, ok1 := safe_div(20, 4)
	fmt.printf("20 / 4 -> q=%d ok=%v\n", q1, ok1)
	q2, ok2 := safe_div(20, 0)
	fmt.printf("20 / 0 -> q=%d ok=%v\n", q2, ok2)
}
