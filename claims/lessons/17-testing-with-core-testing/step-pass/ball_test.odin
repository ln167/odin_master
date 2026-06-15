package step_pass

import "core:testing"

@(test)
ball_bounces_off_right_wall :: proc(t: ^testing.T) {
	// At the right wall, moving right. After one step the horizontal velocity
	// must have flipped sign -- the ball turned around.
	b := Ball{x = 99, y = 50, vx = 5, vy = 0}
	after := step(b, 100, 100)
	testing.expect(t, after.vx < 0, "ball at the right wall should reverse vx")
}

@(test)
ball_inside_box_keeps_moving :: proc(t: ^testing.T) {
	// Well inside the box, nothing reflects: velocity is unchanged.
	b := Ball{x = 50, y = 50, vx = 5, vy = 3}
	after := step(b, 100, 100)
	testing.expect_value(t, after.vx, 5)
	testing.expect_value(t, after.vy, 3)
}
