package main

import "core:fmt"


// A tiny heap payload for task 3.
Counter :: struct {
	n: int,
}


// === Procedures you will WRITE (declare these above main yourself) ===
//
//   frame_local_addr :: proc() -> uintptr
//       Declare a local `x: int`, then `return uintptr(&x)`. This hands
//       back the address of a variable in THIS call's frame, as a number.
//
//   deeper :: proc() -> uintptr
//       Same shape — a local `y: int`, `return uintptr(&y)` — but its job
//       is to be one call deeper than main so we can compare addresses.
//
//   make_on_heap :: proc() -> ^Counter
//       `c := new(Counter)`, set `c.n = 1`, `return c`. The Counter lives
//       on the heap, so it is still valid after this frame pops — the
//       caller now owns it (and must free it).


main :: proc() {
	// 1. A STACK FRAME IS REUSED ACROSS CALLS.
	//
	//    Call frame_local_addr() twice, storing the two results
	//    (a1, a2). They are equal: each call built its frame at the same
	//    spot on the stack, used it, and popped it, so the next call got
	//    the same address back.
	//    Print "same stack slot reused across calls:" (a1 == a2)
	//    Expected: true


	// 2. THE STACK GROWS DOWNWARD.
	//
	//    Declare a local `outer: int` here in main. Call deeper() to get
	//    the address of a local one frame deeper. The deeper frame sits
	//    at a LOWER address (the stack grows toward lower addresses).
	//    Print "deeper frame is at a lower address:" (deeper() < uintptr(&outer))
	//    Expected: true


	// 3. A HEAP VALUE OUTLIVES THE PROC THAT MADE IT.
	//
	//    `c := make_on_heap()` returns a ^Counter whose data is on the
	//    heap, so it's still valid here even though make_on_heap returned.
	//    Do `c.n += 1`, then print "heap counter survived the return:" c.n
	//    Expected: 2
	//    Then `free(c)` — you own it, so you hand it back.


	// 4. A HEAP SLICE YOU OWN, THEN GIVE BACK.
	//
	//    `buf := make([]int, 4)`. Fill it: `for &v, i in buf { v = i * i }`.
	//    The values are 0, 1, 4, 9. Then `delete(buf)` to release it.
	//    Print "heap slice built:" 0 1 4 9
	//    (print the four numbers; you just computed them into buf before
	//    deleting — or print them straight, the point is the make/delete pair.)

	// Run with: odin run main.odin -file
	// Compare your output to expected-output.txt.
}
