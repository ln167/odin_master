package main

// Two ways to sum 1..=100. A closed-form Gauss; B an explicit loop.
// Same result (5050) => equiv PASSES. This is the "refactor changed nothing" shape.

variant_A :: proc() -> int {
	n := 100
	return n * (n + 1) / 2
}

variant_B :: proc() -> int {
	s := 0
	for i in 1 ..= 100 {
		s += i
	}
	return s
}
