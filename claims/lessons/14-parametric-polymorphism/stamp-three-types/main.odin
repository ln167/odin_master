package main

// L1 probe: ONE generic source `max` stamped out for three concrete types.
// The same definition handles int, f32, and string — the page shows each
// stamped specialization's real output side by side.
import "core:fmt"
import "base:intrinsics"

max :: proc(a, b: $T) -> T where intrinsics.type_is_ordered(T) {
	return a if a > b else b
}

main :: proc() {
	i: int = max(3, 7)
	f: f32 = max(f32(2.5), f32(1.0))
	s: string = max("alpha", "bravo")
	fmt.println("max(int)    3, 7         ->", i)
	fmt.println("max(f32)    2.5, 1.0     ->", f)
	fmt.println("max(string) alpha, bravo ->", s)
}
