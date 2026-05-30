package main

import "core:fmt"


// Helper called from main during task 4. It allocates one int through
// `new`. `new` uses `context.allocator` implicitly, so whatever the
// caller's scope set the context allocator to is what this proc uses.
// We return the pointer so main can free it with the same allocator.
//
// Notice this proc takes NO allocator parameter. That is the whole
// point of the implicit context system: you do not thread allocators
// through APIs, the context carries them.
allocate_one_int :: proc(value: int) -> ^int {
	p := new(int)
	p^ = value
	return p
}


main :: proc() {
	// 1. INSPECT THE DEFAULT CONTEXT.
	//
	//    The two fields we care about today are `context.allocator` and
	//    `context.temp_allocator`. Both are `mem.Allocator` values, which
	//    is a struct of `(procedure, data)` - two pointers. The compiler
	//    already filled them in with the program's defaults before main
	//    ran (heap allocator and a default scratch arena, respectively).
	//
	//    Print the `.data` pointer of each so you can SEE they are real,
	//    different addresses. Use:
	//        fmt.println("default allocator data: ", context.allocator.data)
	//        fmt.println("default temp allocator data:", context.temp_allocator.data)
	//
	//    The exact addresses do not matter and will differ on every run;
	//    expected-output.txt prints fixed placeholder text instead of
	//    pointer values for the comparison (see the prints below for the
	//    fixed labels we will use). So actually do this instead:
	//
	//        fmt.println("default allocator and temp_allocator are set")


	// 2. ALLOCATE A TEMPORARY STRING WITH THE TEMP ALLOCATOR.
	//
	//    `fmt.aprintf` allocates a `string`. By default it uses
	//    `context.allocator`. You can hand it a specific allocator with
	//    the named argument `allocator = ...`. Build a string from the
	//    temp allocator without touching context.allocator:
	//
	//        greeting := fmt.aprintf("hello, %s", "world",
	//                                allocator = context.temp_allocator)
	//        fmt.println("temp string:", greeting)
	//
	//    Then wipe the temp arena. This is the canonical pattern: many
	//    short-lived allocations, then one bulk reset.
	//
	//        free_all(context.temp_allocator)
	//
	//    Print a confirmation line: `fmt.println("wiped temp allocator")`.
	//    The `greeting` variable's underlying bytes are now dead memory
	//    even though the local variable name is still in scope - do NOT
	//    print or read `greeting` again after the free_all.


	// 3. OVERRIDE context.allocator INSIDE A BLOCK.
	//
	//    Open a `{ }` block. Inside, assign the temp allocator into the
	//    main context.allocator slot:
	//
	//        {
	//            context.allocator = context.temp_allocator
	//            fmt.println("inside block: allocator overridden")
	//
	//            // Anything allocating here goes through the temp arena.
	//            // We do NOT pass `allocator = ...` to new; it uses the
	//            // context implicitly.
	//            p := new(int)
	//            p^ = 11
	//            fmt.println("  p^ =", p^)
	//
	//
	//    Do NOT close the block yet - task 4 happens inside this same
	//    block so we can see the helper proc inherit the override.


	// 4. CALL A HELPER FROM INSIDE THE OVERRIDDEN BLOCK.
	//
	//    Still inside the block from task 3, call `allocate_one_int(22)`.
	//    The helper does `new(int)` with no allocator parameter, so it
	//    picks up the *caller's* context.allocator - which is the temp
	//    allocator right now. The allocation goes into the temp arena.
	//
	//            q := allocate_one_int(22)
	//            fmt.println("  q^ (from helper) =", q^)
	//
	//    Then wipe the temp arena and close the block:
	//
	//            free_all(context.temp_allocator)
	//            fmt.println("  wiped temp inside block")
	//        }
	//
	//    Note we did NOT save and restore context.allocator. We did not
	//    need to. The closing `}` ends the scope and Odin's implicit
	//    context system drops our local override on the floor; the
	//    original context.allocator is back automatically.


	// 5. CONFIRM THE OVERRIDE IS GONE AFTER THE BLOCK.
	//
	//    Back in main's outer scope. context.allocator is the original
	//    heap allocator again - no defer, no manual restore. Allocate
	//    one int through the normal allocator to prove it works and
	//    free it with `free`. (`free` also reads context.allocator, so
	//    you must allocate and free in the same context.)
	//
	//        r := new(int)
	//        r^ = 33
	//        fmt.println("after block: r^ =", r^,
	//                    "(allocated from restored context.allocator)")
	//        free(r)
	//        fmt.println("freed r through the restored allocator")

	// Run with: odin run main.odin -file
	// Compare your output to expected-output.txt.
}
