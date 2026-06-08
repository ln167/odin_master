package main

import "core:fmt"
import "core:strings"

Player_Id :: distinct int
Monster_Id :: distinct int

Meters :: distinct f32
Seconds :: distinct f32

Sanitized_String :: distinct string

sanitize :: proc(raw: string) -> (Sanitized_String, bool) {
	trimmed := strings.trim_space(raw)
	if len(trimmed) == 0 {
		return "", false
	}
	return Sanitized_String(trimmed), true
}

damage_player :: proc(target: Player_Id, amount: int) {
	fmt.printfln("player %d takes %d damage", target, amount)
}

main :: proc() {
	// 1. one of each id.
	p1 := Player_Id(1)
	m1 := Monster_Id(1)
	fmt.printfln("p1=%d m1=%d", p1, m1)

	// 2. can't assign across (narrated; the real line wouldn't compile).
	fmt.println("rule: p1 = m1 would not compile (distinct types do not assign across)")

	// 3. damage with the right type.
	damage_player(p1, 10)
	fmt.println("rule: damage_player(m1, 10) would not compile (Monster_Id is not Player_Id)")

	// 4. units.
	distance := Meters(100)
	time := Seconds(4)
	fmt.printfln("distance=%vm time=%vs", distance, time)
	v := f32(distance) / f32(time)
	fmt.printfln("velocity (raw f32): %v m/s", v)
	fmt.println("rule: distance - time would not compile (Meters and Seconds are distinct)")

	// 5. cast back to the underlying type.
	fmt.printfln("serialize p1 as raw int: %d", int(p1))

	// 6. the sanitized-string pattern.
	good, ok1 := sanitize("  hello  ")
	bad, ok2 := sanitize("   ")
	fmt.printfln("good=%q ok=%v", good, ok1)
	fmt.printfln("bad=%q ok=%v", bad, ok2)
}
