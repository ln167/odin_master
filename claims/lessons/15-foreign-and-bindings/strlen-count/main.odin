package main

// L2 ground truth: a hand-written `foreign` binding to libc's strlen, called
// across the C ABI on a `cstring`. strlen walks the bytes until it hits the
// terminating zero and returns the count NOT including that zero -- so a 6-glyph
// literal returns 6, and the empty string returns 0.
import "core:fmt"

when ODIN_OS == .Windows {
	foreign import my_libc "system:libucrt.lib"
} else when ODIN_OS == .Darwin {
	foreign import my_libc "system:System"
} else {
	foreign import my_libc "system:c"
}

@(default_calling_convention = "c")
foreign my_libc {
	@(link_name = "strlen")
	my_strlen :: proc(s: cstring) -> uint ---
}

main :: proc() {
	fmt.println("strlen of", cstring("abcdef"), "=", my_strlen(cstring("abcdef")))
	fmt.println("strlen of", cstring("hi"), "=", my_strlen(cstring("hi")))
	fmt.println("strlen of", cstring(""), "=", my_strlen(cstring("")))
}
