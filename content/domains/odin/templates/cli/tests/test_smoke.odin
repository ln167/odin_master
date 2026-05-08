package tests

import "core:testing"

@(test)
smoke :: proc(t: ^testing.T) {
	testing.expect(t, 1 + 1 == 2, "basic arithmetic")
}
