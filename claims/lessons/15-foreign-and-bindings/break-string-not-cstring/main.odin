package main

// Lesson 15 "break it" #3: pass an Odin `string` where a `cstring` is required.
// string and cstring are different types -> one of the few foreign mistakes Odin
// CAN catch at compile time. (Fix: strings.clone_to_cstring(s, allocator).)
import "core:c/libc"

main :: proc() {
	s: string = "hello"
	libc.puts(s)
}
