package main

// HTML lesson probe (Level 3, the cost): a bit_set's storage is governed by the
// enum's VALUE RANGE, not its member count. Http has 3 members but explicit
// values 200/404/500, so bit_set[Http] would need 501 bits -- past the 128-bit
// cap -- and the build is rejected.
import "core:fmt"

Http :: enum {OK = 200, Not_Found = 404, Server_Error = 500}

main :: proc() {
	s: bit_set[Http]
	fmt.println(s)
}
