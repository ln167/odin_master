package main

// Lesson 06b "break it" #1: dereference a nil pointer. `bad` is nil (the zero
// value). Loading bad^ into a real int reads address 0 -> the OS kills the
// process with an access violation / segfault (no friendly Odin message).
// NOTE: `fmt.println(bad^)` does NOT crash -- fmt receives bad^ as an `any`
// whose data pointer is nil and prints "<nil>" instead of loading. You must
// force an actual load (assign to an int and use it) to trigger the crash.
import "core:fmt"

main :: proc() {
	bad: ^int
	y := bad^ // genuine load from address 0 -> segfault here
	fmt.println(y)
}
