package main

// Pins the flagship research finding (was [RAN] but the spike was discarded):
// Odin's compiler-injected @(instrumentation_enter/exit) hooks fire WHOLE-PROGRAM
// (including core/runtime procs) with ZERO call-site edits, and @(no_instrumentation)
// suppresses them. This is the basis for the Execution slice / flight-recorder direction.
//
// Exact enter/exit counts vary by toolchain, so we assert RELATIONS (booleans), not numbers.

import "core:fmt"
import "base:runtime"

g_enter: int
g_exit: int

@(instrumentation_enter, no_instrumentation)
_on_enter :: proc "contextless" (proc_address, call_site_return_address: rawptr, loc: runtime.Source_Code_Location) {
	g_enter += 1
}

@(instrumentation_exit, no_instrumentation)
_on_exit :: proc "contextless" (proc_address, call_site_return_address: rawptr, loc: runtime.Source_Code_Location) {
	g_exit += 1
}

// One of my own procs, explicitly opted out.
@(no_instrumentation)
mine :: proc() {}

main :: proc() {
	before := g_enter
	mine() // @(no_instrumentation): must NOT fire the enter hook
	after_mine := g_enter
	fmt.println("warmup") // core procs: hooks fire with no call-site edits
	after_core := g_enter

	fmt.printf("no_instrumentation suppresses: %v\n", after_mine == before)
	fmt.printf("core instrumented (zero call-site edits): %v\n", after_core > after_mine)
}
