package main

// HTML lesson probe: each enum member is exactly ONE bit of the bit_set's
// backing integer. Member N lights bit N: .Fire=bit0 (value 1), .Ice=bit1 (2),
// .Lightning=bit2 (4), .Physical=bit3 (8). A set's integer is the sum of its
// members' bit-values. transmute(u8) reads the raw backing byte.
import "core:fmt"

Element :: enum {Fire, Ice, Lightning, Physical}

main :: proc() {
	empty: bit_set[Element] = {}
	fire: bit_set[Element] = {.Fire}
	ice: bit_set[Element] = {.Ice}
	light: bit_set[Element] = {.Lightning}
	phys: bit_set[Element] = {.Physical}
	fi: bit_set[Element] = {.Fire, .Ice}
	all: bit_set[Element] = {.Fire, .Ice, .Lightning, .Physical}

	fmt.printf("{{}}                   bits=0b%04b int=%d\n", transmute(u8)empty, transmute(u8)empty)
	fmt.printf("{{.Fire}}              bits=0b%04b int=%d\n", transmute(u8)fire, transmute(u8)fire)
	fmt.printf("{{.Ice}}               bits=0b%04b int=%d\n", transmute(u8)ice, transmute(u8)ice)
	fmt.printf("{{.Lightning}}         bits=0b%04b int=%d\n", transmute(u8)light, transmute(u8)light)
	fmt.printf("{{.Physical}}          bits=0b%04b int=%d\n", transmute(u8)phys, transmute(u8)phys)
	fmt.printf("{{.Fire, .Ice}}        bits=0b%04b int=%d\n", transmute(u8)fi, transmute(u8)fi)
	fmt.printf("{{all four}}           bits=0b%04b int=%d\n", transmute(u8)all, transmute(u8)all)
}
