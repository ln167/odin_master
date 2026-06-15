package main

// Lesson 13 HTML probe: a proc value is one pointer wide. Every proc type --
// regardless of how many parameters or what it returns -- is the same 8 bytes,
// because the value is just an address into the executable's code.
import "core:fmt"

Binop :: proc(a, b: int) -> int

main :: proc() {
	fmt.println("size_of(proc(int) -> int)      =", size_of(proc(int) -> int))
	fmt.println("size_of(proc(int, int) -> int) =", size_of(proc(int, int) -> int))
	fmt.println("size_of(proc(string))          =", size_of(proc(string)))
	fmt.println("size_of(proc())                =", size_of(proc()))
	fmt.println("size_of(Binop)                 =", size_of(Binop))
	fmt.println("size_of(rawptr)                =", size_of(rawptr))
}
