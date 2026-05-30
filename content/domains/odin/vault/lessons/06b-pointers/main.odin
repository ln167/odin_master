package main

import "core:fmt"


// A small struct for the pointer-to-struct exercises. Two fields so
// you can see auto-deref work on more than one of them.
Player :: struct {
	name: string,
	hp:   int,
}


// Used by task 4. Takes a POINTER to a Player and increments hp by
// `amount`. Because the parameter is `^Player`, the proc and the
// caller share the same Player in memory: writes to `p.hp` are
// visible in the caller's variable too.
//
// Compare to a version that took `p: Player` (no caret). That would
// receive a COPY of the struct, mutate the copy, and the caller
// would see no change. The pointer is what makes mutation visible.
heal :: proc(p: ^Player, amount: int) {
	p.hp += amount
}


main :: proc() {
	// 1. DECLARE AN INT AND A POINTER TO IT.
	//
	//    Declare `x: int = 42`. Then declare `p := &x`. Odin infers
	//    that `p` has type `^int` from the right-hand side.
	//
	//    Print three things on three separate lines:
	//      - "x =" followed by x
	//      - "addr of x =" followed by p (this prints the address;
	//        the exact number will differ every run, which is fine;
	//        expected-output.txt uses <addr> as a placeholder)
	//      - "p^ =" followed by p^ (the value at that address: 42)
	//
	//    The first and third numbers are the same because p^ is just
	//    another way of reading the int that lives at p's address.


	// 2. MUTATE THROUGH THE POINTER.
	//
	//    Write `p^ = 100`. This stores 100 at the address p holds —
	//    which is the address of x. So x is now 100 too.
	//
	//    Print "after p^ = 100, x =" followed by x. Confirm it's 100.
	//
	//    This is the whole point of pointers: one variable in the
	//    caller, one parameter in the callee, both names for the same
	//    bytes of memory. Writing through one is visible through the
	//    other. Same aliasing rule as slices in lesson 06.


	// 3. POINTER TO A STRUCT, AND AUTO-DEREF.
	//
	//    Declare a Player:
	//        player := Player{name = "Ada", hp = 75}
	//    Then take its address:
	//        pp := &player
	//
	//    Mutate the HP through the pointer using AUTO-DEREF: just
	//    write `pp.hp = 50`. No `pp^.hp = 50`, no `->`. The dot
	//    auto-dereferences one layer when the left side is a pointer
	//    to a struct.
	//
	//    Then print the original `player` variable on its own line
	//    prefixed with "player after pp.hp = 50: ". You should see hp
	//    is 50, because pp and player are two names for the same
	//    bytes. You did not modify a copy; you modified the original.


	// 4. PASS A POINTER TO A PROC AND OBSERVE MUTATION.
	//
	//    Declare a second player:
	//        ben := Player{name = "Benjamin", hp = 20}
	//
	//    Call `heal(&ben, 30)`. The proc (declared above main) takes
	//    a `^Player` and adds 30 to hp. Because heal received a
	//    pointer, its writes to `p.hp` write back to ben's hp.
	//
	//    Print "ben after heal:" followed by ben. Expected hp: 50.
	//
	//    Try this thought experiment without typing it: if `heal`
	//    had been declared `heal :: proc(p: Player, amount: int)`
	//    (no caret), it would receive a copy. Mutating `p.hp` inside
	//    heal would mutate the copy, then the copy would be thrown
	//    away when heal returned, and ben.hp would still be 20.


	// 5. ALLOCATE A PLAYER ON THE HEAP WITH `new`, FREE IT WITH `defer`.
	//
	//    Call `heap_player := new(Player)`. This asks the current
	//    allocator for size_of(Player) bytes, zero-initializes them,
	//    and gives you back a ^Player.
	//
	//    Immediately on the next line, write `defer free(heap_player)`.
	//    This is the pair: `new` on one line, `defer free` on the
	//    next. Reviewers scan for the pair the same way they scan for
	//    `make` / `defer delete` in lesson 06.
	//
	//    Initialize the fields using auto-deref:
	//        heap_player.name = "Grace"
	//        heap_player.hp = 200
	//
	//    Then print "heap_player:" followed by heap_player^. The
	//    trailing `^` dereferences the pointer so fmt.println prints
	//    the struct contents instead of just the address. (Try
	//    printing it WITHOUT the `^` after you have the file working
	//    and notice the difference: with `^` you see the fields,
	//    without `^` you see an address.)


	// 6. MULTI-POINTER (OPTIONAL TASTER).
	//
	//    Declare a fixed array `nums: [4]int = {10, 20, 30, 40}`.
	//    Get a multi-pointer to its storage:
	//        mp: [^]int = raw_data(nums[:])
	//
	//    Index it like a C array:
	//        mp[0]      // 10
	//        mp[3]      // 40   (no bounds check; you're on your honor)
	//
	//    Print "mp[0] =" followed by mp[0], and "mp[3] =" followed by
	//    mp[3] on two separate lines.
	//
	//    Then slice the multi-pointer back into a bounded view:
	//        tail := mp[1:3]      // []int, length 2, values {20, 30}
	//    Print "tail:" followed by tail.
	//
	//    The multi-pointer was your bridge from a `^` world (no
	//    length) into a `[]` world (length carried by the type). In
	//    real code this is mostly what you do with [^]T values that
	//    arrive from C bindings: index them when you have to, slice
	//    them as soon as you can, then work with the slice from there.

	// Run with: odin run main.odin -file
	// Compare your output to expected-output.txt.
}
