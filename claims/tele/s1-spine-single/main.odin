package main

// (a) The capture SPINE, single thread (spec §18 gaps #6 + #4). capture() no longer emits at the call
// site -- it stamps coordinates and buffers the Record; flush() renders every buffered Record as the
// canonical machine line `tele cap seq=N ts=T thread=W frame=F name=value type=T proc=P loc=F:L`.
// This pins: seq (per-thread, exact), the payload/type/proc/loc (exact -- TELE_SRC_ROOT=/src/pkg makes
// loc deterministic), and the FRAME STAMPING -- frame_mark() advances the spine cursor, so the record
// before any mark is frame=0, after one mark frame=1, after two frame=2. ts (QPC ns) and thread (OS
// id) are the spine's nondeterministic coordinates in their fixed positions, so they are wildcarded.
// (Direct tele.capture() calls == what the weaver injects.)

import "odin_lib:tele"

main :: proc() {
	a := 10
	tele.capture("a", a) // frame 0 (no frame_mark yet)
	tele.frame_mark()
	b := 20
	tele.capture("b", b) // frame 1
	tele.frame_mark()
	c := 30
	tele.capture("c", c) // frame 2
	tele.flush()
}
