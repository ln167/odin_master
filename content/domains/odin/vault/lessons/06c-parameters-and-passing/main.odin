package main

import "core:fmt"


// A small struct for the whole-value-deref exercise (task 4).
Entity :: struct {
	x: int,
	y: int,
}


// === Procedures you will WRITE (declare these above main yourself) ===
//
// The bodies are the lesson. Don't copy them from the README on the
// first try; reason them out, then check.
//
//   bump_local :: proc(n: int) -> int
//       Rule 1 says you can't write `n += 1` directly. Shadow first:
//       `n := n` to make a mutable local, then `n += 1`, then `return n`.
//
//   add_point :: proc(score: ^int)
//       Take a POINTER. Write `score^ += 1` to reach through to the
//       caller's int. No return value.
//
//   zero_first :: proc(s: []int)
//       Take a slice (a pointer-bearing type). Write `s[0] = 0`. Note
//       there is no `^` anywhere — the slice header carries the pointer
//       for you, so the element write lands in the caller's array.
//
//   move_or_revert :: proc(e: ^Entity, dx: int, dy: int, blocked: bool)
//       Snapshot the whole entity: `old := e^`. Then `e.x += dx` and
//       `e.y += dy` (auto-deref, no `^`). If `blocked`, restore the
//       whole thing at once: `e^ = old`.


main :: proc() {
	// 1. SHADOW FOR A LOCAL COPY.
	//
	//    Declare `score := 10`. Call bump_local(score) and print:
	//        "bump_local returns:" <result> "| caller score:" score
	//    The result is 11 (the shadowed copy was bumped) but the caller's
	//    score is still 10 — the shadow change never escaped.


	// 2. MUTATE THE CALLER THROUGH A POINTER.
	//
	//    Call add_point(&score) twice. The `&` hands over score's
	//    address; each call does score^ += 1. Print:
	//        "after two add_point, score:" score
	//    Expected: 12.


	// 3. SLICE ELEMENT-WRITE LEAKS WITHOUT A `^`.
	//
	//    Declare `nums := [3]int{5, 6, 7}`. Call zero_first(nums[:]).
	//    The slice's inner pointer aims at nums, so nums[0] becomes 0.
	//    Print "after zero_first, nums:" nums  ->  [0, 6, 7]


	// 4. WHOLE-VALUE DEREF: MOVE AND REVERT.
	//
	//    Declare `e := Entity{0, 0}`.
	//    Call move_or_revert(&e, 3, 4, false)  // allowed move
	//    Print "after allowed move:" e          // Entity{x = 3, y = 4}
	//    Call move_or_revert(&e, 100, 100, true) // blocked -> revert
	//    Print "after blocked move:" e           // Entity{x = 3, y = 4}
	//
	//    The blocked call moved e to {103, 104}, then `e^ = old` put the
	//    whole snapshot back in one shot. You took the pointer to mutate;
	//    that same pointer let you snapshot and restore the whole value.

	// Run with: odin run main.odin -file
	// Compare your output to expected-output.txt.
}
