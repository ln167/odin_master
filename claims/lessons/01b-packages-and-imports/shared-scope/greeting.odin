package main

import "core:fmt"

// Same folder, same `package main` line -> same scope as main.odin.
// `main.odin` reads BANNER and calls greet() without importing this
// file; files inside one package never import each other.
BANNER :: "one folder, one package, one scope"

greet :: proc(name: string) -> string {
	return fmt.aprintf("hello, %s", name)
}
