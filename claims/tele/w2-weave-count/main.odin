package main

// W2 weaver, in-process: weave a fixture and assert the EXACT injected count + the scoped-out notes.
// The fixture mixes capturable constructs (param p, decls a/b) with the three scoped-out cases:
// a do-form body, a when-stmt, and blank `_` assignments. count must be 3 (p, a, b) and the two
// scope skips must be logged (no-silent-caps). Forensic per spec 13.2: the value STREAM is eyeballed;
// what is claim-tested is the deterministic count + skip log + (w2-woven-run) that woven compiles.

import "core:fmt"
import "odin_lib:weave"

FIXTURE :: `package demo

f :: proc(p: int) -> int {
	a := p
	if a > 0 do a = a + 1
	when ODIN_DEBUG {
		dbgx := 1
		_ = dbgx
	}
	b := a
	_ = b
	return a
}
`

main :: proc() {
	w := weave.weave_source(FIXTURE, "demo/f.odin")
	fmt.printf("count=%d\n", w.count)
	fmt.printf("skips=%d\n", len(w.skips))
	for s in w.skips {
		fmt.printf("skip: %s\n", s)
	}
}
