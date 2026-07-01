package main

// PREREQUISITE: tracy.lib must be built once per machine --
//   python tools/profiler/build_tracy.py
// The lib is .gitignore'd, so this claim FAILS on a fresh checkout until that runs
// (same as p8-scope-tracy).
//
// W7 robustness: the tracy zone stack is a fixed [64]Tracy_ZoneCtx. Nesting past 64
// zones used to write _tracy_stack[64] out of bounds -- a bounds-check panic (or,
// under -o:speed, silent corruption). This claim recurses 200 levels deep (201
// nested SCOPEs, well past 64) and must reach the sentinel: the depth guard skips
// emitting beyond the stack instead of indexing out of bounds, and begin/end stay
// balanced on the way back out.

import "odin_lib:tele"
import "core:fmt"

recurse :: proc(n: int) {
	tele.SCOPE()
	if n > 0 { recurse(n - 1) }
}

main :: proc() {
	recurse(200)
	fmt.println("depth ok")
}
