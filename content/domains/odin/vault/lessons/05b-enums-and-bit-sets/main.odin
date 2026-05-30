package main

import "core:fmt"


// Declare an Element enum with four values: Fire, Ice, Lightning, Physical.
// You can put it at package scope (here) or inside main; package scope is
// more idiomatic because enums are usually shared across procs.

// TODO: declare Element here


// Same idea for Key — used by the door/subset exercise at the bottom.

// TODO: declare Key (values: Brass, Silver, Gold, Crystal, Skeleton)


main :: proc() {
	// 1. ITERATE THE ENUM.
	//
	//    Use `for e in Element { ... }` to print each element on its
	//    own line, prefixed with its integer value, like:
	//
	//        0 Fire
	//        1 Ice
	//        2 Lightning
	//        3 Physical
	//
	//    Hint: `int(e)` casts an enum value to its underlying int.


	// 2. EXHAUSTIVE SWITCH.
	//
	//    Write a proc `describe :: proc(e: Element) -> string` above
	//    `main` that returns a short description for each element:
	//
	//        .Fire      -> "hot"
	//        .Ice       -> "cold"
	//        .Lightning -> "fast"
	//        .Physical  -> "blunt"
	//
	//    Use a plain `switch e { case .Fire: ...; ... }`. Do NOT use
	//    `#partial switch` — you want the compiler to enforce that
	//    you handle every case. After it works, try deleting one
	//    `case` and read the compile error before adding it back.
	//
	//    Then call describe on each element in a loop and print:
	//        Fire is hot
	//        Ice is cold
	//        ...


	// 3. BUILD A BIT_SET AND TEST MEMBERSHIP.
	//
	//    Declare `resistances: bit_set[Element] = {.Fire, .Ice}`.
	//    Use the `in` operator to test each element of Element and
	//    print whether it's resistant:
	//
	//        Fire resistant?      true
	//        Ice resistant?       true
	//        Lightning resistant? false
	//        Physical resistant?  false


	// 4. SET OPERATIONS.
	//
	//    Declare two bit_sets:
	//        a := bit_set[Element]{.Fire, .Ice}
	//        b := bit_set[Element]{.Fire, .Physical}
	//
	//    Print the result of each operation:
	//
	//        a | b   union          -> {Fire, Ice, Physical}
	//        a & b   intersection   -> {Fire}
	//        a - b   difference     -> {Ice}
	//
	//    (fmt.println on a bit_set prints it as a set literal.)


	// 5. THE DOOR/KEY SUBSET CHECK.
	//
	//    This is the canonical "permissions" pattern. Declare:
	//
	//        player_keys: bit_set[Key] = {.Brass, .Silver, .Gold, .Crystal}
	//        door_needs:  bit_set[Key] = {.Silver, .Gold}
	//
	//    Use the subset operator `<=` to check "does the player have
	//    all the keys the door requires?" Print:
	//
	//        Can open door? true
	//
	//    Then change door_needs to require a key the player doesn't
	//    have (e.g. .Skeleton) and verify it prints `false`.

	// Run with: odin run main.odin -file
	// Compare your output to expected-output.txt.
}
