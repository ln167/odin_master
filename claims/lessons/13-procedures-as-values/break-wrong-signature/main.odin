package main

// Lesson 13 "break it" #2: proc types are nominal. A 3-arg proc is a different
// type from Binop (2-arg), so assigning div3 to a Binop slot is rejected.
Binop :: proc(a, b: int) -> int

add :: proc(a, b: int) -> int {return a + b}
div3 :: proc(a, b, c: int) -> int {return a / b / c}

main :: proc() {
	op: Binop = add
	op = div3
	_ = op
}
