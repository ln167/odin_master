package main

import "core:fmt"


// 1. DECLARE THE VARIANTS AND THE UNION.
//
//    Declare three structs at package scope (here, above main):
//
//        Circle   :: struct { r: f32 }
//        Square   :: struct { side: f32 }
//        Triangle :: struct { base, height: f32 }
//
//    Then declare a Shape union that lists those three as its variants:
//
//        Shape :: union { Circle, Square, Triangle }
//
//    Package scope is the right choice because these types are shared
//    between the `area` proc and `main`.


// TODO: declare Circle, Square, Triangle, and Shape here


// 3. WRITE THE AREA PROC.
//
//    Declare a proc `area :: proc(s: Shape) -> f32` that type-switches
//    on `s` and returns the area for each variant:
//
//        case Circle:   return 3.14159 * v.r * v.r
//        case Square:   return v.side * v.side
//        case Triangle: return 0.5 * v.base * v.height
//        case:          return 0      // catches nil
//
//    Use `switch v in s { ... }`. Inside each `case` arm, `v` is
//    narrowed to the variant type, so `v.r`, `v.side`, etc. work with
//    no cast. Keep the plain `case:` arm; without it the compiler will
//    complain that you haven't handled the nil state.


// TODO: declare area here


main :: proc() {
	// 2. CONSTRUCT ONE OF EACH VARIANT.
	//
	//    Declare an array of three Shapes initialized with one of each
	//    variant:
	//
	//        shapes := [3]Shape{
	//            Circle{r = 2},
	//            Square{side = 3},
	//            Triangle{base = 4, height = 5},
	//        }
	//
	//    Assigning a `Circle` value to a `Shape` slot works directly
	//    because the compiler can see `Circle` is one of Shape's
	//    variants; the hidden tag is set for you.


	// 4. LOOP AND PRINT.
	//
	//    Iterate `for sh in shapes` and print one line per shape,
	//    formatted with `fmt.printfln`:
	//
	//        area = 12.566  variant: Circle{r = 2}
	//        area = 9.000  variant: Square{side = 3}
	//        area = 10.000  variant: Triangle{base = 4, height = 5}
	//
	//    Use the format string `"area = %.3f  variant: %v"` and pass
	//    `area(sh)` then `sh`. `%v` is the default formatter and prints
	//    a union as the active variant's struct literal.


	// 5. SAFELY EXTRACT ONE VARIANT.
	//
	//    Declare `s: Shape = Circle{r = 7}` and use the optional-ok
	//    type assertion to extract the Circle:
	//
	//        if c, ok := s.(Circle); ok {
	//            fmt.printfln("it was a Circle with r=%.1f", c.r)
	//        }
	//
	//    The `, ok` form is the safe one - it returns `(zero, false)`
	//    if `s` does not hold a Circle, instead of panicking. The
	//    single-result form `c := s.(Circle)` would panic on mismatch.


	// 6. OBSERVE THE NIL VARIANT.
	//
	//    Declare a Shape with no initializer:
	//
	//        none: Shape
	//
	//    A union with no `#no_nil` directive starts in the nil state -
	//    no variant is active. Print:
	//
	//        none == nil -> true  area: 0
	//
	//    Use `fmt.println("none == nil ->", none == nil, " area:",
	//    area(none))`. The `case:` arm of your switch handles the nil
	//    case and returns 0. (Note the single leading space in " area:" -
	//    `fmt.println` adds one space between arguments, so a single
	//    leading space gives you two visible spaces in the output.)

	// Run with: odin run main.odin -file
	// Compare your output to expected-output.txt.
}
