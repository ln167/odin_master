package main

// Lesson 12b HTML probe (Level 1 — field promotion via `using`).
// `using xform: Transform` promotes Transform's fields (x, y, z) into Entity's
// scope. The probe proves the two access paths are the SAME storage: `e.x` and
// `e.xform.x` read equal, and writing through the promoted name `e.x` is visible
// through `e.xform.x` (and vice versa). The named field `xform` never goes away.
import "core:fmt"

Transform :: struct {
	x, y, z: f32,
}

Entity :: struct {
	using xform: Transform,
	hp:          int,
}

main :: proc() {
	e := Entity{xform = {1, 2, 3}, hp = 100}

	// Both paths reach the same bytes.
	fmt.printfln("e.x       = %v", e.x)
	fmt.printfln("e.xform.x = %v", e.xform.x)
	fmt.printfln("same?       %v", e.x == e.xform.x)

	// Write through the PROMOTED name; read back through the NAMED field.
	e.x = 9
	fmt.printfln("after e.x = 9, e.xform.x = %v", e.xform.x)

	// Write through the NAMED field; read back through the PROMOTED name.
	e.xform.y = 7
	fmt.printfln("after e.xform.y = 7, e.y = %v", e.y)

	fmt.printfln("e.hp = %v (declared directly on Entity)", e.hp)
}
