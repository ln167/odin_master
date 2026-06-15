package main

// Lesson 08 HTML probe (Level 1 sizes panel): the shapes the page shows.
//  - context is one struct the compiler threads through every "odin"-convention
//    proc; size_of(context) is its real width.
//  - context.allocator is a mem.Allocator: a (procedure, data) pair of two
//    pointers, so size_of is 16 on a 64-bit machine.
//  - the default allocator and the temp allocator are genuinely DIFFERENT
//    allocators (their procedure pointers differ), so they are two separate
//    pools, not one.
import "core:fmt"
import "core:mem"

main :: proc() {
	fmt.println("size_of(context) =", size_of(context))
	fmt.println("size_of(mem.Allocator) =", size_of(mem.Allocator))
	fmt.println("allocator and temp_allocator differ:",
		context.allocator.procedure != context.temp_allocator.procedure)
}
