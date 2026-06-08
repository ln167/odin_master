package main

import "core:fmt"

Vec3 :: [3]f32

main :: proc() {
	a: [4]int = {10, 20, 30, 40}

	// 2. length, first, last (computed, not hardcoded).
	fmt.println("len:", len(a), "first:", a[0], "last:", a[len(a) - 1])

	// 3. value-first iteration.
	for v, i in a {
		fmt.printf("  a[%d] = %d\n", i, v)
	}

	// 4. element-wise vector math, built into [N]T.
	p := Vec3{1, 2, 3}
	q := Vec3{10, 20, 30}
	fmt.println("p + q =", p + q)

	// 5. a slice (view) of the middle two elements.
	mid := a[1:3]
	fmt.println("a[1:3] =", mid, "len:", len(mid))
}
