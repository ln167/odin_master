package game

import sdl "vendor:sdl3"

FB_W :: 800
FB_H :: 600

Particle :: struct {
	pos, pos_prev: [2]f32,
}

Game_Memory :: struct {
	frame:    u64,
	counter:  int,
	quit:     bool,
	window:   ^sdl.Window,
	renderer: ^sdl.Renderer,
	texture:  ^sdl.Texture,
	pixels:   []u32,
	particle: Particle,
}

g_mem: ^Game_Memory
