package main

// Lesson 06 HTML probe (Level 2 / Level 3): assigning a slice copies the
// 16-byte HEADER, not the elements. b := a duplicates {data, len}, so both
// names point at the SAME backing storage. A write through b is seen through a.
import "core:fmt"

main :: proc() {
	nums: [6]int = {10, 20, 30, 40, 50, 60}
	a := nums[:]
	b := a // copies the header (ptr + len), not the 6 ints

	b[0] = 777 // writes through the shared backing storage
	fmt.println("a[0]    =", a[0]) // 777: a and b alias the same data
	fmt.println("nums[0] =", nums[0]) // 777: the backing array too

	fmt.println("same data ptr:", raw_data(a) == raw_data(b))
}
