package main

// Lesson 13 HTML probe (Level 2): a dispatch table. An enumerated array maps
// each key to a proc value. `table[kind]` looks up the proc; the `(8, 3)`
// after it calls the looked-up proc. Adding a behavior = adding a table entry.
import "core:fmt"

Binop :: proc(a, b: int) -> int

add :: proc(a, b: int) -> int {return a + b}
sub :: proc(a, b: int) -> int {return a - b}
mul :: proc(a, b: int) -> int {return a * b}

Op :: enum {
	Add,
	Sub,
	Mul,
}

main :: proc() {
	table := [Op]Binop{.Add = add, .Sub = sub, .Mul = mul}
	for kind in Op {
		fmt.printfln("table[.%v](8, 3) = %d", kind, table[kind](8, 3))
	}
}
