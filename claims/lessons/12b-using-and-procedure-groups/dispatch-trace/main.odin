package main

// Lesson 12b HTML probe (Level 3 — procedure-group dispatch).
// `area :: proc{area_circle, area_square, area_triangle}` bundles three
// type-specialized procs under one name. Each member announces which one it is,
// so calling `area(x)` with three different argument types produces a literal
// dispatch trace: the compiler picked a DIFFERENT concrete proc for each type,
// resolved entirely at compile time. The last two lines show the original member
// name still works directly and yields the identical result as the group call.
import "core:fmt"

Circle :: struct {
	radius: f32,
}
Square :: struct {
	side: f32,
}
Triangle :: struct {
	base, height: f32,
}

area_circle :: proc(c: Circle) -> f32 {
	fmt.println("  -> dispatched to area_circle")
	return 3.14159 * c.radius * c.radius
}
area_square :: proc(s: Square) -> f32 {
	fmt.println("  -> dispatched to area_square")
	return s.side * s.side
}
area_triangle :: proc(t: Triangle) -> f32 {
	fmt.println("  -> dispatched to area_triangle")
	return 0.5 * t.base * t.height
}

area :: proc{area_circle, area_square, area_triangle}

main :: proc() {
	c := Circle{radius = 1}
	s := Square{side = 3}
	t := Triangle{base = 4, height = 5}

	fmt.println("area(c):")
	r1 := area(c)
	fmt.println("area(s):")
	r2 := area(s)
	fmt.println("area(t):")
	r3 := area(t)

	fmt.printfln("results: %v %v %v", r1, r2, r3)

	// The group is an alias; the member name still works directly and is the
	// exact same call the compiler chose for area(c).
	fmt.println("area_circle(c) directly:")
	r4 := area_circle(c)
	fmt.printfln("group result == direct result? %v", r1 == r4)
}
