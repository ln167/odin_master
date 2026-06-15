package main

// Lesson 06 HTML probe (Level 4): sub-slicing composes. A slice of a slice is
// still a []int viewing the same backing storage; the half-open bounds compose
// by addition. tail = nums[3:] starts at index 3; inner = tail[0:2] starts at
// tail's index 0 (= nums[3]) and is length 2, i.e. nums[3:5].
// Iterating inner by reference (for &v) and doubling mutates the backing array.
import "core:fmt"

main :: proc() {
	nums: [6]int = {10, 20, 30, 40, 50, 60}

	tail := nums[3:] // {40,50,60}, starts at nums[3]
	inner := tail[0:2] // {40,50}, still views nums[3] and nums[4]

	fmt.println("tail  =", tail, "len:", len(tail))
	fmt.println("inner =", inner, "len:", len(inner))
	fmt.println("inner views nums[3:5]:", raw_data(inner) == &nums[3] && len(inner) == 2)

	for &v in inner do v *= 2 // mutate through the view, in place
	fmt.println("nums after inner doubled:", nums)
}
