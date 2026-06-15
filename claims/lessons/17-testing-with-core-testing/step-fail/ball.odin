package step_fail

import "core:fmt"

Ball :: struct {
	x, y, vx, vy: f32,
}

// BROKEN on purpose: the right-wall reflection is missing, so a ball that
// reaches the right wall sails straight through instead of bouncing. The
// test below catches it -- a failing `expect` prints its message and the
// run exits nonzero (the `test-fails` claim kind asserts exactly that).
step :: proc(b: Ball, w, h: f32) -> Ball {
	nb := b
	nb.x += nb.vx
	nb.y += nb.vy
	if nb.y < 0 || nb.y > h {
		nb.vy = -nb.vy
	}
	return nb
}

main :: proc() {
	b := Ball{x = 99, y = 50, vx = 5, vy = 0}
	fmt.println(step(b, 100, 100))
}
