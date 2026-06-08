package main

import "core:fmt"
import "core:strings"
import "core:c/libc"


// Step 3 will ask you to write your own foreign import block here, at
// package scope. The Odin convention is to put foreign imports near
// the top of the file (right under the regular imports) so a reader
// can see all external dependencies in one place.
//
// Platform-specific library names: libc is called different things on
// each operating system. `when ODIN_OS == ...` picks the right one at
// compile time. Copy this verbatim when you do step 3 -- don't
// memorize it, just know it exists.
//
//     when ODIN_OS == .Windows {
//         foreign import my_libc "system:libucrt.lib"
//     } else when ODIN_OS == .Darwin {
//         foreign import my_libc "system:System"
//     } else {
//         foreign import my_libc "system:c"
//     }
//
// Then, with the library imported under the local name `my_libc`,
// declare the two procedures you want to call. `@(default_calling_
// convention="c")` says every proc in the following block uses the
// C calling convention. The `---` at the end of each line means
// "no body, the linker will find one."
//
//     @(default_calling_convention="c")
//     foreign my_libc {
//         @(link_name="puts")   my_puts   :: proc(s: cstring) -> i32  ---
//         @(link_name="strlen") my_strlen :: proc(s: cstring) -> uint ---
//     }
//
// Notice we renamed them `my_puts` and `my_strlen` so they don't
// collide with `libc.puts` and `libc.strlen` from the core import
// above -- a useful technique when a C library's names clash with
// Odin's standard library. IMPORTANT: renaming the Odin identifier
// also changes the *link name*, so each proc needs `@(link_name="...")`
// naming the real C symbol. Omit it and the linker hunts for `my_puts`
// (which nothing exports) and fails with an unresolved-external error.

// TODO: paste the `when ODIN_OS == ...` block here for step 3.

// TODO: paste the `@(default_calling_convention="c") foreign my_libc { ... }` block here for step 3.


main :: proc() {
	// 1. CALL THE PRE-MADE BINDING.
	//
	//    Odin's core library already wraps libc as `core:c/libc`. For
	//    99% of the time you want libc, you just `import "core:c/libc"`
	//    and call it. Try it: call `libc.puts` with the C string
	//    literal `cstring("from the bundled binding")`.
	//
	//    Why the `cstring(...)` cast? Without it, the literal would be
	//    typed as Odin's `string` (pointer + length, no terminator),
	//    which is NOT what `puts` wants. The cast tells the compiler:
	//    emit this literal as a null-terminated byte buffer instead.
	//
	//    `puts` returns an int (the number of characters written, or a
	//    negative number on error). Ignore it for now.
	//
	//    Expected line of output:
	//        from the bundled binding
	//
	//    Hint: `libc.puts(cstring("..."))`
	fmt.println("--- step 1: pre-made libc binding ---")


	// 2. CONVERT AN ODIN STRING TO A C STRING.
	//
	//    Real code rarely passes string literals; it passes strings
	//    that were built at runtime. Those are Odin `string` values
	//    and are NOT null-terminated, so you cannot just feed them to
	//    a `cstring` parameter -- the C side would read past the end
	//    looking for a zero byte.
	//
	//    Build a real Odin string:
	//
	//        name := "Ada"
	//        greeting := fmt.tprintf("hello, %s", name)
	//        // greeting has type `string`, not `cstring`
	//
	//    Convert it before passing to libc. The conversion allocates a
	//    new buffer, copies the bytes, and appends a zero. We use
	//    `context.temp_allocator` so it gets freed at the end of the
	//    frame:
	//
	//        c_greeting := strings.clone_to_cstring(greeting, context.temp_allocator)
	//        libc.puts(c_greeting)
	//
	//    Expected line of output:
	//        hello, Ada
	fmt.println("--- step 2: convert Odin string -> cstring ---")


	// 3. WRITE YOUR OWN FOREIGN BLOCK.
	//
	//    This is the actual point of the lesson. Scroll up and fill in
	//    the two TODOs at package scope: the `when ODIN_OS ...` block
	//    and the `foreign my_libc { ... }` block.
	//
	//    Then call YOUR `my_puts` here, exactly the way you called
	//    `libc.puts` above. The output should be indistinguishable --
	//    that's the whole point. The bundled binding is just somebody
	//    else's version of the same five lines you just wrote.
	//
	//    Expected line of output:
	//        from my own foreign import
	//
	//    Hint: `my_puts(cstring("from my own foreign import"))`
	fmt.println("--- step 3: hand-written foreign import ---")


	// 4. ROUND-TRIP A LENGTH.
	//
	//    Call your `my_strlen` on a known C string and print the
	//    result. `my_strlen` returns a C `size_t` (we declared it as
	//    Odin `uint`), which `fmt.println` can print directly.
	//
	//    Build it like this:
	//
	//        msg := cstring("abcdef")
	//        n := my_strlen(msg)
	//        fmt.println("strlen of", msg, "=", n)
	//
	//    Expected line of output:
	//        strlen of abcdef = 6
	//
	//    Why 6 and not 7? `strlen` counts bytes UP TO but not
	//    INCLUDING the terminating zero. Six visible characters, one
	//    invisible terminator, 6 returned.
	fmt.println("--- step 4: my_strlen round-trip ---")


	// Run with: odin run main.odin -file
	// Compare your output to expected-output.txt.
}
