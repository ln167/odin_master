package main

// Lesson 18 HTML probe: the size of the persistent-state struct the host owns.
// This is the EXACT Game_Memory from the lesson's template
// (content/domains/odin/templates/game/src/game/game_memory.odin). Its
// size_of is the byte width the host allocates once and reinterprets across
// every reload — and the number the shape-guard compares old-vs-new.
import "core:fmt"
import "core:mem"

Game_Memory :: struct {
	frame:       u64,
	counter:     int,
	last_reload: f64,
	allocator:   mem.Allocator,
}

main :: proc() {
	fmt.println("size_of(Game_Memory) =", size_of(Game_Memory))
	fmt.println("size_of(u64)         =", size_of(u64))
	fmt.println("size_of(int)         =", size_of(int))
	fmt.println("size_of(f64)         =", size_of(f64))
	fmt.println("size_of(mem.Allocator) =", size_of(mem.Allocator))
}
