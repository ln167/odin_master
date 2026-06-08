package main

import "core:fmt"

sum_into_first :: proc(values: []int) {
	total := 0
	for v in values {
		total += v
	}
	values[0] = total
}

main :: proc() {
	// 1. backing array.
	prices: [6]int = {100, 200, 300, 400, 500, 600}
	fmt.println("prices:", prices)

	// 2. three views over it.
	all := prices[:]
	middle := prices[1:4]
	tail := prices[3:]
	fmt.println("all:", all, "len:", len(all))
	fmt.println("middle:", middle, "len:", len(middle))
	fmt.println("tail:", tail, "len:", len(tail))

	// 3. write through a slice, the array changes.
	middle[0] = 999
	fmt.println("prices after middle[0] = 999:", prices)

	// 4. pass a slice to a proc that mutates element 0.
	sum_into_first(all)
	fmt.println("prices after sum_into_first(all):", prices)

	// 5. sub-slice a slice, iterate by reference.
	inner := tail[0:2]
	fmt.println("inner:", inner)
	for &v in inner {
		v *= 2
	}
	fmt.println("prices after inner doubled:", prices)

	// 6. a slice that owns its storage.
	owned := make([]int, 4)
	defer delete(owned)
	owned[0] = 7
	owned[1] = 8
	owned[2] = 9
	owned[3] = 10
	fmt.println("owned:", owned)
}
