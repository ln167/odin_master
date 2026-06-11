package game

import sdl "vendor:sdl3"

FB_W :: 800
FB_H :: 600
PANEL_W :: 280 // debug section right of the sim viewport — ImGui never overlays the game

PARTICLE_START :: [2]f32{400, 100}

Particle :: struct {
	pos, pos_prev: [2]f32,
}

// Plain-data trajectory state. clone = value copy, hash = raw bytes
// (game_sim_hash) — so no pointers, no handles, nothing allocated.
// Padding bytes stay zero because Game_Memory comes from new() and fields
// are only ever written whole.
Sim :: struct {
	frame:    u64,
	particle: Particle,
	tiles:    [4]Particle,
	paused:   bool,
	step:     bool,
	arena:    bool,
}

Game_Memory :: struct {
	sim:        Sim,
	counter:    int,
	quit:       bool,
	hud:        bool,
	flash:      int, // vote feedback: frames left of committed-tile border flash
	flash_tile: int,
	vote_sel:   int, // arena double-tap: 1-4 = selected (steady highlight), 0 = none
	voted_round: u64, // last round a vote was committed for (HUD: "waiting for next round")
	window:     ^sdl.Window,
	renderer:   ^sdl.Renderer,
	texture:    ^sdl.Texture,
	pixels:     []u32,
	bindings:   [dynamic]Binding,
	imgui:      rawptr, // ^im.Context once the ImGui spike lands (opaque now so the shape is final)
}

g_mem: ^Game_Memory
