package main

// tele:weave — every value below is captured for free.
// This is what YOU write: pure computation. NO prints. NO logging. NO fmt.
// All output comes from the weaver. That is the entire point.

result: int

main :: proc() {
	nums := []int{2, 4, 6}
	capture("nums", nums)
	total := 0
	capture("total", total)
	for n in nums {
	capture("n", n)
		doubled := n * 2
	capture("doubled", doubled)
		total += doubled
	capture("total", total)
	}
	result = total / len(nums)
	capture("result", result)
}
