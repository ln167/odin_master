#+feature dynamic-literals
package main

// No flags.txt -> default TELE=off. dump must compile to nothing: build ok,
// run clean, zero bytes (Hard rule #5: off = gone).

import "odin_lib:tele"

Color :: enum {
	Red,
	Green,
	Blue,
}

Vec2 :: [2]f32

Particle :: struct {
	pos, vel: Vec2,
	color:    Color,
	name:     string,
	tags:     []int,
	meta:     map[string]int,
	hp:       int,
	alive:    bool,
}

main :: proc() {
	p := Particle{
		pos   = {400, 100},
		vel   = {1.5, -2.0},
		color = .Green,
		name  = "player",
		tags  = {1, 2, 3},
		meta  = {"str" = 10},
		hp    = 100,
		alive = true,
	}
	tele.dump(p)
}
