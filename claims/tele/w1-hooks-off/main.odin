package main

// W1: the Execution-slice hooks promoted into odin_lib:tele behind `when MAX`. At off the hooks
// are gone -- the deltas stay 0; at max they fire WHOLE-PROGRAM (every proc, incl. core fmt), the
// package records them, and the own-code filter separates own frames from core. Same source, two
// dials (w1-hooks-off / w1-hooks-max); expected.txt differs only in the booleans. hook_stats() is
// @(no_instrumentation) so reading it never perturbs the counts; deltas isolate work()'s frames
// (runtime-startup procs are already counted into `before`).

import "core:fmt"
import "odin_lib:tele"

work :: proc() {
	fmt.println("working")
}

main :: proc() {
	before := tele.hook_stats()
	work()
	after := tele.hook_stats()

	fmt.printf("fired: %v\n", after.enter > before.enter)
	fmt.printf("paired: %v\n", after.exit > before.exit)
	fmt.printf("own_seen: %v\n", after.own_enter > before.own_enter)
	fmt.printf("whole_program: %v\n", (after.enter - before.enter) > (after.own_enter - before.own_enter))
}
