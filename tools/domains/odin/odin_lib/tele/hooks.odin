package tele

import "core:time"
import "base:runtime"

// The Execution slice (CONTEXT.md): proc enter/exit captured for free by Odin's compiler-injected
// @(instrumentation_enter/exit) hooks -- whole-program, zero call-site edits. Defining the handler
// pair is the on-switch; here that pair compiles in ONLY at TELE=max (when MAX), so on/off pay
// nothing. W1 recorded counts; S2 (spec §18 gap #1) makes the hooks EMIT: own-code enters/exits
// become Records through the capture spine (spine.odin), core/base procs stay count-only -- that
// own-code filter IS the volume gate (whole-program emission would drown the stream in every
// fmt/runtime frame). Proven mechanism: claims/tele/instrument-hooks.

// Keeps base:runtime / core:time used imports at every dial (the handlers are when-MAX only, but
// `import` is file-scope and Odin errors on an unused import). Unused package-level decls are allowed.
_Loc :: runtime.Source_Code_Location
_Tick :: time.Tick

// Execution-slice snapshot. own_enter excludes core/base procs (those under ODIN_ROOT) -- the
// own-code filter, so the count isn't drowned by every fmt/runtime proc. Zero at on/off.
Hook_Stats :: struct {
	enter, exit, own_enter: int,
}

// The live execution CURSOR, per thread: call depth and a monotonic call-id over OWN-CODE procs
// (enter pushes, exit pops). This is what correlation reads -- `capture` stamps the current depth
// and the innermost open call's id onto every value Record (spec §18 gap #2, the joined Record).
// The open-call stack also holds each enter's timestamp so the exit Record carries its duration
// with zero flush-time matching. Declared outside `when MAX` because the spine's worker procs
// compile at every dial (dead data below max). Own-code nesting past HOOK_OPEN_MAX is an OOB
// crash (by design -- no silent truncation).
HOOK_OPEN_MAX :: 256

Open_Call :: struct {
	call: int, // per-thread monotonic call-id, assigned at enter
	ts:   i64, // enter timestamp (QPC ns) -- exit subtracts it for dur
}

@(thread_local) g_hook_depth:  int
@(thread_local) g_hook_callid: int
@(thread_local) g_hook_open:   [HOOK_OPEN_MAX]Open_Call

when MAX {
	// Re-entrancy guard, THREAD-LOCAL: the handler's own work (spine push, first-touch buffer
	// registration) reaches instrumented core procs, whose hooks must bounce off -- and one
	// thread being mid-handler must not swallow another thread's records, so a plain global
	// would be wrong under multithreaded capture.
	@(thread_local) g_hook_busy: bool
	@(private) g_hook_enter, g_hook_exit, g_hook_own: int

	// Whole-program enter hook. @(no_instrumentation) stops it instrumenting itself; the busy
	// guard stops any instrumented proc the handler *calls* from recursing back in (mandatory --
	// without it the spike stack-overflowed, exit 127). The emit path is hook-safe by
	// construction: _spine_push_hook is @(no_instrumentation) and "contextless", calling only
	// contextless core procs; its one context need (this thread's first record registering a
	// buffer via `new`) builds runtime.default_context() inside, and anything instrumented that
	// allocation reaches bounces off g_hook_busy.
	@(instrumentation_enter, no_instrumentation)
	_hook_enter :: proc "contextless" (proc_address, call_site_return_address: rawptr, loc: runtime.Source_Code_Location) {
		if g_hook_busy {
			return
		}
		g_hook_busy = true
		g_hook_enter += 1
		if !_under_odin_root(loc.file_path) {
			g_hook_own += 1
			ts := time.tick_now()._nsec
			g_hook_callid += 1
			g_hook_depth += 1
			g_hook_open[g_hook_depth - 1] = {g_hook_callid, ts}
			_spine_push_hook(.Enter, g_hook_depth, g_hook_callid, 0, ts, loc)
		}
		g_hook_busy = false
	}

	@(instrumentation_exit, no_instrumentation)
	_hook_exit :: proc "contextless" (proc_address, call_site_return_address: rawptr, loc: runtime.Source_Code_Location) {
		if g_hook_busy {
			return
		}
		g_hook_busy = true
		g_hook_exit += 1
		if !_under_odin_root(loc.file_path) {
			// Pop the matching enter. dur is one subtraction off the open-call stack -- computed
			// here, not by flush-time pairing (the stack already exists for depth/call-id, so the
			// exit Record carries its duration for free; the paired enter/exit lines still let a
			// reader subtract timestamps itself).
			open := g_hook_open[g_hook_depth - 1]
			ts := time.tick_now()._nsec
			_spine_push_hook(.Exit, g_hook_depth, open.call, ts - open.ts, ts, loc)
			g_hook_depth -= 1
		}
		g_hook_busy = false
	}

	// Own-code filter: is `path` under the Odin install (core/base/runtime)? ODIN_ROOT is
	// `...\dist\` (backslashes, trailing sep) while loc.file_path is `.../dist/...` (forward
	// slashes), so the prefix compare normalises separators and ASCII case. Pure byte ops --
	// indexes a string, calls nothing instrumented, so it is safe inside the hook.
	@(private, no_instrumentation)
	_under_odin_root :: proc "contextless" (path: string) -> bool {
		root := ODIN_ROOT
		if len(path) < len(root) {
			return false
		}
		for i in 0 ..< len(root) {
			a, b := path[i], root[i]
			if a == '\\' { a = '/' }
			if b == '\\' { b = '/' }
			if a >= 'A' && a <= 'Z' { a += 32 }
			if b >= 'A' && b <= 'Z' { b += 32 }
			if a != b {
				return false
			}
		}
		return true
	}

	// @(no_instrumentation): reading the counters must not perturb them.
	@(no_instrumentation)
	hook_stats :: proc() -> Hook_Stats {
		return {g_hook_enter, g_hook_exit, g_hook_own}
	}
} else {
	hook_stats :: proc() -> Hook_Stats {
		return {}
	}
}
