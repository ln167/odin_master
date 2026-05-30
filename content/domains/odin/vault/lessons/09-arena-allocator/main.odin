package main

import "core:fmt"
import "core:mem"

main :: proc() {
	// 1. CREATE THE BACKING BUFFER.
	//
	//    An arena needs raw bytes to bump-allocate from. The arena
	//    itself does NOT allocate those bytes; you give it a slice.
	//    Use `make([]u8, 64 * 1024)` to grab 64 KiB from the default
	//    allocator, and pair it with a `defer delete(backing)` on the
	//    very next line so the buffer is released when `main` returns.
	//
	//    Why 64 KiB? Big enough that the exercises won't overflow it,
	//    small enough that you'd notice if you tried to allocate a
	//    megabyte inside it.


	// 2. INITIALIZE THE ARENA.
	//
	//    Declare an `arena: mem.Arena` (zero-initialized; fields default
	//    to 0/nil). Then call `mem.arena_init(&arena, backing)` to wire
	//    the backing buffer in. After this call, `arena.offset` is 0 and
	//    `len(arena.data)` equals the length of `backing`.
	//
	//    Print one line to confirm: `arena ready, capacity: <bytes>`.
	//    Use `len(arena.data)` rather than hardcoding 65536, so resizing
	//    the backing buffer would still print the right number.


	// 3. RUN A "FRAME" UNDER THE ARENA ALLOCATOR.
	//
	//    Open a new block with `{`. Inside it, override the implicit
	//    allocator with `context.allocator = mem.arena_allocator(&arena)`.
	//    Every `make`, `new`, `fmt.aprintf`, etc. inside this block now
	//    pulls from the arena instead of the default heap allocator.
	//    The override reverts automatically at the closing `}` because
	//    `context` is scoped.
	//
	//    Inside the block, build a dynamic array of squares:
	//        squares := make([dynamic]int, 0, 8)
	//        for i in 0..<8 { append(&squares, i * i) }
	//
	//    Then format a string from it (also arena-allocated):
	//        msg := fmt.aprintf("squares: %v", squares[:])
	//        fmt.println(msg)
	//
	//    Notice we never call `delete(squares)` or `delete(msg)`. The
	//    arena will release both at once when we reset it.
	//
	//    Before the closing `}`, print the arena's offset so you can see
	//    that real bytes were consumed:
	//        fmt.printfln("after frame 1: offset=%d peak=%d",
	//            arena.offset, arena.peak_used)


	// 4. RESET THE ARENA AND OBSERVE.
	//
	//    Call `mem.arena_free_all(&arena)`. This sets `arena.offset` back
	//    to 0 in a single instruction; it does NOT touch `peak_used` and
	//    does NOT zero the backing buffer.
	//
	//    Print one line:
	//        fmt.printfln("after free_all: offset=%d peak=%d (peak preserved)",
	//            arena.offset, arena.peak_used)
	//
	//    The peak survives the reset on purpose — it's how you measure
	//    "what's the most I ever used?" for sizing decisions.


	// 5. ALLOCATE A SECOND "FRAME" INTO THE SAME BUFFER.
	//
	//    Open another `{ ... }` block. Override `context.allocator` to
	//    the arena again. Allocate something noticeably bigger this time:
	//        big := make([]int, 1024)
	//        big[0] = 99
	//        big[len(big)-1] = -1
	//    Print:
	//        fmt.printfln("frame 2: big[0]=%d big[last]=%d len=%d",
	//            big[0], big[len(big)-1], len(big))
	//
	//    Then print the arena state one final time:
	//        fmt.printfln("after frame 2: offset=%d peak=%d",
	//            arena.offset, arena.peak_used)
	//
	//    Notice that `offset` for frame 2 is much larger than frame 1's
	//    was, and `peak_used` has climbed to match. The same 64 KiB
	//    backing buffer is being reused; we never asked the OS for more
	//    memory after the initial `make([]u8, ...)` in step 1.

	// Run with: odin run main.odin -file
	// Compare your output to expected-output.txt.
}
