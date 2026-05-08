package {{name}}

import "base:runtime"

// Greet returns a friendly greeting for the given target.
greet :: proc(target: string, allocator := context.allocator) -> string {
	if target == "" {
		return clone("hello, world", allocator)
	}
	out := make([]u8, len("hello, ") + len(target), allocator)
	copy(out[:7], transmute([]u8)string("hello, "))
	copy(out[7:], transmute([]u8)target)
	return string(out)
}

@(private)
clone :: proc(s: string, allocator: runtime.Allocator) -> string {
	buf := make([]u8, len(s), allocator)
	copy(buf, transmute([]u8)s)
	return string(buf)
}
