package main

import "odin_lib:tele"

P :: struct {
	hp:  int,
	pos: [2]f32,
}

main :: proc() {
	x := 42
	tele.capture("x", x)
	nums := []int{2, 4, 6}
	tele.capture("nums", nums)
	p := P{hp = 90, pos = {400, 100}}
	tele.capture("p", p)
	px := &x
	tele.capture("px", px) // ^int -> pointee 42, never an ASLR address
	npx: ^int = nil
	tele.capture("npx", npx) // nil pointer -> nil, not an address
	m := make(map[string]int)
	defer delete(m)
	m["a"] = 1
	m["b"] = 2
	tele.capture("m", m) // map -> elided count, iteration order never leaked
}
