package game

import "core:mem"

Game_Memory :: struct {
	frame:       u64,
	counter:     int,
	last_reload: f64,
	allocator:   mem.Allocator,
}

g_mem: ^Game_Memory
