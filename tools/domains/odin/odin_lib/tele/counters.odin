package tele

import "core:fmt"
import "core:slice"
import "base:runtime"

// Named integer counters: tele.count("hits") bumps one; tele.dump_counts() prints them all.
// Keys are sorted on dump so multi-counter output is deterministic (map order isn't guaranteed).
// All compiled out when TELE=off. _dump_counts is unconditional so fmt/slice stay used imports.
@(private)
_counters: map[string]int

count :: proc(name: string, by := 1) {
	when ENABLED {
		if _counters == nil {
			_counters = make(map[string]int)
		}
		_counters[name] += by
	}
}

dump_counts :: proc(loc := #caller_location) {
	when ENABLED {
		_dump_counts(loc)
	}
}

@(private)
_dump_counts :: proc(loc: runtime.Source_Code_Location) {
	keys := make([]string, len(_counters))
	defer delete(keys)
	i := 0
	for k in _counters {
		keys[i] = k
		i += 1
	}
	slice.sort(keys)
	when _HUMAN {
		fmt.printf(_DIM+"%s:%d"+_RST+" "+_CYAN+"counters"+_RST+"\n", loc.file_path, loc.line)
		for k in keys {
			fmt.printf("  "+_CYAN+"%s"+_RST+" = "+_YEL+"%d"+_RST+"\n", k, _counters[k])
		}
	}
	when _MACHINE {
		for k in keys {
			_machine_line(fmt.tprintf("tele count=%s value=%d loc=%s:%d\n", k, _counters[k], loc.file_path, loc.line))
		}
	}
}
