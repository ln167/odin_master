package main

import "core:fmt"

// Custom build-time constants. The default value fixes the type.
// Override from the command line with:
//     odin run main.odin -file -define:MY_FEATURE=true -define:GREETING="hi"
MY_FEATURE :: #config(MY_FEATURE, false)
GREETING   :: #config(GREETING, "hello")


// 5. TOP-LEVEL `when`: include or exclude an entire proc declaration.
//
//    Use a `when ODIN_DEBUG { ... } else { ... }` block at file
//    scope (here, outside `main`) to define TWO versions of a proc
//    called `build_label`. The debug version should return the
//    string "DEBUG"; the release version should return "RELEASE".
//    Only the matching one will exist in the binary - the other
//    branch is never compiled, so the duplicate proc name isn't a
//    conflict.
//
//    Pattern:
//        when ODIN_DEBUG {
//            build_label :: proc() -> string { return "DEBUG" }
//        } else {
//            build_label :: proc() -> string { return "RELEASE" }
//        }
//
//    You'll call `build_label()` from inside `main` in task 2.

// TODO: write the top-level `when` block declaring `build_label` here


main :: proc() {
	// 1. PRINT THE HOST OS.
	//
	//    Use a chained `when` on `ODIN_OS` to bind a constant
	//    `os_name` to one of "Windows", "Linux", "macOS", or "other".
	//    Then print `OS: <os_name>` on its own line.
	//
	//    Pattern:
	//        when ODIN_OS == .Windows {
	//            os_name :: "Windows"
	//        } else when ODIN_OS == .Linux {
	//            os_name :: "Linux"
	//        } else when ODIN_OS == .Darwin {
	//            os_name :: "macOS"
	//        } else {
	//            os_name :: "other"
	//        }
	//        fmt.println("OS:", os_name)
	//
	//    Note that `os_name :: "..."` is a constant declaration, not
	//    a runtime variable. Each branch declares its own constant
	//    with the same name; only one of those declarations actually
	//    reaches code generation, so there is no conflict.


	// 2. REPORT ARCHITECTURE AND BUILD KIND.
	//
	//    Print two more lines using the built-in compile-time
	//    constants:
	//
	//        Arch: <ODIN_ARCH>
	//        Build: <build_label()>
	//
	//    `ODIN_ARCH` is an enum constant; `fmt.println` will print
	//    it as `amd64`, `arm64`, etc. `build_label()` is the proc
	//    you defined with the top-level `when` block above.


	// 3. FEATURE FLAG (BOOL).
	//
	//    Use `when MY_FEATURE { ... }` to conditionally print a
	//    line. With the default (`false`), nothing prints. When
	//    built with `-define:MY_FEATURE=true`, the line below
	//    appears:
	//
	//        Feature: enabled
	//
	//    Do NOT add an `else` arm here. The whole point is that
	//    with the default the line vanishes from the binary
	//    entirely.


	// 4. STRING FLAG.
	//
	//    Use the `GREETING` constant from the top of the file to
	//    print:
	//
	//        Greeting: <GREETING>, world
	//
	//    With no override this prints `Greeting: hello, world`. With
	//    `-define:GREETING="hi"` it prints `Greeting: hi, world`.
	//    Notice this is a normal print using a compile-time
	//    constant - no `when` needed because the value always
	//    exists, only its contents change per build.


	// Run with:
	//     odin run main.odin -file
	//
	// Compare output to expected-output.txt (the default build on Windows:
	// `Build: RELEASE`, because ODIN_DEBUG is false unless you pass `-debug`
	// -- add `-debug` and the same program prints `Build: DEBUG`). Then
	// re-run with overrides:
	//
	//     odin run main.odin -file -define:MY_FEATURE=true
	//     odin run main.odin -file -define:GREETING="hi"
	//     odin run main.odin -file -define:MY_FEATURE=true -define:GREETING="hi"
}
