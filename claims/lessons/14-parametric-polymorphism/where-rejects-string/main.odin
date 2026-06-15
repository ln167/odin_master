package main

// L4 probe: a `where` clause is a compile-time GATE on the stamp. `total`
// constrains T to numeric types; handing it a string makes the where-check
// evaluate to false BEFORE the body is ever stamped — a clean, early error
// that names the failed constraint and the offending type.
import "core:fmt"
import "base:intrinsics"

total :: proc(arr: []$T) -> T where intrinsics.type_is_numeric(T) {
	sum: T
	for v in arr do sum += v
	return sum
}

main :: proc() {
	words := []string{"a", "b", "c"}
	fmt.println(total(words))
}
