package main

// Lesson 08 HTML probe (Level 2, the cascade + auto-restore): an override of
// context.allocator inside a { } block flows DOWN to everything in that block
// (the CSS-cascade picture) and is dropped the instant the block ends -- with
// NO defer and no manual save/restore, because the override only ever touched
// a local stack copy of the context struct.
//
// Two tracking allocators. OUTER is installed first. Inside a nested block we
// install INNER. We count where each allocation lands:
//  - a : before the block          -> OUTER
//  - b, c : inside the block        -> INNER   (override visible here)
//  - d : after the block closes     -> OUTER   (override gone, restored for free)
import "core:fmt"
import "core:mem"

main :: proc() {
	OUTER: mem.Tracking_Allocator
	INNER: mem.Tracking_Allocator
	mem.tracking_allocator_init(&OUTER, context.allocator)
	mem.tracking_allocator_init(&INNER, context.allocator)

	context.allocator = mem.tracking_allocator(&OUTER)

	a := new(int) // -> OUTER
	{
		context.allocator = mem.tracking_allocator(&INNER)
		b := new(int) // -> INNER
		c := new(int) // -> INNER
		free(b)
		free(c)
	} // block ends: context.allocator is OUTER again, no defer written
	d := new(int) // -> OUTER
	free(a)
	free(d)

	fmt.println("OUTER count (a before + d after block):", OUTER.total_allocation_count)
	fmt.println("INNER count (b + c, inside block only) :", INNER.total_allocation_count)
	mem.tracking_allocator_destroy(&OUTER)
	mem.tracking_allocator_destroy(&INNER)
}
