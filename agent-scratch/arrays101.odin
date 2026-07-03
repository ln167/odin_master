package main

// Plain arrays. No tele import, no SCOPE, no prints -- the weaver injects
// capture() and its own tele import when you run at .tele=max (leader o r / o w).

sum :: proc(xs: []int) -> int {
	total := 0
	for x in xs {
		total += x
	}
	return total
}

max :: proc(xs: []int) -> int {
	best := xs[0]
	for x in xs[1:] {
		if x > best {
			best = x
		}
	}
	return best
}

double_all :: proc(xs: []int) {
	for &x in xs {
		x *= 2
	}
}

main :: proc() {
	nums := [5]int{3, 1, 4, 1, 5}
	s := sum(nums[:])
	m := max(nums[:])
	double_all(nums[:])
	s2 := sum(nums[:])
	_ = s; _ = m; _ = s2
}
