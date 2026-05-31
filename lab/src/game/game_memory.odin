package game

import sdl "vendor:sdl3"

FB_W :: 800
FB_H :: 600

PARTICLE_START :: [2]f32{400, 100}

Particle :: struct {
	pos, pos_prev: [2]f32,
}

Game_Memory :: struct {
	frame:    u64,
	counter:  int,
	quit:     bool,
	paused:   bool,
	step:     bool,
	window:   ^sdl.Window,
	renderer: ^sdl.Renderer,
	texture:  ^sdl.Texture,
	pixels:   []u32,
	particle: Particle,
	bindings: [dynamic]Binding,
}

g_mem: ^Game_Memory
