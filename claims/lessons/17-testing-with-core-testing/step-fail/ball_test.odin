package step_fail

import "core:testing"

@(test)
ball_bounces_off_right_wall :: proc(t: ^testing.T) {
	b := Ball{x = 99, y = 50, vx = 5, vy = 0}
	after := step(b, 100, 100)
	testing.expect(t, after.vx < 0, "ball at the right wall should reverse vx")
}
