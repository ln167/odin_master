package main

// PREREQUISITE: tracy.lib must be built once per machine --
//   python tools/profiler/build_tracy.py   (or: just tracy-build)
// The lib is untracked (built locally), so this claim FAILS on a fresh checkout until that runs.
//
// INSTRUMENT=both fans tele.SCOPE() out to BOTH backends at once (scope.odin _zone_begin:
// _spall_begin AND _tracy_begin). The point of THIS claim is that both compile, link
// (foreign tracy.lib + core:prof/spall), and run the dual-dispatch together without crashing.
// Spall-capture correctness is pinned separately by p8-scope-spall; here a sentinel proves the
// combined build ran to completion.

import "odin_lib:tele"
import "core:os"
import "core:fmt"

work :: proc() {
	tele.SCOPE() // -> _spall_begin + _tracy_begin
	sum := 0
	for i in 0 ..< 1000 {
		sum += i
	}
	_ = sum
}

main :: proc() {
	os.remove("both.spall")
	tele.spall_init("both.spall")
	for _ in 0 ..< 50 {
		work()
	}
	tele.spall_shutdown()
	fmt.println("both ok")
}
