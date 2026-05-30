package main

import "core:fmt"

// A named type alias for "any proc taking two ints and returning one int".
// The right-hand side of `::` is just the signature, no wrapper type.
// Defining this once lets the rest of the file say `Binop` instead of
// retyping the signature, and makes "all the math ops have the same shape"
// visible at a glance.
Binop :: proc(a, b: int) -> int


// Three concrete procs that all match Binop. Because the signatures line up
// exactly (two ints in, one int out, default calling convention), any of
// these can be assigned to a variable of type Binop, passed as a Binop
// argument, or stored in a slot of type Binop.
add :: proc(a, b: int) -> int { return a + b }
sub :: proc(a, b: int) -> int { return a - b }
mul :: proc(a, b: int) -> int { return a * b }


// A higher-order proc: a proc that takes another proc as a parameter.
// `op` is just a regular parameter whose type happens to be Binop. Inside
// the body you call it the same way you'd call any other proc: `op(x, y)`.
// This is the basic shape of every "callback" API.
apply :: proc(op: Binop, x, y: int) -> int {
	return op(x, y)
}


// The keys for the dispatch table built in task 5. Declared at package
// scope so it's reusable and so the [Op]Binop literal can find it.
Op :: enum { Add, Sub, Mul }


main :: proc() {
	// 1. PROCS IN VARIABLES.
	//
	//    Declare `op` with explicit type `Binop` and assign it `add`. Then
	//    call `op(3, 4)` and print the result. Reassign `op = mul`, call
	//    `op(3, 4)` again, print. The point: the same variable, two
	//    different procs, the call syntax is the same as calling a named
	//    proc. Expected output:
	//        add(3,4) = 7
	//        mul(3,4) = 12


	// 2. A HIGHER-ORDER PROC.
	//
	//    Call `apply(sub, 10, 4)` and print the result, formatted as
	//        apply(sub, 10, 4) = 6
	//    You're passing `sub` itself (the proc value), not the result of
	//    calling sub. Note the absence of parentheses after `sub`.


	// 3. AN INLINE PROC LITERAL.
	//
	//    Call `apply` again, but this time pass a proc literal directly as
	//    the first argument, without giving it a name. The literal is just
	//    a proc declaration used as an expression. Use it to compute
	//    integer division of 20 by 5 and print:
	//        inline div(20,5) = 4
	//    Syntax reminder: `proc(a, b: int) -> int { return a / b }` is the
	//    whole expression; pass it where you'd pass `add`.


	// 4. A PROC LITERAL STORED IN A LOCAL.
	//
	//    Declare a local `square := proc(x: int) -> int { return x * x }`,
	//    then call it and print:
	//        square(7) = 49
	//    The type of `square` is inferred from the literal as
	//    `proc(int) -> int`. This is the closest Odin gets to a C# lambda,
	//    but remember: nothing from `main`'s scope is captured. The proc
	//    body can only see its own parameters and package-scope names.


	// 5. A DISPATCH TABLE INDEXED BY AN ENUM.
	//
	//    Declare an enumerated array `table: [Op]Binop` with one entry
	//    per Op value, mapping `.Add -> add`, `.Sub -> sub`, `.Mul -> mul`.
	//    Use a composite literal:
	//        table := [Op]Binop{ .Add = add, .Sub = sub, .Mul = mul }
	//
	//    Then loop with `for kind in Op { ... }` and for each kind print
	//    the operation name and its result on (8, 3) via
	//    `table[kind](8, 3)`. The compound expression `table[kind]` looks
	//    up the proc; the `(8, 3)` calls it. Use `fmt.printfln` with
	//    `%v` for the enum and `%d` for the int:
	//        Add(8,3) = 11
	//        Sub(8,3) = 5
	//        Mul(8,3) = 24
	//
	//    This is "build a vtable by hand". One byte's worth of enum picks
	//    one of three procs; the call is one indirect branch. No
	//    interfaces, no class hierarchy, no virtual dispatch machinery.

	// Run with: odin run main.odin -file
	// Compare your output to expected-output.txt.
}
