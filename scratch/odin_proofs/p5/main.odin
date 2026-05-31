package main
import "core:fmt"

// VERSION A: shadowing. `x := x` makes a NEW local. Mutate it hard.
shadow_version :: proc(x: int) {
	x := x
	x += 100
	fmt.printf("  [shadow] inside: value=%v  address=%p\n", x, &x)
}

// VERSION B: pointer. We reach through to the caller's own variable.
pointer_version :: proc(x: ^int) {
	x^ += 100
	fmt.printf("  [pointer] inside: value=%v  address=%p\n", x^, x)
}

main :: proc() {
	fmt.println("=== SHADOW (expect caller UNCHANGED, address DIFFERENT) ===")
	score := 5
	fmt.printf("  before: value=%v  address=%p\n", score, &score)
	shadow_version(score)
	fmt.printf("  after : value=%v  (caller's score)\n", score)

	fmt.println()
	fmt.println("=== POINTER (expect caller CHANGED, address SAME) ===")
	score2 := 5
	fmt.printf("  before: value=%v  address=%p\n", score2, &score2)
	pointer_version(&score2)
	fmt.printf("  after : value=%v  (caller's score)\n", score2)
}
