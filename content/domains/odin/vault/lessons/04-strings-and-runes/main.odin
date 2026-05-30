package main

import "core:fmt"
import "core:strings"
import "core:unicode/utf8"

// String and Runes AND Allocators

// Codepoint - number assigned to one symbol
// Rune - has 2 uses/definition
// 		1) an i32, set of Unicode code points
// 		2)
// Buffer - row of bytes next to eachother in memory
// Indexes count bytes, not runes
// String - pointer to buffer plus a count of how many bytes

// In Odin, a stirng is NOT an array of characters, but is a "fat pointer"
// which stores length explicity in the header. Strings in Odin are fundamentally slices,
// immutable
//
// Strings are a  slice of bytes that has special iteration properties when you use
// a "for x in y" type loop. If you do s[i] with UTF-8 you don't know which character
// you'll land on cause it coudl be 1 to 4 bytes per character, but he for x in y
// checks leading byte in the UTF-8 to know how far ahead to skip. This is exactly
// how you can do the iterating w/o issues. C just happen to work cause ASCII
// was always 1 byte. UTF-8 doesn't work like that.
//
// The header of string is two fields: pty + len.
//
// The characters arent' fixed-sized slots, they are u8 bytes that
// happen to be encoded in UTF-8
//
// s[i] is not "give me the i-th character", its "give the i-th byte"
// the type you get back is u8
//
// A rune is always exactly 4 bytes, a run is i32
main :: proc() {
	// This is 7 runes, which comes out to 11 bytes. that 1 byte per h-e-l-l-o then
	//  each chinese is 3 per, for total of 11.
	s := "hello猫猫"

	fmt.println("byte len:", len(s))

	// rune_count here actually means "count how many UTF-8-decoded code points are in
	// this byte strin". it does NOT count runes cause runes aren't actually stored
	// in strings. Confirmed by analysis of the function source code.
	fmt.println("rune count:", utf8.rune_count(s))

	for codepoint, index in s {
		fmt.printf("d = %d -> r = %r (U_%04X)\n", index, codepoint, codepoint)
		fmt.println(size_of(rune) / size_of(type_of(codepoint)))
	}

	fmt.println("test: s[0]", s[0])
	fmt.println("test: s[1]", s[1])
	fmt.println("test: s[2]", s[2])
	fmt.println("test: s[3]", s[3])
	fmt.println("test: s[4]", s[4])
	fmt.println("test: s[5]", s[5])
	fmt.println("test: s[6]", s[6])


	// Allocator - what gives use memroy. Its not the memory iteslf, but rules for
	// getting and freeing memory
	//
	// Strings.concatenate makes a new buffer big enough to hold what were are concating
	// then copie sthe bytes in, returns a string pointing at that new buffer
	//
	greeting := strings.concatenate({s, " another one ", s})


	// frees the new buffer
	defer delete(greeting)
	fmt.println(greeting)


}

