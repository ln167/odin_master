package main

// Three imports, three different shapes. Type them yourself; don't
// paste. Notice that ALL of them take a quoted string.
//
//   "core:fmt"      - standard library, ships with the compiler
//   "core:strings"  - same place, aliased below for practice
//   "./mymath"      - the sibling folder, your own package
//
// The alias `strs` is the name this file uses for the strings package.
// Inside this file you write `strs.contains(...)` instead of
// `strings.contains(...)`. The alias is purely local to this file.

import "core:fmt"
import strs "core:strings"
import "./mymath"


// A file-private helper. The @(private="file") attribute means this
// proc is invisible to other files in `package main` (there's only
// one here, but the rule still applies) AND invisible to other
// packages. The narrower visibility, the better the encapsulation.
//
// If you dropped the attribute, this would be package-visible -
// readable by any file in `package main`. If you wrote
// @(private) or @(private="package"), it would still be hidden
// from external packages like `mymath`, but visible to other files
// in `package main`.
@(private="file")
shout :: proc(s: string) -> string {
	// Uppercase the string using the aliased import. This proves
	// `strs` is just another name for the strings package.
	return strs.to_upper(s)
}


main :: proc() {
	// 1. CONFIRM core:fmt STILL WORKS.
	//
	//    Print a single greeting line so you have something to see at
	//    the top. Something like:
	//        fmt.println("lesson 01b - packages and imports")
	//    The point of this task is to notice you've been using a
	//    core: import in every lesson without ever being told what
	//    `core:` meant. Now you know: it's the standard library
	//    collection.


	// 2. USE THE ALIASED IMPORT.
	//
	//    Call `strs.contains("hello world", "hello")` and print the
	//    result with a label. The expected output is:
	//        contains 'hello' in 'hello world': true
	//
	//    Notice the alias `strs` is what makes this work - if you
	//    typed `strings.contains` you'd get a compile error,
	//    because in THIS file the strings package is bound to the
	//    name `strs`, not `strings`. (Other files could alias it
	//    differently or use the default name.)


	// 3. CALL INTO THE SIBLING PACKAGE.
	//
	//    The folder `mymath/` next to this file contains two files
	//    that both declare `package mymath`. Together they form one
	//    package. Use it like this:
	//
	//        v := mymath.Vec2{3, 4}
	//        fmt.printfln("length of %v = %.4f", v, mymath.vec_length(v))
	//
	//    Then print the circumference of a unit circle:
	//
	//        fmt.printfln("circumference of r=1 circle = %.4f", mymath.circle_circumference(1.0))
	//
	//    And print the package's VERSION constant with a label so you
	//    can see that constants cross package boundaries the same way
	//    procs do:
	//
	//        fmt.println("mymath version:", mymath.VERSION)
	//
	//    The `mymath.` prefix is mandatory: in this file (package
	//    main), the name `vec_length` doesn't exist on its own. You
	//    have to qualify it with the package identifier.


	// 4. CALL THE FILE-PRIVATE HELPER.
	//
	//    Call `shout("hellope")` and print the result with a label:
	//        shouted: HELLOPE
	//
	//    This works because `shout` lives in this same file. If you
	//    moved its definition into a hypothetical second file in
	//    `package main` and KEPT the @(private="file") attribute,
	//    this call would fail to compile - file-private means
	//    file-private, even within the same package. If you changed
	//    it to @(private), it would be reachable from sibling files
	//    in `package main` but still invisible to `package mymath`.


	// 5. NOTE THE TWO-FILE SHARING.
	//
	//    Look at mymath/vectors.odin: it uses PI without importing
	//    anything. PI is defined in mymath/constants.odin. Both
	//    files declare `package mymath`, so they share top-level
	//    scope automatically. Inside a package, files do not import
	//    each other; they're already one big shared scope.
	//
	//    Print a line that demonstrates you understand this:
	//        fmt.println("PI from constants.odin, used by vectors.odin:", mymath.PI)


	// Run with: odin run .
	// (NOT `-file` this time. We have multiple files now, and the
	//  whole-folder build is what lets `import "./mymath"` resolve.)
	//
	// Compare your output to expected-output.txt.
}
