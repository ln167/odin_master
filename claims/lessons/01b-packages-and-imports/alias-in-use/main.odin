package main

// Two imports, called through two names. `fmt` is the package's own
// name; `strs` is a LOCAL alias for the strings package, chosen on the
// import line. Inside this file the strings package answers only to
// `strs`.
import "core:fmt"
import strs "core:strings"

main :: proc() {
	fmt.println(strs.to_upper("hello"))
	fmt.printfln("has prefix: %v", strs.has_prefix("packages", "pack"))
}
