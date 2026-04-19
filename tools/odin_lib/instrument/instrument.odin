// Compile-time-switched profiling zones. Switch the backend with
// `-define:INSTRUMENT={spall,tracy,both,false}` (default false → zero overhead).
//
//   import "odin_lib:instrument"
//   foo :: proc() {
//       instrument.SCOPE()           // zone named after #procedure
//       instrument.SCOPE_NAMED("io") // explicit name
//       ...
//   }
package instrument

INSTRUMENT :: #config(INSTRUMENT, "false")

ENABLED        :: INSTRUMENT == "spall" || INSTRUMENT == "tracy" || INSTRUMENT == "both"
ENABLE_SPALL   :: INSTRUMENT == "spall" || INSTRUMENT == "both"
ENABLE_TRACY   :: INSTRUMENT == "tracy" || INSTRUMENT == "both"

Zone :: struct {
	when ENABLE_SPALL { spall_buf: ^Spall_Buffer }
}

@(deferred_out=_zone_end)
SCOPE :: proc(loc := #caller_location) -> Zone {
	return _zone_begin(loc.procedure)
}

@(deferred_out=_zone_end)
SCOPE_NAMED :: proc(name: string) -> Zone {
	return _zone_begin(name)
}

@(private)
_zone_begin :: proc(name: string) -> Zone {
	when !ENABLED { return Zone{} }
	when ENABLE_SPALL { _spall_begin(name) }
	when ENABLE_TRACY { _tracy_begin(name) }
	return Zone{}
}

@(private)
_zone_end :: proc(_: Zone) {
	when !ENABLED { return }
	when ENABLE_SPALL { _spall_end() }
	when ENABLE_TRACY { _tracy_end() }
}
