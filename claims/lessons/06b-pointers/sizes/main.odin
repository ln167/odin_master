package main

// Lesson 06b HTML probe: the widths the page shows. A pointer is the same width
// no matter what it points at; a multi-pointer is also just one address; a slice
// is two words (ptr + len).
import "core:fmt"

Player :: struct {
	name: string,
	hp:   int,
}

main :: proc() {
	fmt.println("size_of(int)              =", size_of(int))
	fmt.println("size_of(^int)             =", size_of(^int))
	fmt.println("size_of(^Player)          =", size_of(^Player))
	fmt.println("size_of(^[dynamic]string) =", size_of(^[dynamic]string))
	fmt.println("size_of([^]int)           =", size_of([^]int))
	fmt.println("size_of([]int)            =", size_of([]int))
}
