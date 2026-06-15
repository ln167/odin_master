package main

// Lesson 13 HTML probe (Level 3): the zero value of a proc type is nil. A fresh
// proc slot holds no procedure. The safe call path guards `!= nil` before
// invoking -- which is how optional callbacks are called everywhere.
import "core:fmt"

Binop :: proc(a, b: int) -> int

add :: proc(a, b: int) -> int {return a + b}

call_guarded :: proc(op: Binop, a, b: int) {
	if op != nil {
		fmt.printfln("op != nil -> op(%d, %d) = %d", a, b, op(a, b))
	} else {
		fmt.println("op == nil -> skipped (no procedure in the slot)")
	}
}

main :: proc() {
	op: Binop // declared, never assigned -> the zero value
	fmt.printfln("fresh slot is nil: %v", op == nil)
	call_guarded(op, 6, 2)
	op = add
	call_guarded(op, 6, 2)
}
