package game

import "core:fmt"
import "core:os"
import sdl "vendor:sdl3"

@(export)
game_init_window :: proc() {
	if !sdl.Init({.VIDEO}) {
		fmt.eprintfln("[lab] sdl.Init failed: %s", sdl.GetError())
		os.exit(1)
	}
}

@(export)
game_init :: proc() {
	g_mem = new(Game_Memory)
	g_mem.window = sdl.CreateWindow("lab", WIN_W, WIN_H, {})
	g_mem.renderer = sdl.CreateRenderer(g_mem.window, nil)
	assert(g_mem.window != nil && g_mem.renderer != nil, string(sdl.GetError()))
	ui_init()
}

@(export)
game_update :: proc() {
	ev: sdl.Event
	for sdl.PollEvent(&ev) {
		ui_event(&ev)
		if ev.type == .QUIT {
			g_mem.quit = true
		}
	}
	ui_frame()
	sdl.SetRenderDrawColor(g_mem.renderer, 22, 22, 30, 255)
	sdl.RenderClear(g_mem.renderer)
	ui_draw()
	sdl.RenderPresent(g_mem.renderer)
	g_mem.counter += 1
	free_all(context.temp_allocator)
}

@(export)
game_should_run :: proc() -> bool {
	return !g_mem.quit
}

@(export)
game_shutdown :: proc() {
	ui_shutdown()
	sdl.DestroyRenderer(g_mem.renderer)
	sdl.DestroyWindow(g_mem.window)
	free(g_mem)
}

@(export)
game_shutdown_window :: proc() {
	sdl.Quit()
}

@(export)
game_memory :: proc() -> rawptr {
	return g_mem
}

@(export)
game_memory_size :: proc() -> int {
	return size_of(Game_Memory)
}

@(export)
game_hot_reloaded :: proc(mem_ptr: rawptr) {
	g_mem = (^Game_Memory)(mem_ptr)
	ui_reattach() // ImGui's current-context static is per-DLL; point it back at ours
	fmt.printfln("[lab] reloaded; counter survived = %d", g_mem.counter)
}
