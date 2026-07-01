package main

// dump() has no _HUMAN/_MACHINE guard -- only when ENABLED -- so it ALWAYS renders the
// colored human %#v blob, ignoring TELE_FORMAT. Even at FORMAT=machine, dump stays human
// (spec: "dump is the human blob; no machine equivalent"). This pins that: the dump output
// below is the colored blob, not a flat machine line, despite FORMAT=machine.
import "odin_lib:tele"

main :: proc() {
	pos := [2]f32{400, 100}
	tele.dump(pos)
}
