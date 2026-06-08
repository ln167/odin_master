package main

// Lesson 10b "break it" #3: subtract Seconds from Meters. They are distinct, so
// the operation is rejected -- the Mars-Orbiter check.
import "core:fmt"

Meters :: distinct f32
Seconds :: distinct f32

main :: proc() {
	distance := Meters(100)
	time := Seconds(4)
	bad := distance - time
	fmt.println(bad)
}
