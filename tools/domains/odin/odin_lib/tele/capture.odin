package tele

import "core:fmt"
import "core:reflect"
import "core:strings"
import "base:runtime"

// The Value slice (CONTEXT.md). `capture` is the call the WEAVER injects -- `tele.capture("x", x)` --
// so you never type it. One Record = a (name, value) copy tagged with its procedure (the Correlation
// anchor, loc.procedure), source loc, a monotonic `seq`, and a deterministically rendered value.
// The value firehose is the max tier, so the body is `when MAX`; at on/off `capture` is an empty
// proc (compiles to nothing). The helpers below are compiled unconditionally -- that keeps the
// core:fmt / core:reflect / core:strings imports used at every dial (a `when` around them would not).
//
// Determinism (spec 5.2): the stream must reproduce run-to-run, so a captured value never prints a
// raw address. Typed pointers are peeled to the pointee; rawptr / multi-pointer / proc values and
// slices/arrays of pointers are elided (`ptr` / `proc` / `[N]ptr`); maps are elided to an entry count
// (iteration order is unspecified). Embedded newlines are escaped so one record stays one line (the
// machine sink is line-oriented and sacred, §14.9). Per-site cap (spec 8) bounds a hot loop; `seq`
// orders repeated same-name captures. Residual (forensic, not fixed): a pointer inside a struct
// element or a `uintptr` address still prints raw -- the stream is never claim-diffed (spec 5.2).
//
// Reader (W5): both renderers remap the woven file path back to the source path via `_src_path`
// (spec 5.2) -- at `max` the captured `loc` points into the .tele-woven mirror, not your source.
// The human reader also groups by procedure (a header per proc, captures indented) so the firehose
// folds by proc in an editor.

// Max emits per capture SITE before it goes quiet -- the hot-loop guard. Override -define:TELE_CAP=N.
CAP_PER_SITE :: #config(TELE_CAP, 256)

capture :: proc(name: string, value: any, loc := #caller_location) {
	when MAX {
		_capture(name, value, loc)
	}
}

@(private) g_cap_seq: int
@(private) g_cap_sites: map[u64]int
@(private) g_last_proc: string // human reader: the proc the last header was printed for (W5 grouping)

@(private, no_instrumentation)
_capture :: proc(name: string, value: any, loc: runtime.Source_Code_Location) {
	// Per-site cap. Key the site by the file_path string-data pointer (a static literal, so the
	// same site shares one pointer) folded with the line -- no per-call allocation to find the key.
	key := u64(uintptr(raw_data(loc.file_path))) * 1000003 + u64(loc.line)
	if g_cap_sites[key] >= CAP_PER_SITE { // reading a nil map is fine; only assigning panics
		return
	}
	if g_cap_sites == nil {
		g_cap_sites = make(map[u64]int)
	}
	g_cap_sites[key] += 1
	g_cap_seq += 1

	v := _det_value(value)
	when _HUMAN {
		// Collapse-friendly grouping (W5): print a proc header once, when the proc changes, and
		// indent the captures under it -- the firehose folds by procedure in an editor and the
		// per-line "(in proc)" tag stops repeating. g_last_proc is render state, not a Record
		// coordinate, so it doesn't touch §14's "no hidden state" (which is about the data, not how
		// it's drawn).
		if loc.procedure != g_last_proc {
			fmt.printf("\n"+_CYAN+"%s"+_RST+_DIM+":"+_RST+"\n", loc.procedure)
			g_last_proc = loc.procedure
		}
		fmt.printf("  "+_DIM+"%s:%d"+_RST+" "+_DIM+"[%d]"+_RST+" "+_CYAN+"%s"+_RST+" "+_DIM+"(%v)"+_RST+" = "+_YEL+"%s"+_RST+"\n",
			_src_path(loc.file_path), loc.line, g_cap_seq, name, value.id, v)
	}
	when _MACHINE {
		_machine_line(fmt.tprintf("tele cap seq=%d %s=%s type=%v proc=%s loc=%s:%d\n",
			g_cap_seq, name, v, value.id, loc.procedure, _src_path(loc.file_path), loc.line))
	}
}

// Deterministic rendering of a captured value. Peels typed pointers to the pointee (never prints an
// address), elides maps to a count (unspecified order), prints everything else with %v.
@(private, no_instrumentation)
_det_value :: proc(value: any) -> string {
	val := value
	for _ in 0 ..< 8 { // peel nested typed pointers, bounded
		#partial switch reflect.underlying_type_kind(val.id) {
		case .Pointer:
			// Typed pointer: peel to the pointee. A rawptr has no pointee type (elem == nil),
			// so reflect.deref would dereference a void* and segfault -- leave it for the elide.
			if !_untyped_ptr(val.id) {
				d := reflect.deref(val)
				if d.data == nil {
					return "nil"
				}
				val = d
				continue
			}
		}
		break
	}
	#partial switch reflect.underlying_type_kind(val.id) {
	case .Pointer, .Multi_Pointer:
		return "ptr" // rawptr / multi-pointer: elide, never an address
	case .Procedure:
		return "proc" // proc value: %v leaks the code address -- elide
	case .Map:
		return fmt.tprintf("map[%d]", reflect.length(val))
	case .Slice, .Array, .Dynamic_Array:
		// A slice/array of pointers would print each element's raw address via %v. We never want an
		// address, so elide the whole thing to a count (like a map). Element-level only -- a pointer
		// buried inside a struct element is the rare deep case, left to %v (spec §5.2 known limit).
		if _elem_is_ptr(val.id) {
			return fmt.tprintf("[%d]ptr", reflect.length(val))
		}
	}
	// One record == one line: the machine sink is line-oriented and sacred (§14.9). A captured value
	// with an embedded newline would split the record and desync grep / claim.py -- escape them.
	s := fmt.tprintf("%v", val)
	s, _ = strings.replace_all(s, "\n", "\\n", context.temp_allocator)
	s, _ = strings.replace_all(s, "\r", "\\r", context.temp_allocator)
	return s
}

// Woven->source path remap (spec 5.2). At `max` the run entrypoint builds a FLAT woven mirror, so
// loc.file_path points into .tele-woven/<pkg>; SRC_ROOT (the real source dir, passed by zrun) plus
// the file's basename rebuilds the source path -- the mirror being flat means every woven file
// shares the source basename, so the woven root never has to be known. Empty SRC_ROOT (claim.py /
// plain build, which never weave) = identity: the path is already the real source. (If the deferred
// multi-package closure mirror ever lands, files gain sub-dirs and this basename join is revisited
// alongside it.)
@(private, no_instrumentation)
_src_path :: proc(p: string) -> string {
	when SRC_ROOT == "" {
		return p
	} else {
		i := max(strings.last_index_byte(p, '/'), strings.last_index_byte(p, '\\'))
		return fmt.tprintf("%s/%s", SRC_ROOT, p[i + 1:])
	}
}

// A rawptr is a pointer whose pointee type is unknown (elem == nil); it cannot be deref'd.
@(private, no_instrumentation)
_untyped_ptr :: proc(id: typeid) -> bool {
	#partial switch info in runtime.type_info_base(type_info_of(id)).variant {
	case runtime.Type_Info_Pointer:
		return info.elem == nil
	}
	return false
}

// True when id is a slice/array/dynamic-array whose ELEMENT type is a pointer (typed, raw, or multi).
@(private, no_instrumentation)
_elem_is_ptr :: proc(id: typeid) -> bool {
	elem: ^runtime.Type_Info
	#partial switch info in runtime.type_info_base(type_info_of(id)).variant {
	case runtime.Type_Info_Slice:
		elem = info.elem
	case runtime.Type_Info_Array:
		elem = info.elem
	case runtime.Type_Info_Dynamic_Array:
		elem = info.elem
	case:
		return false
	}
	#partial switch reflect.underlying_type_kind(elem.id) {
	case .Pointer, .Multi_Pointer:
		return true
	}
	return false
}
