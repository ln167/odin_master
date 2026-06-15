package main

// Lesson 18 HTML probe: the byte basis of the shape-guard.
//
// The host keeps ONE allocation of the persistent struct and reinterprets its
// bytes with whatever code is loaded. That only works if both code versions
// agree on the layout. The host guards this by comparing size_of across the
// swap: next.memory_size() != api.memory_size() => skip the swap.
//
// Here are the two layouts that comparison is built on. Game_Memory_V1 is the
// shipped struct (40 bytes). Add one int field and the size moves to 48 — a
// DIFFERENT number, so old != new, so the guard fires and refuses the swap.
import "core:fmt"
import "core:mem"

Game_Memory_V1 :: struct {
	frame:       u64,
	counter:     int,
	last_reload: f64,
	allocator:   mem.Allocator,
}

// Same struct with one field appended (the classic "add some state" edit).
Game_Memory_V2 :: struct {
	frame:       u64,
	counter:     int,
	last_reload: f64,
	allocator:   mem.Allocator,
	score:       int, // <- appended this session
}

main :: proc() {
	v1 := size_of(Game_Memory_V1)
	v2 := size_of(Game_Memory_V2)
	fmt.println("memory_size (old code) =", v1)
	fmt.println("memory_size (new code) =", v2)
	fmt.println("shape changed?         =", v1 != v2)
}
