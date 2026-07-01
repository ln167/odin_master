package main

import "core:fmt"

main :: proc() {

	Base :: enum {
		A,
		T,
		C,
		G,
	}

	PURINES :: bit_set[Base]{.A, .G}

	strand := [?]Base{.A, .G, .T, .C, .A, .A, .G, .T}

	fmt.println(len(strand)) // how long the strand is

	fmt.println(strand[0]) // A
	fmt.println(strand[1]) // G
	fmt.println(strand[2]) // T

	fmt.println(Base.A in PURINES) // true  — A is a purine
	fmt.println(Base.C in PURINES) // false — C is a pyrimidine

	count := 0
	for base in strand {
		if base in PURINES {
			count += 1
		}
	}
	fmt.println(count) // 5 purines in this strand
}

