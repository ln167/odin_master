// Tracy backend stub. Active when -define:INSTRUMENT=tracy|both AND the user
// has vendored oskarnp/odin-tracy under tools/odin_lib/vendor/odin-tracy and
// added `-collection:tracy=...` to their build. Until then this file compiles
// to no-ops so the build doesn't break for users who haven't vendored Tracy.
package instrument

@(private)
_tracy_begin :: proc(name: string) {
	when !ENABLE_TRACY { return }
	// Replace with: tracy.ZoneBeginN(name) once the collection is wired.
}

@(private)
_tracy_end :: proc() {
	when !ENABLE_TRACY { return }
	// Replace with: tracy.ZoneEnd()
}
