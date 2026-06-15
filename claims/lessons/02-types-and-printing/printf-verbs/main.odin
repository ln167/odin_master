package main

// Lesson 02 HTML probe: the SAME value printed under many printf verbs. The
// number 255 is one value; the verb decides how its bits are rendered. %T and
// typeid prints show the static type, not the value.
import "core:fmt"

main :: proc() {
	n: int = 255
	fmt.printf("%%d  -> %d\n", n)
	fmt.printf("%%v  -> %v\n", n)
	fmt.printf("%%x  -> %x\n", n)
	fmt.printf("%%X  -> %X\n", n)
	fmt.printf("%%o  -> %o\n", n)
	fmt.printf("%%b  -> %b\n", n)
	fmt.printf("%%c  -> %c\n", n)
	fmt.printf("%%T  -> %T\n", n)

	r: rune = 'A'
	fmt.printf("rune %%v -> %v\n", r)
	fmt.printf("rune %%d -> %d\n", r)
	fmt.printf("rune %%c -> %c\n", r)

	f: f32 = 3.14159
	fmt.printf("f32 %%v   -> %v\n", f)
	fmt.printf("f32 %%.2f -> %.2f\n", f)
	fmt.printf("f32 %%e   -> %e\n", f)

	s := "hi"
	fmt.printf("str %%v -> %v\n", s)
	fmt.printf("str %%q -> %q\n", s)
	fmt.printf("str %%T -> %T\n", s)
}
