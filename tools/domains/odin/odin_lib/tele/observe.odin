package tele

import "core:fmt"
import "base:runtime"

// Live observations: tele.observe("label", &x) registers a pointer; the value is read fresh every
// render, so it always shows the current value. The lab draws observe_list() into its ImGui
// debug panel (human, lab-only); headless prints the set per frame via observe_frame (machine,
// and a textual human fallback). A linear program that never calls observe_frame pays nothing.
// (Named `observe`, not `watch`, to avoid colliding with `just watch` / lab hot-reload, which
// ACT ON runtime; observe only OBSERVES it.)
Observation :: struct {
	label: string,
	ptr:   rawptr,
	id:    typeid,
}

@(private)
_observations: [dynamic]Observation

observe :: proc(label: string, ptr: ^$T) {
	when ENABLED {
		append(&_observations, Observation{label, rawptr(ptr), typeid_of(T)})
	}
}

// observe_list / observe_value let the lab's ui.odin render the same registry into ImGui.
observe_list :: proc() -> []Observation {
	return _observations[:]
}

observe_value :: proc(o: Observation) -> any {
	return any{o.ptr, o.id}
}

observe_frame :: proc(frame: int, loc := #caller_location) {
	when ENABLED {
		_observe_frame(frame, loc)
	}
}

@(private)
_observe_frame :: proc(frame: int, loc: runtime.Source_Code_Location) {
	when _HUMAN {
		fmt.printf(_DIM+"%s:%d"+_RST+" "+_CYAN+"observe"+_RST+_DIM+" frame %d"+_RST+"\n", loc.file_path, loc.line, frame)
		for o in _observations {
			fmt.printf("  "+_CYAN+"%s"+_RST+" = "+_YEL+"%v"+_RST+"\n", o.label, observe_value(o))
		}
	}
	when _MACHINE {
		for o in _observations {
			_machine_line(fmt.tprintf("tele observe=%s value=%v frame=%d\n", o.label, observe_value(o), frame))
		}
	}
}
