package tests

import "core:testing"
import lib "../src/{{name}}"

@(test)
greet_default :: proc(t: ^testing.T) {
	got := lib.greet("")
	testing.expectf(t, got == "hello, world", "expected 'hello, world', got %q", got)
}

@(test)
greet_named :: proc(t: ^testing.T) {
	got := lib.greet("odin")
	testing.expectf(t, got == "hello, odin", "expected 'hello, odin', got %q", got)
}
