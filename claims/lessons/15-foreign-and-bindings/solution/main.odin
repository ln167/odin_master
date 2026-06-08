package main

import "core:fmt"
import "core:strings"
import "core:c/libc"

when ODIN_OS == .Windows {
	foreign import my_libc "system:libucrt.lib"
} else when ODIN_OS == .Darwin {
	foreign import my_libc "system:System"
} else {
	foreign import my_libc "system:c"
}

// Renaming the Odin-side identifier changes the LINK NAME too, so the C symbol
// must be pinned with @(link_name=...). Without it the linker hunts for `my_puts`
// (which no library exports) and fails with an unresolved-external error.
@(default_calling_convention = "c")
foreign my_libc {
	@(link_name = "puts")
	my_puts :: proc(s: cstring) -> i32 ---
	@(link_name = "strlen")
	my_strlen :: proc(s: cstring) -> uint ---
}

main :: proc() {
	// 1. the pre-made libc binding.
	fmt.println("--- step 1: pre-made libc binding ---")
	libc.puts(cstring("from the bundled binding"))

	// 2. convert an Odin string to a C string.
	fmt.println("--- step 2: convert Odin string -> cstring ---")
	name := "Ada"
	greeting := fmt.tprintf("hello, %s", name)
	c_greeting := strings.clone_to_cstring(greeting, context.temp_allocator)
	libc.puts(c_greeting)

	// 3. your own foreign block.
	fmt.println("--- step 3: hand-written foreign import ---")
	my_puts(cstring("from my own foreign import"))

	// 4. round-trip a length.
	fmt.println("--- step 4: my_strlen round-trip ---")
	msg := cstring("abcdef")
	n := my_strlen(msg)
	fmt.println("strlen of", msg, "=", n)
}
