package main

import "core:fmt"
import "core:math/rand"

roll_drop :: proc() -> (item_name: string, luck_drop: bool) {
	rand: f32 = rand.float32()

	// This is one way to do the if statements, is there another way?
	if (rand > 0.30) {
		item_name = "Rusty Dagger"
		luck_drop = false
	} else if (rand <= 0.30 && rand > 0.05) {
		item_name = "Silver ring"
		luck_drop = false
	} else if (rand <= 0.05) {
		item_name = "Dragon Egg"
		luck_drop = true
	}


	return item_name, luck_drop
}

roll_damage :: proc() -> (total: int, crit_damage: bool) {
	rand_1: int = rand.int_range(1, 6)
	rand_2: int = rand.int_range(1, 6)
	total = rand_1 + rand_2
	crit_damage = rand_1 == 6 && rand_2 == 6 ? true : false

	return total, crit_damage
}

test_proc :: proc() {
	for i in 1 ..= 5 {
		fmt.println(i)

	}
}

main :: proc() {
	fmt.println("Rolling...")
	item_name, luck_drop := roll_drop()
	fmt.println("Item name: ", item_name)
	fmt.println("Was a lucky drop? ", luck_drop)

	total, crit_damage := roll_damage()
	fmt.println("Total: ", total)
	fmt.println("Was crit damage?", crit_damage)
}

