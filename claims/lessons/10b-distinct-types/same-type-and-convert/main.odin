package main

// Lesson 10b ground truth: operations BETWEEN two values of the SAME distinct
// type work as if they were the underlying type (result keeps the distinct type),
// an untyped literal slots in, and explicit conversion through the underlying
// type is how you legitimately mix or unwrap.
import "core:fmt"

Player_Id :: distinct int
Meters :: distinct f32
Seconds :: distinct f32

main :: proc() {
	p1 := Player_Id(1)
	p2 := Player_Id(2)

	// same-distinct-type arithmetic/comparison: result stays Player_Id / bool.
	sum := p1 + p2
	fmt.printfln("Player_Id(1) + Player_Id(2) = %d  (type stays Player_Id)", sum)
	fmt.printfln("Player_Id(1) < Player_Id(2) = %v", p1 < p2)
	fmt.printfln("Player_Id(1) == Player_Id(2) = %v", p1 == p2)

	// untyped literal adapts to the distinct neighbor.
	next := p1 + 1
	fmt.printfln("Player_Id(1) + 1 = %d  (untyped literal adapts)", next)

	// explicit conversion to the underlying type (a type-checker no-op).
	raw := int(p1)
	fmt.printfln("int(Player_Id(1)) = %d  (unwrap to underlying int)", raw)

	// units: dividing Meters by Seconds is not Meters and not Seconds, so you
	// convert both to the bare f32 and accept a plain f32 result, no unit attached.
	distance := Meters(100)
	time := Seconds(4)
	v := f32(distance) / f32(time)
	fmt.printfln("f32(Meters(100)) / f32(Seconds(4)) = %v  (plain f32, no unit)", v)
}
