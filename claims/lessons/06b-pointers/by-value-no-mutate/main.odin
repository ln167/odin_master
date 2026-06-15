package main

// Lesson 06b HTML probe (Level 2): the by-pointer vs by-value contrast.
// heal_ptr takes ^Player -> caller and callee share one Player, the write sticks.
// heal_copy takes Player -> the callee gets a COPY, mutates it, the copy is
// discarded at return, and the caller's struct is unchanged. Same body, the
// only difference is the caret. This is what makes the pointer earn its keep.
import "core:fmt"

Player :: struct {
	name: string,
	hp:   int,
}

heal_ptr :: proc(p: ^Player, amount: int) {
	p.hp += amount
}

heal_copy :: proc(p: Player, amount: int) {
	q := p           // parameters are immutable; shadow to mutate the copy
	q.hp += amount
}

main :: proc() {
	a := Player{name = "Ada", hp = 20}
	heal_ptr(&a, 30)
	fmt.println("by pointer:", a) // hp 50 -- the write reached the caller

	b := Player{name = "Ben", hp = 20}
	heal_copy(b, 30)
	fmt.println("by value:  ", b) // hp 20 -- unchanged, the copy was discarded
}
