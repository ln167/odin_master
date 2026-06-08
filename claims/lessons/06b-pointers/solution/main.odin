package main

import "core:fmt"

Player :: struct {
	name: string,
	hp:   int,
}

heal :: proc(p: ^Player, amount: int) {
	p.hp += amount
}

main :: proc() {
	// 1. an int and a pointer to it.
	x: int = 42
	p := &x
	fmt.println("x =", x)
	fmt.println("addr of x =", p)
	fmt.println("p^ =", p^)

	// 2. mutate through the pointer (aliasing).
	p^ = 100
	fmt.println("after p^ = 100, x =", x)

	// 3. pointer to a struct, auto-deref.
	player := Player{name = "Ada", hp = 75}
	pp := &player
	pp.hp = 50
	fmt.println("player after pp.hp = 50:", player)

	// 4. pass a pointer to a proc, observe mutation.
	ben := Player{name = "Benjamin", hp = 20}
	heal(&ben, 30)
	fmt.println("ben after heal:", ben)

	// 5. heap allocation with new / defer free.
	heap_player := new(Player)
	defer free(heap_player)
	heap_player.name = "Grace"
	heap_player.hp = 200
	fmt.println("heap_player:", heap_player^)

	// 6. multi-pointer taster.
	nums: [4]int = {10, 20, 30, 40}
	mp: [^]int = raw_data(nums[:])
	fmt.println("mp[0] =", mp[0])
	fmt.println("mp[3] =", mp[3])
	tail := mp[1:3]
	fmt.println("tail:", tail)
}
