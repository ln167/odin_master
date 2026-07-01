package main

// PREREQUISITE: tracy.lib must be built once per machine --
//   python tools/profiler/build_tracy.py
// The lib is .gitignore'd, so this claim FAILS on a fresh checkout until that runs.
//
// Tracy is a CONNECTED profiler: with no Tracy GUI attached it emits nothing to a file
// (unlike spall's self-contained trace). So the meaningful check is that INSTRUMENT=tracy
// COMPILES, LINKS against the foreign tracy.lib, and RUNS the SCOPE begin/end round-trip
// without crashing. Deterministic sentinel proves we reached the end.

import "odin_lib:tele"
import "core:fmt"

work :: proc() {
	tele.SCOPE() // _tracy_begin / _tracy_end via the foreign zone calls
	sum := 0
	for i in 0 ..< 1000 { sum += i }
	_ = sum
}

main :: proc() {
	for _ in 0 ..< 50 { work() }
	fmt.println("tracy build ok")
}
