package main

// Lesson 02 HTML probe: the measured byte width of every fundamental Odin type
// shown on the page's "sized-types strip". int/uint are pointer-width on this
// 64-bit toolchain; byte is an alias for u8; rune is i32; string and any are
// multi-word values.
import "core:fmt"

main :: proc() {
	fmt.println("bool    =", size_of(bool))
	fmt.println("i8      =", size_of(i8))
	fmt.println("i16     =", size_of(i16))
	fmt.println("i32     =", size_of(i32))
	fmt.println("i64     =", size_of(i64))
	fmt.println("u8      =", size_of(u8))
	fmt.println("u16     =", size_of(u16))
	fmt.println("u32     =", size_of(u32))
	fmt.println("u64     =", size_of(u64))
	fmt.println("int     =", size_of(int))
	fmt.println("uint    =", size_of(uint))
	fmt.println("uintptr =", size_of(uintptr))
	fmt.println("byte    =", size_of(byte))
	fmt.println("rune    =", size_of(rune))
	fmt.println("f16     =", size_of(f16))
	fmt.println("f32     =", size_of(f32))
	fmt.println("f64     =", size_of(f64))
	fmt.println("string  =", size_of(string))
	fmt.println("cstring =", size_of(cstring))
}
