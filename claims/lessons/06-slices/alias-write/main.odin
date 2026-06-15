package main

// Lesson 06 HTML probe (Level 2): a slice ALIASES its backing storage.
// Two slices, mid and overlap, both view into one backing array. Writing
// through one is immediately visible through the other AND through the array,
// because all three are names for the same memory. No copy, no propagation.
import "core:fmt"

main :: proc() {
	nums: [6]int = {10, 20, 30, 40, 50, 60}

	mid := nums[1:4] // views indices 1,2,3 -> {20,30,40}
	overlap := nums[2:5] // views indices 2,3,4 -> {30,40,50}; shares 2,3 with mid

	fmt.println("before        : nums =", nums)
	fmt.println("                mid  =", mid, " overlap =", overlap)

	// write through mid[1], which is nums[2], which is overlap[0]
	mid[1] = 999
	fmt.println("after mid[1]=999")
	fmt.println("                nums =", nums)
	fmt.println("                mid  =", mid, " overlap =", overlap)
}
