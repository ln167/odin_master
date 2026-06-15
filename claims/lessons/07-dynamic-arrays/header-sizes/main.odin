package main

// Lesson 07 HTML probe (Level 1): the real width of a [dynamic]T header and the
// pieces it is built from. A [dynamic]int is a header of {data ptr, len, cap,
// allocator}; the allocator is itself a {procedure, data} pair. The elements
// live in a separate buffer the data field points at. A slice []int is the same
// header MINUS cap and allocator (just ptr + len). All measured, not assumed.
import "core:fmt"
import "core:mem"
import "base:runtime"

main :: proc() {
	fmt.println("size_of([dynamic]int)        =", size_of([dynamic]int))
	fmt.println("size_of([]int)               =", size_of([]int))
	fmt.println("size_of(rawptr)              =", size_of(rawptr))
	fmt.println("size_of(int)                 =", size_of(int))
	fmt.println("size_of(mem.Allocator)       =", size_of(mem.Allocator))
	fmt.println("size_of(runtime.Raw_Dynamic_Array) =", size_of(runtime.Raw_Dynamic_Array))
}
