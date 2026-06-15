package main

// Lesson 08 HTML probe (Level 2, the toggle): swapping context.allocator
// redirects every IMPLICIT allocation to a different pool -- while an EXPLICIT
// allocator argument ignores the context override and lands wherever you point
// it. Two tracking allocators, A and B. A is installed on context.allocator.
//  - new(int)            -> implicit  -> A
//  - make_buffer(3)      -> implicit, inside a helper with no allocator param -> A
//  - new(int, alloc_B)   -> EXPLICIT  -> B, even though context.allocator is A
import "core:fmt"
import "core:mem"

make_buffer :: proc(n: int) -> []int {
	return make([]int, n) // implicit context.allocator
}

main :: proc() {
	A: mem.Tracking_Allocator
	B: mem.Tracking_Allocator
	mem.tracking_allocator_init(&A, context.allocator)
	mem.tracking_allocator_init(&B, context.allocator)
	alloc_A := mem.tracking_allocator(&A)
	alloc_B := mem.tracking_allocator(&B)

	context.allocator = alloc_A // A is now the scope's default

	p := new(int) // implicit -> A
	q := make_buffer(3) // implicit (helper) -> A
	r := new(int, alloc_B) // explicit arg -> B

	fmt.println("A count (implicit new + implicit make):", A.total_allocation_count)
	fmt.println("B count (one explicit-allocator call) :", B.total_allocation_count)

	free(p)
	delete(q)
	free(r, alloc_B)
	mem.tracking_allocator_destroy(&A)
	mem.tracking_allocator_destroy(&B)
}
