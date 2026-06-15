package main

// Lesson 10b "break it": pass a Monster_Id where a proc wants a Player_Id. Both
// are int-shaped, but the call site is a compile error -- the wrong-id bug the
// feature exists to catch.
import "core:fmt"

Player_Id :: distinct int
Monster_Id :: distinct int

damage_player :: proc(target: Player_Id, amount: int) {
	fmt.printfln("player %d takes %d damage", target, amount)
}

main :: proc() {
	m1 := Monster_Id(1)
	damage_player(m1, 10)
}
