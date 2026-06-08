package lesson_17

import "core:fmt"

// The proc-under-test. Trivial body on purpose; the interesting work in
// this lesson is in `tests.odin`, not here. You want a tiny pure proc
// with a few obvious edge cases (below range, in range, above range) so
// the tests have something to assert against.
clamp_to_range :: proc(value, lo, hi: int) -> int {
	if value < lo {
		return lo
	}
	if value > hi {
		return hi
	}
	return value
}

main :: proc() {
	// `odin run .` calls `main` and skips test procs entirely. `odin
	// test .` does the opposite: it skips `main` and runs every proc
	// annotated `@(test)`. Two different entry points, same source
	// files. Keep `main` here so you can still sanity-check the proc
	// the manual way; the real verification lives in tests.odin.
	fmt.println("clamp_to_range(5, 0, 10) =", clamp_to_range(5, 0, 10))
}
