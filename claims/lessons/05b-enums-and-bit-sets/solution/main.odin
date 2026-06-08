package main

import "core:fmt"

Element :: enum {
	Fire,
	Ice,
	Lightning,
	Physical,
}

Key :: enum {
	Brass,
	Silver,
	Gold,
	Crystal,
	Skeleton,
}

describe :: proc(e: Element) -> string {
	switch e {
	case .Fire:
		return "hot"
	case .Ice:
		return "cold"
	case .Lightning:
		return "fast"
	case .Physical:
		return "blunt"
	}
	return ""
}

main :: proc() {
	// 1. iterate the enum, integer value first.
	for e in Element {
		fmt.printf("%d %v\n", int(e), e)
	}

	// 2. exhaustive switch via describe.
	for e in Element {
		fmt.printf("%v is %v\n", e, describe(e))
	}

	// 3. bit_set membership.
	resistances: bit_set[Element] = {.Fire, .Ice}
	for e in Element {
		label := fmt.tprintf("%v resistant?", e)
		fmt.printf("%-20s %v\n", label, e in resistances)
	}

	// 4. set operations.
	a := bit_set[Element]{.Fire, .Ice}
	b := bit_set[Element]{.Fire, .Physical}
	fmt.println("a | b =", a | b)
	fmt.println("a & b =", a & b)
	fmt.println("a - b =", a - b)

	// 5. door/key subset check.
	player_keys: bit_set[Key] = {.Brass, .Silver, .Gold, .Crystal}
	door_needs: bit_set[Key] = {.Silver, .Gold}
	fmt.println("Can open door?", door_needs <= player_keys)
}
