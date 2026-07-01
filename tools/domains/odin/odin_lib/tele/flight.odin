package tele

import "core:fmt"
import "base:runtime"

// The flight recorder (spec §10) -- the black box for CONTINUOUS runs. The firehose (W2/W3) dumps
// every capture to stdout, which is right for a finite/throwaway run but endless for the lab @60fps.
// So for continuous runs the model flips: RECORD always into a bounded ring (the last FLIGHT_CAP
// records, in memory), and DUMP only on a TRIGGER (a manual key, a NaN/out-of-range invariant, an
// assert, end-of-run). You read the last CAP records AFTER the glitch -- the frames leading up to it.
//
// Off the hot path (spec §10): the per-frame `flight_record` is a cheap memcpy into one ring slot --
// no syscall, no I/O. The expensive part (formatting + the grep-able log write) happens only in
// `flight_dump`, which fires on a trigger (rare), never per frame.
//
// Lean tier (when ENABLED), NOT max: the ring is hand-called like `observe`, and its only consumer --
// the lab -- builds at `on` and is never woven (zrun's max weave never touches it), so a max-gated
// recorder would be dead code in the one program that uses it. At `max` the automatic Weaver could
// also feed this ring instead of stdout for a continuous run, but that isn't needed now (the lab
// isn't woven), so the mechanism is built at the tier its consumer actually uses.
//
// The `frame` field is the opt-in coordinate deferred from W4 (§7): the lab supplies its real 60fps
// frame counter (g_mem.sim.frame) -- "no hidden state", the caller passes it. Throwaway code has no
// frame to read, which is exactly why frame stays OFF the woven `capture()` line (that line is the 6
// mandatory coords, untouched here). The value is a COPY, rendered determinism-locked at record time
// (spec §5.2) -- a raw `any` would dangle across frames AND show the value at dump time, not at the
// frame it was recorded.

FLIGHT_CAP :: #config(TELE_FLIGHT_CAP, 256)

// A rendered value is short (a vec2 ~ "[400.00, 100.00]", a float, an int). 64 inline bytes hold it
// with no allocation and no dangle; a longer render truncates (forensic, never claim-diffed).
FLIGHT_VAL_MAX :: 64

Flight_Record :: struct {
	frame: u64,
	name:  string, // caller literal (static) -- safe to hold across frames, like observe's label
	val:   [FLIGHT_VAL_MAX]u8, // value rendered (determinism-locked) at record time -- a copy, no dangle
	vlen:  int,
	loc:   runtime.Source_Code_Location, // #caller_location: file_path / procedure are static literals
}

// Package-level (compiled at every dial -- keeps base:runtime a used import via Source_Code_Location).
// Write index is g_flight_count % FLIGHT_CAP; live count is min(g_flight_count, FLIGHT_CAP).
@(private) g_flight: [FLIGHT_CAP]Flight_Record
@(private) g_flight_count: int

// Record one value into the ring. Cheap (no I/O): render the value, copy it inline, advance. `name`
// must be a literal (it is held across frames -- a tprintf'd name would dangle; the lab passes "pos").
flight_record :: proc(frame: u64, name: string, value: any, loc := #caller_location) {
	when ENABLED {
		r := &g_flight[g_flight_count % FLIGHT_CAP]
		r.frame = frame
		r.name = name
		r.loc = loc
		r.vlen = copy(r.val[:], _det_value(value)) // determinism-locked; copy truncates past 64 -- forensic
		g_flight_count += 1
	}
}

// Dump the ring oldest->newest on a trigger. The dump does NOT clear the ring, so a later dump still
// shows the current tail (press the key twice, see the last CAP each time). Routed through the sink,
// so at TELE_FILE it lands in the grep-able log alongside every other machine line.
flight_dump :: proc(reason: string) {
	when ENABLED {
		_flight_dump(reason)
	}
}

// Unguarded (always compiled) so core:fmt stays a used import at every dial -- _HUMAN or _MACHINE is
// always at least one (FORMAT in human/machine/both), so a fmt call is always live here. `_flight_dump`
// is dead but present at off, mirroring observe's `_observe_frame`.
@(private)
_flight_dump :: proc(reason: string) {
	live := min(g_flight_count, FLIGHT_CAP)
	start := g_flight_count - live // absolute index of the oldest live record
	when _HUMAN {
		fmt.printf("\n"+_CYAN+"flight"+_RST+_DIM+" dump reason=%s count=%d"+_RST+"\n", reason, live)
		for i in 0 ..< live {
			r := &g_flight[(start + i) % FLIGHT_CAP]
			fmt.printf("  "+_DIM+"f%d"+_RST+" "+_DIM+"%s:%d"+_RST+" "+_CYAN+"%s"+_RST+" = "+_YEL+"%s"+_RST+"\n",
				r.frame, _src_path(r.loc.file_path), r.loc.line, r.name, string(r.val[:r.vlen]))
		}
	}
	when _MACHINE {
		_machine_line(fmt.tprintf("tele flight dump reason=%s count=%d\n", reason, live))
		for i in 0 ..< live {
			r := &g_flight[(start + i) % FLIGHT_CAP]
			_machine_line(fmt.tprintf("tele flight frame=%d %s=%s proc=%s loc=%s:%d\n",
				r.frame, r.name, string(r.val[:r.vlen]), r.loc.procedure, _src_path(r.loc.file_path), r.loc.line))
		}
	}
}
