// Tracy backend. Active when -define:INSTRUMENT=tracy|both.
//
// Requires `tracy.lib` / `tracy.so` / `tracy.dylib` to exist next to
// vendor/odin-tracy/bindings.odin. Build it with
// `tools/profiler/build-tracy.ps1` (Windows) or the commands documented in
// `tools/profiler/README.md` (Linux/macOS).
package instrument

import "base:runtime"
import "core:c"

when ENABLE_TRACY {
	when ODIN_OS == .Windows do foreign import tracy "../vendor/odin-tracy/tracy.lib"
	when ODIN_OS == .Linux   do foreign import tracy "../vendor/odin-tracy/tracy.so"
	when ODIN_OS == .Darwin  do foreign import tracy "../vendor/odin-tracy/tracy.dylib"

	Tracy_ZoneCtx :: struct {
		id:     u32,
		active: b32,
	}

	@(default_calling_convention="c")
	foreign tracy {
		___tracy_alloc_srcloc_name     :: proc(line: u32, source: cstring, sourceSz: c.size_t, function: cstring, functionSz: c.size_t, name: cstring, nameSz: c.size_t) -> u64 ---
		___tracy_emit_zone_begin_alloc :: proc(srcloc: u64, active: b32) -> Tracy_ZoneCtx ---
		___tracy_emit_zone_end         :: proc(ctx: Tracy_ZoneCtx) ---
	}

	@(private) _tracy_stack: [64]Tracy_ZoneCtx
	@(private) _tracy_top: int = 0
}

@(private)
_tracy_begin :: proc(name: string, loc: runtime.Source_Code_Location) {
	when ENABLE_TRACY {
		id := ___tracy_alloc_srcloc_name(
			u32(loc.line),
			cstring(raw_data(loc.file_path)), c.size_t(len(loc.file_path)),
			cstring(raw_data(loc.procedure)), c.size_t(len(loc.procedure)),
			cstring(raw_data(name)),          c.size_t(len(name)),
		)
		ctx := ___tracy_emit_zone_begin_alloc(id, true)
		_tracy_stack[_tracy_top] = ctx
		_tracy_top += 1
	}
}

@(private)
_tracy_end :: proc() {
	when ENABLE_TRACY {
		_tracy_top -= 1
		___tracy_emit_zone_end(_tracy_stack[_tracy_top])
	}
}
