package main

// ────────────────────────────────────────────────────────────────────────────
// HOOK DEMO (v2) — the two halves of "observability for free":
//
//   1. EXECUTION half  → the HOOK. Free, automatic. Reports WHICH procedure ran.
//   2. VALUE half      → a CAPTURE call. Reports a variable's VALUE, tagged with
//                        the procedure it lived in. This is the line the WEAVER
//                        will write for you — here we write it by hand so you can
//                        see exactly what it does and where the output goes.
//
// "Where do I view the data?" → right here in the terminal (stdout). Point it at
// a file instead by having capture() write to a file — same data, different sink.
// ────────────────────────────────────────────────────────────────────────────

import "core:fmt"
import "core:strings"
import "base:runtime"

g_busy: bool // re-entrancy guard (handler calls fmt/strings, which are instrumented)

// ── 1. THE HOOK (execution half) ─────────────────────────────────────────────
// One handler, appointed by the attribute, called at the top of every procedure.
@(instrumentation_enter, no_instrumentation)
log_enter :: proc "contextless" (proc_address, call_site_return_address: rawptr, loc: runtime.Source_Code_Location) {
	if g_busy { return }
	g_busy = true
	context = runtime.default_context()
	if strings.has_suffix(loc.file_path, "main.odin") {
		fmt.printfln("[ENTER] %-8s (main.odin:%d)", loc.procedure, loc.line)
	}
	g_busy = false
}

@(instrumentation_exit, no_instrumentation)
log_exit :: proc "contextless" (proc_address, call_site_return_address: rawptr, loc: runtime.Source_Code_Location) {
}

// ── 2. THE CAPTURE CALL (value half) ─────────────────────────────────────────
// This is THE logging statement — the thing the weaver injects for you.
// `loc := #caller_location` is the metadata: it records WHICH procedure the
// value lived in (loc.procedure) — that's the Correlation you asked about.
// @(no_instrumentation) so the capture machinery doesn't report on itself.
@(no_instrumentation)
capture :: proc(name: string, value: $T, loc := #caller_location) {
	fmt.printfln("[VALUE] %-6s = %v (in %s)", name, value, loc.procedure)
}

// ── THE OBSERVED PROCEDURES ──────────────────────────────────────────────────
// The capture() lines here are what the weaver would write automatically — you
// would NOT type them. The [ENTER] lines need no calls at all (the hook).
greet :: proc(name: string) -> string {
	capture("name", name)
	return fmt.tprintf("hi %s", name)
}

compute :: proc(a, b: int) -> int {
	capture("a", a)
	capture("b", b)
	return a + b
}

main :: proc() {
	msg := greet("luke")
	sum := compute(2, 3)
	capture("sum", sum)
	fmt.println("program output:", msg, sum)
}
