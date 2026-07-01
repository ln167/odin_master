package tele

import "core:fmt"
import "core:os"

// Where a machine-rendered line goes: the append-file sink if one is configured, else the
// console. Shared by every machine renderer (dbg, levels, counters). The `if _FILE` is a
// compile-time constant -- it folds away -- but type-checking both arms keeps `os` and `fmt`
// used imports in every build, which a `when` would not.
@(private)
_machine_line :: proc(s: string) {
	if _FILE {
		_sink_file(s)
	} else {
		fmt.print(s)
	}
}

// Append-file sink. Opens / creates / appends per line, mirroring reload_diff.log -- simple
// and proven; keeping the fd hot is an optimization deferred until a loop needs it.
@(private)
_sink_file :: proc(s: string) {
	if !_FILE {
		return
	}
	f, err := os.open(FILE, os.O_WRONLY + os.O_CREATE + os.O_APPEND)
	if err != nil {
		return
	}
	defer os.close(f)
	os.write_string(f, s)
}
