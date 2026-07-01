package main

// W6 -- the flight recorder ring, hand-called (lean tier), so it is fully deterministic and
// claim-diffable (unlike the woven value stream, which is forensic-only). CAP is pinned to 4 via
// -define:TELE_FLIGHT_CAP; pushing 6 records (frames 1..6) then dumping proves the ring is BOUNDED
// (count=4, not 6), WRAPS (frames 1 and 2 dropped -- oldest first), stays in CHRONOLOGICAL order
// (3->6), carries the opt-in `frame` field, and renders the value determinism-locked (int -> "30").
// All six record calls are the same source line, so loc:line is deterministic; the path is wildcarded.

import "odin_lib:tele"

main :: proc() {
	for f in 1 ..= 6 {
		tele.flight_record(u64(f), "x", f * 10)
	}
	tele.flight_dump("test")
}
