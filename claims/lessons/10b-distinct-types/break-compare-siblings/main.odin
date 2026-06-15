package main

// Lesson 10b "break it": compare two DIFFERENT distinct types backed by the same
// underlying int. Same bytes, different identities -> the compiler refuses.
import "core:fmt"

Player_Id :: distinct int
Monster_Id :: distinct int

main :: proc() {
	p1 := Player_Id(1)
	m1 := Monster_Id(1)
	same := p1 == m1
	fmt.println(same)
}
