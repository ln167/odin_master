package main

import "core:fmt"

allocate_one_int :: proc(value: int) -> ^int {
	p := new(int) // uses context.allocator implicitly
	p^ = value
	return p
}

main :: proc() {
	// 1. the default context is set up before main runs.
	fmt.println("default allocator and temp_allocator are set")

	// 2. a temporary string via the temp allocator, then a bulk wipe.
	greeting := fmt.aprintf("hello, %s", "world", allocator = context.temp_allocator)
	fmt.println("temp string:", greeting)
	free_all(context.temp_allocator)
	fmt.println("wiped temp allocator")

	// 3. override context.allocator inside a block.
	{
		context.allocator = context.temp_allocator
		fmt.println("inside block: allocator overridden")
		p := new(int)
		p^ = 11
		fmt.println("  p^ =", p^)

		// 4. a helper inherits the caller's context allocator.
		q := allocate_one_int(22)
		fmt.println("  q^ (from helper) =", q^)
		free_all(context.temp_allocator)
		fmt.println("  wiped temp inside block")
	}

	// 5. the override is gone after the block, no manual restore.
	r := new(int)
	r^ = 33
	fmt.println("after block: r^ =", r^, "(allocated from restored context.allocator)")
	free(r)
	fmt.println("freed r through the restored allocator")
}
