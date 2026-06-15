package main

// HTML lesson probe: the sizes shown on the page's Level 1 / Level 3.
// An enum's storage is its backing integer (default int = 8 bytes; `enum u8` = 1).
// A bit_set's storage is the smallest integer whose bit-width covers the enum's
// value RANGE: 4 members (values 0..3) -> 1 byte; 9 members (0..8) -> 2 bytes;
// 17 members (0..16) -> 4 bytes.
import "core:fmt"

Element :: enum {Fire, Ice, Lightning, Physical} // 4 values, default int backing
ElementU8 :: enum u8 {Fire, Ice, Lightning, Physical} // 4 values, u8 backing
Nine :: enum {A, B, C, D, E, F, G, H, I} // 9 values
Seventeen :: enum {
	V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17,
} // 17 values

main :: proc() {
	fmt.printf("size_of(Element)            = %d\n", size_of(Element))
	fmt.printf("size_of(enum u8)            = %d\n", size_of(ElementU8))
	fmt.printf("size_of(bit_set[Element])   = %d\n", size_of(bit_set[Element]))
	fmt.printf("size_of(bit_set[Nine])      = %d\n", size_of(bit_set[Nine]))
	fmt.printf("size_of(bit_set[Seventeen]) = %d\n", size_of(bit_set[Seventeen]))
}
