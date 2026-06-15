package main

// Lesson 13 HTML probe (Level 2): pass a proc as an argument. `apply_all` takes
// a proc value `f` and runs it over every element of a slice. The SAME loop runs
// any behavior you hand it -- swap the proc you pass, swap what the loop does.
import "core:fmt"

apply_all :: proc(f: proc(int) -> int, xs: []int) {
	for x in xs {
		fmt.printf("%d ", f(x))
	}
	fmt.println()
}

double :: proc(x: int) -> int {return x * 2}
square :: proc(x: int) -> int {return x * x}

main :: proc() {
	nums := []int{1, 2, 3, 4}
	apply_all(double, nums)
	apply_all(square, nums)
	// an inline proc literal handed straight in as the argument:
	apply_all(proc(x: int) -> int {return x + 100}, nums)
}
