package main

// HTML lesson probe (Level 1, what an enum is): enum members are typed labels,
// not integers. You cannot do integer arithmetic on an enum value -- there is no
// implicit conversion from an untyped integer to the enum type.
import "core:fmt"

Element :: enum {Fire, Ice, Lightning, Physical}

main :: proc() {
	e := Element.Fire
	n := e + 1
	fmt.println(n)
}
