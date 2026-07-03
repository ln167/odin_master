package main

// (c) The spine's NDJSON sink (spec §18 analysis layer): flush emits, beside the greppable machine
// lines, one JSON object per Record to TELE_NDJSON -- Sink B's boring standard format, so an agent
// gets DuckDB/polars over the records for free. This drives it end to end: capture two values, flush,
// read recs.ndjson back, echo it. The machine lines are diverted to cap.log (TELE_FILE) so stdout is
// only the NDJSON. Fields that are deterministic (seq, frame, name, value, type, proc, loc with
// TELE_SRC_ROOT pinned) are asserted EXACT; ts and thread are wildcarded. No JSON parser -- the echo +
// per-field wildcard IS the assertion. (Direct tele.capture() calls == what the weaver injects.)

import "odin_lib:tele"
import "core:os"
import "core:fmt"

main :: proc() {
	os.remove("recs.ndjson")
	os.remove("cap.log")
	hp := 90
	tele.capture("hp", hp)
	mana := 30
	tele.capture("mana", mana)
	tele.flush()
	data, _ := os.read_entire_file("recs.ndjson", context.allocator)
	fmt.print(string(data))
}
