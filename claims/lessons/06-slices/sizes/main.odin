package main

// Lesson 06 HTML probe: the widths the page shows.
// A fixed array is the data, inline and by value. A slice is just the
// {ptr, len} header — 16 bytes — no matter how big the backing run is.
// len == hi - lo for a half-open slice expression; cap == len for a plain []T.
import "core:fmt"

main :: proc() {
	nums: [6]int = {10, 20, 30, 40, 50, 60}
	all := nums[:]
	mid := nums[1:4]

	fmt.println("size_of([6]int)  =", size_of([6]int))
	fmt.println("size_of([]int)   =", size_of([]int))
	fmt.println("size_of(^int)    =", size_of(^int))
	fmt.println("len(all)         =", len(all))
	fmt.println("len(mid)         =", len(mid))
}
