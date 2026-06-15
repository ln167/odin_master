package main

import "core:fmt"
import strs "core:strings"

main :: proc() {
	// The strings package is bound to `strs` in this file, so the bare
	// name `strings` resolves to nothing -- the alias REPLACES the name
	// locally, it doesn't add a second one.
	fmt.println(strings.to_upper("hi"))
}
