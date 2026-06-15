package main

// L2 probe: stamping a generic struct on two different T produces two
// GENUINELY DISTINCT types — different layouts, different size_of. The struct
// embeds one T by value plus a u8 tag, so the stamped size depends on T.
// This proves there is no single erased Bag; the compiler builds a real,
// separate struct per T it is used with.
import "core:fmt"

Slot :: struct($T: typeid) {
	value: T,
	live:  u8,
}

main :: proc() {
	fmt.println("size_of(u8)            =", size_of(u8))
	fmt.println("size_of(Slot(u8))      =", size_of(Slot(u8)))
	fmt.println("size_of(i32)           =", size_of(i32))
	fmt.println("size_of(Slot(i32))     =", size_of(Slot(i32)))
	fmt.println("size_of(f64)           =", size_of(f64))
	fmt.println("size_of(Slot(f64))     =", size_of(Slot(f64)))
	fmt.println("align_of(Slot(u8))     =", align_of(Slot(u8)))
	fmt.println("align_of(Slot(i32))    =", align_of(Slot(i32)))
	fmt.println("align_of(Slot(f64))    =", align_of(Slot(f64)))
}
