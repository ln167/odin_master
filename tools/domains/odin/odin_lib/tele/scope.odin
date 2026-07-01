// Compile-time-switched profiling zones -- part of tele. Switch the backend with
// `-define:INSTRUMENT={spall,tracy,both,false}` (default false -> zero overhead).
//
//   import "odin_lib:tele"
//   foo :: proc() {
//       tele.SCOPE()           // zone named after #procedure
//       tele.SCOPE_NAMED("io") // explicit name
//       ...
//   }
package tele

import "base:runtime"

INSTRUMENT :: #config(INSTRUMENT, "false")

_SPALL :: INSTRUMENT == "spall" || INSTRUMENT == "both"
_TRACY :: INSTRUMENT == "tracy" || INSTRUMENT == "both"

Zone :: struct {}

@(deferred_out=_zone_end)
SCOPE :: proc(loc := #caller_location) -> Zone {
	return _zone_begin(loc.procedure, loc)
}

@(deferred_out=_zone_end)
SCOPE_NAMED :: proc(name: string, loc := #caller_location) -> Zone {
	return _zone_begin(name, loc)
}

@(private)
_zone_begin :: proc(name: string, loc: runtime.Source_Code_Location) -> Zone {
	when _SPALL { _spall_begin(name) }
	when _TRACY { _tracy_begin(name, loc) }
	return Zone{}
}

@(private)
_zone_end :: proc(_: Zone) {
	when _SPALL { _spall_end() }
	when _TRACY { _tracy_end() }
}
