package step_pass

import "core:fmt"

Ball :: struct {
	x, y, vx, vy: f32,
}

// The per-frame physics, pulled out as a PURE proc: a ball and the box
// dimensions in, a new ball out. No window, no rendering, no global state --
// which is exactly what makes it assertable in isolation. This is the `step`
// from the 17-19 capstone.
step :: proc(b: Ball, w, h: f32) -> Ball {
	nb := b
	nb.x += nb.vx
	nb.y += nb.vy
	if nb.x < 0 || nb.x > w {
		nb.vx = -nb.vx
	}
	if nb.y < 0 || nb.y > h {
		nb.vy = -nb.vy
	}
	return nb
}

main :: proc() {
	b := Ball{x = 99, y = 50, vx = 5, vy = 0}
	fmt.println(step(b, 100, 100))
}
