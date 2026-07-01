package main

// TELE=on but TELE_LEVEL is an unrecognized string. The four level bools are each
// ENABLED && LEVEL in {known set}, so an unknown level satisfies none -> all four bodies
// are empty. Fail-safe quiet: a typo'd level silences logging rather than spamming or
// erroring. Distinct from p5-off (which is TELE=off); here telemetry is ON. Expect 0 bytes.

import "odin_lib:tele"

main :: proc() {
	tele.debug("d-msg")
	tele.info("i-msg")
	tele.warn("w-msg")
	tele.error("e-msg")
}
