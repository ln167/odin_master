package main

// L3 probe: $N is a CONSTANT value parameter, known at compile time. The return
// type [N]T literally bakes N into the type, so different N values stamp out
// fixed arrays of different lengths. Each call site is its own specialization.
import "core:fmt"

filled :: proc($N: int, val: $T) -> [N]T {
	res: [N]T
	for i in 0 ..< N {
		res[i] = val
	}
	return res
}

main :: proc() {
	a := filled(3, 7)        // -> [3]int
	b := filled(5, 7)        // -> [5]int
	c := filled(4, u8('x'))  // -> [4]u8
	fmt.println("filled(3, 7)      ->", a, " len", len(a))
	fmt.println("filled(5, 7)      ->", b, " len", len(b))
	fmt.println("filled(4, 'x')    ->", c, " len", len(c))
	fmt.println("type_of(filled(3,7)) =", typeid_of(type_of(a)))
	fmt.println("type_of(filled(5,7)) =", typeid_of(type_of(b)))
}
