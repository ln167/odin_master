package tele

import "base:runtime"

// The Execution slice (CONTEXT.md): proc enter/exit captured for free by Odin's compiler-injected
// @(instrumentation_enter/exit) hooks -- whole-program, zero call-site edits. Defining the handler
// pair is the on-switch; here that pair compiles in ONLY at TELE=max (when MAX), so on/off pay
// nothing. W1 RECORDS (counts) only: it never writes stdout, so a max-built program's output is
// unchanged -- emission/correlation come later (W5/W6). Proven mechanism: claims/tele/instrument-hooks.

// Keeps base:runtime a used import at every dial (the handlers are when-MAX only, but `import` is
// file-scope and Odin errors on an unused import). An unused package-level decl is allowed.
_Loc :: runtime.Source_Code_Location

// Execution-slice snapshot. own_enter excludes core/base procs (those under ODIN_ROOT) -- the
// own-code filter, so the count isn't drowned by every fmt/runtime proc. Zero at on/off.
Hook_Stats :: struct {
	enter, exit, own_enter: int,
}

when MAX {
	@(private) g_hook_busy: bool
	@(private) g_hook_enter, g_hook_exit, g_hook_own: int

	// Whole-program enter hook. @(no_instrumentation) stops it instrumenting itself; the g_hook_busy
	// guard stops any instrumented proc the handler *calls* from recursing back in (mandatory the
	// moment the handler emits -- without it the spike stack-overflowed, exit 127). W1 calls nothing
	// instrumented, so the guard is dormant defence here.
	@(instrumentation_enter, no_instrumentation)
	_hook_enter :: proc "contextless" (proc_address, call_site_return_address: rawptr, loc: runtime.Source_Code_Location) {
		if g_hook_busy {
			return
		}
		g_hook_busy = true
		g_hook_enter += 1
		if !_under_odin_root(loc.file_path) {
			g_hook_own += 1
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
