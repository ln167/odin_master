package main

// The "tele" machinery. In prime time this is the imported `tele` package; here
// it's a sibling file compiled with the app. The WEAVER injects calls to
// `capture`; the hooks need no injection at all (the compiler wires them).

import "core:fmt"
import "core:strings"
import "base:runtime"

g_busy: bool // re-entrancy guard (handler calls instrumented procs)

// EXECUTION half — free, automatic. Fires at the top of every procedure.
@(instrumentation_enter, no_instrumentation)
_enter :: proc "contextless" (proc_address, call_site: rawptr, loc: runtime.Source_Code_Location) {
	if g_busy { return }
	g_busy = true
	context = runtime.default_context()
	if strings.has_suffix(loc.file_path, "main.odin") {
		fmt.printfln("[ENTER] %s", loc.procedure)
	}
	g_busy = false
}

@(instrumentation_exit, no_instrumentation)
_exit :: proc "contextless" (proc_address, call_site: rawptr, loc: runtime.Source_Code_Location) {
}

// VALUE half — the call the weaver injects. Records a value tagged with the
// procedure it lived in (loc.procedure = the Correlation).
@(no_instrumentation)
capture :: proc(name: string, value: any, loc := #caller_location) {
	fmt.printfln("[VALUE] %-7s = %v (in %s)", name, value, loc.procedure)
}
