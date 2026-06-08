package lesson_17

import "core:testing"

@(test)
clamp_in_range_returns_value_unchanged :: proc(t: ^testing.T) {
	testing.expect_value(t, clamp_to_range(5, 0, 10), 5)
}

@(test)
clamp_below_range_returns_lo :: proc(t: ^testing.T) {
	testing.expect_value(t, clamp_to_range(-3, 0, 10), 0)
}

@(test)
clamp_above_range_returns_hi :: proc(t: ^testing.T) {
	testing.expect_value(t, clamp_to_range(99, 0, 10), 10)
}

@(test)
clamp_handles_boundary_values :: proc(t: ^testing.T) {
	cases := [?]struct {
		value, lo, hi, want: int,
	}{{0, 0, 10, 0}, {10, 0, 10, 10}, {7, 7, 7, 7}, {7, 3, 3, 3}}
	for c in cases {
		testing.expectf(
			t,
			clamp_to_range(c.value, c.lo, c.hi) == c.want,
			"clamp_to_range(%d, %d, %d) should equal %d",
			c.value,
			c.lo,
			c.hi,
			c.want,
		)
	}
}
