package main

// tele:weave — every value below is captured for free.
// This is what YOU write: pure computation. NO prints. NO logging. NO fmt.
// All output comes from the weaver. That is the entire point.

result: int

main :: proc() {
	nums := []int{2, 4, 6}
	total := 0
	for n in nums {
		doubled := n * 2
		total += doubled
	}
	result = total / len(nums)
}
