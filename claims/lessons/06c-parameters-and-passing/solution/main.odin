package main

import "core:fmt"

Entity :: struct {
	x: int,
	y: int,
}

bump_local :: proc(n: int) -> int {
	n := n // shadow: a mutable local hiding the immutable parameter
	n += 1
	return n
}

add_point :: proc(score: ^int) {
	score^ += 1
}

zero_first :: proc(s: []int) {
	s[0] = 0 // element write reaches the caller's array via the slice's pointer
}

move_or_revert :: proc(e: ^Entity, dx: int, dy: int, blocked: bool) {
	old := e^
	e.x += dx
	e.y += dy
	if blocked {
		e^ = old
	}
}

main :: proc() {
	// 1. shadow for a local copy.
	score := 10
	fmt.println("bump_local returns:", bump_local(score), "| caller score:", score)

	// 2. mutate the caller through a pointer.
	add_point(&score)
	add_point(&score)
	fmt.println("after two add_point, score:", score)

	// 3. slice element-write leaks without a ^.
	nums := [3]int{5, 6, 7}
	zero_first(nums[:])
	fmt.println("after zero_first, nums:", nums)

	// 4. whole-value deref: move and revert.
	e := Entity{0, 0}
	move_or_revert(&e, 3, 4, false)
	fmt.println("after allowed move:", e)
	move_or_revert(&e, 100, 100, true)
	fmt.println("after blocked move:", e)
}
