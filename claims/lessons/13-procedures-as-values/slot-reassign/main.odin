package main

// Lesson 13 HTML probe (Level 1): one variable, the slot, holds a proc value.
// Reassign the slot and the SAME call expression `op(6, 2)` runs a different
// proc. The call syntax never changes; only the address in the slot does.
import "core:fmt"

Binop :: proc(a, b: int) -> int

add :: proc(a, b: int) -> int {return a + b}
sub :: proc(a, b: int) -> int {return a - b}
mul :: proc(a, b: int) -> int {return a * b}

main :: proc() {
	op: Binop = add
	fmt.printfln("op = add -> op(6, 2) = %d", op(6, 2))
	op = sub
	fmt.printfln("op = sub -> op(6, 2) = %d", op(6, 2))
	op = mul
	fmt.printfln("op = mul -> op(6, 2) = %d", op(6, 2))
}
