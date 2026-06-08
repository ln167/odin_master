package main

import "core:fmt"

Binop :: proc(a, b: int) -> int

add :: proc(a, b: int) -> int {return a + b}
sub :: proc(a, b: int) -> int {return a - b}
mul :: proc(a, b: int) -> int {return a * b}

apply :: proc(op: Binop, x, y: int) -> int {
	return op(x, y)
}

Op :: enum {
	Add,
	Sub,
	Mul,
}

main :: proc() {
	// 1. procs in variables.
	op: Binop = add
	fmt.printfln("add(3,4) = %d", op(3, 4))
	op = mul
	fmt.printfln("mul(3,4) = %d", op(3, 4))

	// 2. a higher-order proc.
	fmt.printfln("apply(sub, 10, 4) = %d", apply(sub, 10, 4))

	// 3. an inline proc literal.
	fmt.printfln("inline div(20,5) = %d", apply(proc(a, b: int) -> int {return a / b}, 20, 5))

	// 4. a proc literal stored in a local.
	square := proc(x: int) -> int {return x * x}
	fmt.printfln("square(7) = %d", square(7))

	// 5. a dispatch table indexed by an enum.
	table := [Op]Binop{.Add = add, .Sub = sub, .Mul = mul}
	for kind in Op {
		fmt.printfln("%v(8,3) = %d", kind, table[kind](8, 3))
	}
}
