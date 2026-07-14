package main

import "core:fmt"

// Compile time alias
// testing some changes
Vec3 :: [3]f32

main :: proc() {
	// 1. Declare a fixed array of four ints named `a`, initialized
	//    to the values 10, 20, 30, 40. Use an explicit type annotation
	//    `[4]int` on the leftso you see the syntax once; later you'll
	//    let Odin infer it.
	my_fixed_array: [4]int
	my_fixed_array = {1, 32, 12, 5}


	fmt.println(my_fixed_array)
	fmt.println("hahahahaha")




	// 2. Print three things on one line: the array's length (use the
	//    builtin `len`), its first element, and its last element. Use
	//    `len(a) - 1` for "last" rather than hardcoding 3, so
	//    changing the array size wouldn't break the print.
	//
	//    Use `fmt.println` and pass the labels as separate arguments:
	//    `fmt.println("len:", len(a), "first:", a[0], "last:", a[len(a)-1])`
	//    Note that `fmt.println` adds spaces between arguments for you.

	// 3. Iterate over the array printing each index and value on its
	//    own line, indented two spaces, formatted like `  a[0] = 10`.
	//
	//    Use `for v, i in a { ... }`. Notice that VALUE comes first
	//    and INDEX comes second. That's reversed from Go and Python.
	//    The rationale: you usually want the value, so it's named
	//    first. Use `fmt.printf` here because you want explicit
	//    formatting.

	// 4. Declare two Vec3 values `p` and `q`, with `p = {1, 2, 3}` and
	//    `q = {10, 20, 30}`. Use `:=` so Odin infers the type from the
	//    literal: `p := Vec3{1, 2, 3}`. Add them with `+` (this is the
	//    Odin-unique part: numeric fixed arrays support element-wise
	//    arithmetic with the regular operators, no library, no loop).
	//    Print `"p + q ="` and the result.

	// 5. Take a slice of the middle two elements of `a` using
	//    `a[1:3]`. The result is a `[]int` slice, a view into
	//    `a`'s storage. Print `"a[1:3] ="`, the slice, and
	//    `"len:"` plus its length.

	// Run with: odin run main.odin -file
	// Compare your output to expected-output.txt.


}

