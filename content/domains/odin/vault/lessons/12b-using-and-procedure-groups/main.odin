package main

import "core:fmt"


// Transform is a tiny "position component" that other types will embed.
// Three floats. Declared at package scope because Entity (below) needs
// to embed it.
Transform :: struct {
	x, y, z: f32,
}


// Entity uses `using xform: Transform` to promote Transform's fields
// (x, y, z) onto Entity itself. Notice the named field `xform` is
// still there - so `e.xform.x` and `e.x` both work and mean the same
// thing. The promotion is purely a source-level rewrite.
Entity :: struct {
	using xform: Transform,
	hp:          int,
}


// Three shape types for the procedure-group tasks. Plain structs with
// the geometry each one needs to compute its area.
Circle :: struct {
	radius: f32,
}

Square :: struct {
	side: f32,
}

Triangle :: struct {
	base, height: f32,
}


// TASK 4 setup. Declare three area procedures, each taking ONE shape
// type and returning a f32. Use the formulas:
//     area_circle:   PI * r * r
//     area_square:   side * side
//     area_triangle: 0.5 * base * height
//
// Use 3.14159 as a literal for PI (no import). Keep the bodies on one
// line, like:
//     area_circle :: proc(c: Circle) -> f32 { return 3.14159 * c.radius * c.radius }
//
// Declare all three, then bind them into a procedure group named
// `area` with the syntax:
//     area :: proc{area_circle, area_square, area_triangle}
//
// The order inside the braces is the order the compiler considers
// them; for non-overlapping parameter types like ours, the order
// doesn't matter for resolution, only for the dispatch error message
// if no member matches.

// TODO: declare area_circle, area_square, area_triangle, and the
// `area` proc group at package scope below.


// TASK 3 helper. Takes an Entity and prints its fields. The proc
// parameter uses `using e: Entity`, which promotes Entity's fields
// (x, y, z, hp - itself a chain through the promoted Transform) into
// the proc body. Inside the body you can write `x` and `hp` directly
// without `e.` in front of them.
print_entity :: proc(using e: Entity) {
	fmt.printfln("entity at (%v, %v, %v) hp=%v", x, y, z, hp)
}


main :: proc() {
	// 1. STRUCT FIELD PROMOTION.
	//
	//    Declare an Entity literal with x=1, y=2, z=3, hp=100. Two
	//    ways work; pick whichever you prefer to type:
	//
	//      e := Entity{xform = Transform{x = 1, y = 2, z = 3}, hp = 100}
	//      e := Entity{xform = {1, 2, 3}, hp = 100}
	//
	//    Then access the PROMOTED fields directly through the outer
	//    Entity. Print them like:
	//
	//        fmt.println("e.x =", e.x, " e.y =", e.y, " e.z =", e.z, " e.hp =", e.hp)
	//
	//    The point of the exercise: `e.x` reads through `xform`
	//    automatically. There is no `e.x` field on the literal Entity
	//    type; the compiler rewrote it to `e.xform.x` at compile time.


	// 2. ENUM LABELS INTO LOCAL SCOPE.
	//
	//    Declare a Color enum here in the proc body:
	//
	//        Color :: enum { Red, Green, Blue }
	//
	//    Then `using Color` to bring its labels into scope. Declare a
	//    variable `c: Color = Red` (note: NOT `Color.Red`, NOT `.Red`
	//    - just the bare label, which is the whole point of `using`
	//    on an enum). Then write a switch on c that handles each
	//    case and prints what the color "feels like":
	//
	//        Red   -> "warm"
	//        Green -> "calm"
	//        Blue  -> "cool"
	//
	//    Print in the form: `Red feels warm`. Inside the case labels
	//    you can write `case Red:` directly, again because of the
	//    `using`.


	// 3. PROC PARAMETER PROMOTION.
	//
	//    Reuse the Entity `e` from task 1. Call `print_entity(e)`.
	//    Look at the implementation of print_entity above this main -
	//    notice the parameter is `using e: Entity` and the body refers
	//    to `x`, `y`, `z`, `hp` with no `e.` prefix. The output should
	//    look like:
	//
	//        entity at (1, 2, 3) hp=100


	// 4. PROCEDURE GROUP DISPATCH.
	//
	//    Declare the three shapes:
	//
	//        c := Circle{radius = 1}
	//        s := Square{side = 3}
	//        t := Triangle{base = 4, height = 5}
	//
	//    Then call `area(c)`, `area(s)`, `area(t)` - the same name,
	//    three different argument types. The compiler picks the
	//    matching member of the proc group at each call site, with
	//    zero runtime overhead. Print:
	//
	//        area(circle r=1)        = 3.14159
	//        area(square side=3)     = 9
	//        area(triangle 4x5)      = 10
	//
	//    Use `fmt.printfln` with a format string. For the float, use
	//    `%v` and let fmt do the default formatting; that matches
	//    expected-output.txt. For the integer-valued results, the
	//    return type is still f32, so they print as `9` and `10`
	//    (whole numbers).


	// 5. PROC GROUP TYPE ERROR (comment-only - DO NOT ACTUALLY WRITE).
	//
	//    If you uncommented the following line, the file would not
	//    compile because no member of the `area` group accepts a
	//    string:
	//
	//        // area("hello")
	//
	//    The compiler would list every candidate it considered
	//    (area_circle, area_square, area_triangle) and explain that
	//    none of them matches a `string` argument. This is what
	//    procedure groups give you in place of C#-style overload
	//    resolution: a closed, listed, unambiguous candidate set.
	//
	//    Just print a confirmation line so you can see the exercise
	//    finished:
	//
	//        fmt.println("proc group rejected non-shape types at compile time")

	// Run with: odin run main.odin -file
	// Compare your output to expected-output.txt.
}
