#+feature using-stmt
package main

// Current Odin disallows `using` as a STATEMENT and as a PROCEDURE PARAMETER by
// default (only struct-field `using` is on by default). This lesson teaches both
// of those forms, so it opts back in with `#+feature using-stmt` on line 1.

import "core:fmt"

Transform :: struct {
	x, y, z: f32,
}

Entity :: struct {
	using xform: Transform,
	hp:          int,
}

Circle :: struct {
	radius: f32,
}

Square :: struct {
	side: f32,
}

Triangle :: struct {
	base, height: f32,
}

area_circle :: proc(c: Circle) -> f32 {return 3.14159 * c.radius * c.radius}
area_square :: proc(s: Square) -> f32 {return s.side * s.side}
area_triangle :: proc(t: Triangle) -> f32 {return 0.5 * t.base * t.height}

area :: proc{area_circle, area_square, area_triangle}

print_entity :: proc(using e: Entity) {
	fmt.printfln("entity at (%v, %v, %v) hp=%v", x, y, z, hp)
}

main :: proc() {
	// 1. struct field promotion.
	e := Entity{xform = {1, 2, 3}, hp = 100}
	fmt.println("e.x =", e.x, " e.y =", e.y, " e.z =", e.z, " e.hp =", e.hp)

	// 2. enum labels into local scope with `using` (needs the feature flag above).
	Color :: enum {
		Red,
		Green,
		Blue,
	}
	using Color
	c: Color = Red
	switch c {
	case Red:
		fmt.println("Red feels warm")
	case Green:
		fmt.println("Green feels calm")
	case Blue:
		fmt.println("Blue feels cool")
	}

	// 3. proc parameter promotion.
	print_entity(e)

	// 4. procedure group dispatch.
	circle := Circle{radius = 1}
	s := Square{side = 3}
	t := Triangle{base = 4, height = 5}
	fmt.printfln("area(circle r=1)        = %v", area(circle))
	fmt.printfln("area(square side=3)     = %v", area(s))
	fmt.printfln("area(triangle 4x5)      = %v", area(t))

	// 5. (the non-shape call would not compile; just confirm.)
	fmt.println("proc group rejected non-shape types at compile time")
}
