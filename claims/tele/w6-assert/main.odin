package main

// W6 -- a programmatic flight-recorder trigger: an assert failure is routed through the ring (via
// context.assertion_failure_proc) so the last FLIGHT_CAP records dump BEFORE the default abort, then
// the program still dies nonzero. `panics` claim: build succeeds, the run crashes nonzero, and the
// dumped ring puts "flight" in the output -- proving the trigger fired the dump, not just the abort.

import "base:runtime"
import "core:fmt"
import "odin_lib:tele"

flight_assert :: proc(prefix, message: string, loc: runtime.Source_Code_Location) -> ! {
	tele.flight_dump(fmt.tprintf("assert: %s %s", prefix, message))
	runtime.default_assertion_failure_proc(prefix, message, loc)
}

main :: proc() {
	context.assertion_failure_proc = flight_assert
	tele.flight_record(1, "x", 10)
	tele.flight_record(2, "x", 20)
	assert(false, "boom")
}
