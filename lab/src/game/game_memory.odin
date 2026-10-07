package game

import sdl "vendor:sdl3"

WIN_W :: 1280
WIN_H :: 720

Game_Memory :: struct {
	counter:  int,
	quit:     bool,
	window:   ^sdl.Window,
	renderer: ^sdl.Renderer,
	imgui:    rawptr,
}

g_mem: ^Game_Memory
