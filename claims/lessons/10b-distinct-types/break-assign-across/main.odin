package main

// Lesson 10b "break it" #1: assign across sibling distinct types. Player_Id and
// Monster_Id share the underlying int but are distinct identities -> won't assign.
Player_Id :: distinct int
Monster_Id :: distinct int

main :: proc() {
	p1 := Player_Id(1)
	m1 := Monster_Id(1)
	p1 = m1
	_ = p1
}
