package tele

import "core:fmt"
import "base:runtime"

// Leveled message logs: debug < info < warn < error. Compile-time gate
// -define:TELE_LEVEL=<level> (default debug). Calls below the threshold -- and every call
// when TELE=off -- compile to an empty body (zero output). For variable inspection use dbg/dump.
// An unrecognized TELE_LEVEL silences all four (fail-safe quiet).
LEVEL :: #config(TELE_LEVEL, "debug")

_DEBUG :: ENABLED && LEVEL == "debug"
_INFO  :: ENABLED && (LEVEL == "debug" || LEVEL == "info")
_WARN  :: ENABLED && (LEVEL == "debug" || LEVEL == "info" || LEVEL == "warn")
_ERROR :: ENABLED && (LEVEL == "debug" || LEVEL == "info" || LEVEL == "warn" || LEVEL == "error")

debug :: proc(args: ..any, loc := #caller_location) { when _DEBUG { _log("debug", args, loc) } }
info  :: proc(args: ..any, loc := #caller_location) { when _INFO  { _log("info",  args, loc) } }
warn  :: proc(args: ..any, loc := #caller_location) { when _WARN  { _log("warn",  args, loc) } }
error :: proc(args: ..any, loc := #caller_location) { when _ERROR { _log("error", args, loc) } }

@(private)
_log :: proc(level: string, args: []any, loc: runtime.Source_Code_Location) {
	msg := fmt.tprint(..args)
	when _HUMAN {
		fmt.printf(_CYAN+"[%s]"+_RST+" "+_DIM+"%s:%d"+_RST+" "+_YEL+"%s"+_RST+"\n",
			level, loc.file_path, loc.line, msg)
	}
	when _MACHINE {
		_machine_line(fmt.tprintf("tele level=%s loc=%s:%d msg=%q\n", level, loc.file_path, loc.line, msg))
	}
}
