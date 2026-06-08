package main

// Lesson 13 "break it" #3: the zero value of a proc type is nil. Calling through
// a nil proc value crashes on the indirect call -- guard callbacks with != nil.
Binop :: proc(a, b: int) -> int

main :: proc() {
	op: Binop = nil
	_ = op(1, 2)
}
