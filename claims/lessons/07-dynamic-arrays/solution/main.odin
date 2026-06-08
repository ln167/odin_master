package main

import "core:fmt"

main :: proc() {
	// 1. declare an owned dynamic array, pair with defer delete.
	scores: [dynamic]int
	defer delete(scores)

	// 2. append, including varargs.
	append(&scores, 10)
	append(&scores, 20, 30, 40)

	// 3. contents, length, capacity.
	fmt.println("scores:", scores, "len:", len(scores), "cap:", cap(scores))

	// 4. value-first iteration.
	for v, i in scores {
		fmt.printf("  scores[%d] = %d\n", i, v)
	}

	// 5. slice it and sum.
	sum := 0
	for v in scores[:] {
		sum += v
	}
	fmt.println("sum:", sum)

	// 6. preallocate, no grow needed.
	big := make([dynamic]int, 0, 1024)
	defer delete(big)
	for i in 0 ..< 5 {
		append(&big, i * i)
	}
	fmt.println("big:", big, "len:", len(big), "cap:", cap(big))
}
