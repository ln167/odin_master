package main

// Lesson 02 HTML probe: %T reports each value's static type; fmt.println uses
// each type's default formatting; and a fresh variable holds its ZERO value
// (0 / 0 / false / "") -- never garbage.
import "core:fmt"

main :: proc() {
	a := 42       // int
	b: f32 = 3.14 // f32
	c := "ok"     // string
	d := true     // bool
	r := 'A'      // rune

	fmt.printf("%T %T %T %T %T\n", a, b, c, d, r)
	fmt.println(a, b, c, d, r)

	zi: int
	zf: f32
	zb: bool
	zs: string
	fmt.println("zero:", zi, zf, zb, zs == "")
}
