package main

import "base:runtime"
import "core:fmt"


Element :: enum {
	Fire,
	Ice,
	Lightning,
	Physical,
}

enum_as_argument :: proc(x: Element) {
	fmt.println("Just straight printing x: ", x)

	// Print type by convertin it to a runtime typeid value
	fmt.println(typeid_of(type_of(x)))

	// Declare anothe rvariable of type elemenet
	y: type_of(x) = Element.Fire
	fmt.println("Type id: ", typeid_of(type_of(y)))
	// Or you can use this syntax..
	fmt.printf("Type id: %T", y)
	fmt.println("Just straight printing y: ", y)

	// Build a fixed array whos element type is whatever x is
	arr: [3]type_of(x) = {.Fire, .Ice, .Physical}
	fmt.println("Type id: ", typeid_of(type_of(arr)))
	fmt.println("Just straight printing y: ", arr)

}

main :: proc() {
	// You can make enums then associate the enum with other values. In here we associate
	// them with f32 for damange and then string for user-facing readable text.
	// You can just just keep doing this.

	// "I want to associated each enum with a float value denoting dmaange"
	dmg_mult: [Element]f32


	// Declare an array indexed BY the enum, length is automatically 4 in this case (one per enum
	dmg_mult[.Fire] = 1.5
	dmg_mult[.Ice] = 1.5
	dmg_mult[.Lightning] = 1.5
	dmg_mult[.Physical] = 1.5

	// This make it a little more obvoius we made a sort of mini-hash map
	// excpet this key set is fronzen at compile time
	dmg_mult_other: [Element]int = {
		.Fire      = 12,
		.Ice       = 8,
		.Lightning = 18,
		.Physical  = 5,
	}

	// "I want to assodicate each enum with a readable string"
	dmg_readable_name: [Element]string = {
		.Fire      = "Flame",
		.Ice       = "Freeze",
		.Lightning = "Light",
		.Physical  = "Physical",
	}

	fmt.printf(
		"Player hits slime for %d of %s damage\n",
		dmg_mult_other[.Fire],
		dmg_readable_name[.Fire],
	)

	// type_of is compile-time builtin that returns a *type* (which is NOT a value)
	// typid_of take a type produces a runtime typeid value, which is a integer handle that can be
	// used to store, compare and print

	// EASY MODE - The pattern: any place you'd literally type the word Element, you can write type_of(x) instead
	fmt.println(typeid_of(type_of(dmg_mult)))
	// fmt.println(type_of(dmg_mult))

	enum_as_argument(.Fire)

	// Here is a bit set (?)
	Element_Set :: bit_set[Element]

	resistances: Element_Set = {.Fire, .Ice} // set literal

	if .Fire in resistances {/* immune to fire */}
	
	1

}

