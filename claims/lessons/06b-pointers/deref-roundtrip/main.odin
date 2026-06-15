package main

// Lesson 06b HTML probe (Level 1): the address round-trip and aliasing.
//  - &x is the address of x; p holds that exact address (so p == &x).
//  - p^ reads the int back out of that address (== x).
//  - p^ = 100 writes through the address, so x itself becomes 100.
// Addresses are nondeterministic -> the page uses the <addr> wildcard for them,
// and the load-bearing facts are the EQUALITIES, which are deterministic.
import "core:fmt"

main :: proc() {
	x: int = 42
	p := &x
	fmt.println("&x   =", &x)        // the address of x  (nondeterministic)
	fmt.println("p    =", p)         // p holds the same address
	fmt.println("p==&x:", p == &x)   // true: p is literally x's address
	fmt.println("x    =", x)         // 42
	fmt.println("p^   =", p^)        // 42 -- read through the address
	p^ = 100                         // write through the address
	fmt.println("after p^ = 100, x =", x) // 100 -- x changed, no copy
}
