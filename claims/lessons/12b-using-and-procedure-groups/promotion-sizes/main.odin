package main

// Lesson 12b HTML probe (Level 1 — `using` is zero-cost layout).
// Entity uses `using xform: Transform`. Its size and field offsets are IDENTICAL
// to a plain struct that names the Transform with no `using`. The promotion is a
// source-level rewrite; it adds no bytes, no tag, no indirection.
import "core:fmt"

Transform :: struct {
	x, y, z: f32,
}

// With `using`: x/y/z are promoted into Entity's scope.
Entity :: struct {
	using xform: Transform,
	hp:          int,
}

// Without `using`: same fields, must be reached as `.xform.x`.
PlainEntity :: struct {
	xform: Transform,
	hp:    int,
}

main :: proc() {
	fmt.printfln("size_of(Transform)   = %v", size_of(Transform))
	fmt.printfln("size_of(Entity)      = %v", size_of(Entity))
	fmt.printfln("size_of(PlainEntity) = %v", size_of(PlainEntity))
	fmt.printfln("Entity == PlainEntity layout? %v", size_of(Entity) == size_of(PlainEntity))
	fmt.printfln("offset_of(Entity, xform) = %v", offset_of(Entity, xform))
	fmt.printfln("offset_of(Entity, hp)    = %v", offset_of(Entity, hp))
}
