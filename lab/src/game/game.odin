package game

import "core:fmt"
import "core:mem"
import "core:os"
import "core:slice"
import sdl "vendor:sdl3"

API_VERSION :: 4

@(export)
game_api_version :: proc() -> int {
	return API_VERSION
}

@(export)
game_init_window :: proc() {
	if !sdl.Init({.VIDEO}) {
		fmt.eprintfln("[lab] sdl.Init failed: %s", sdl.GetError())
		return
	}
	fmt.println("[lab] init window")
}

@(export)
game_init :: proc() {
	g_mem = new(Game_Memory)
	g_mem.window = sdl.CreateWindow("lab", 800, 600, {})
	if g_mem.window == nil {
		fmt.eprintfln("[lab] CreateWindow failed: %s", sdl.GetError())
		return
	}
	g_mem.renderer = sdl.CreateRenderer(g_mem.window, nil)
	if g_mem.renderer == nil {
		fmt.eprintfln("[lab] CreateRenderer failed: %s", sdl.GetError())
		return
	}
	g_mem.texture = sdl.CreateTexture(g_mem.renderer, .RGBA8888, .STREAMING, FB_W, FB_H)
	if g_mem.texture == nil {
		fmt.eprintfln("[lab] CreateTexture failed: %s", sdl.GetError())
		return
	}
	g_mem.pixels = make([]u32, FB_W * FB_H)
	g_mem.particle.pos      = {400, 100}
	g_mem.particle.pos_prev = {400, 100}
	paint_initial()
	fmt.printfln("[lab] init: window=%p renderer=%p texture=%p pixels=%d", g_mem.window, g_mem.renderer, g_mem.texture, len(g_mem.pixels))
}

@(export)
game_update :: proc() -> bool {
	ev: sdl.Event
	for sdl.PollEvent(&ev) {
		if ev.type == .QUIT {
			g_mem.quit = true
		}
	}
	slice.fill(g_mem.pixels, u32(0x202030FF))
	step_particle(&g_mem.particle)
	if g_mem.frame % 60 == 0 {
		fmt.printfln("[lab] frame=%d particle.y=%.2f", g_mem.frame, g_mem.particle.pos.y)
	}
	px := int(g_mem.particle.pos.x) - 2
	py := int(g_mem.particle.pos.y) - 2
	draw_rect_filled(g_mem.pixels, FB_W, FB_H, px, py, 4, 4, 0xFFFFFFFF)
	tex_pixels: rawptr
	pitch: i32
	if sdl.LockTexture(g_mem.texture, nil, &tex_pixels, &pitch) {
		dst := ([^]u8)(tex_pixels)
		src := ([^]u8)(raw_data(g_mem.pixels))
		row_bytes := FB_W * 4
		for y in 0 ..< FB_H {
			mem.copy(&dst[y * int(pitch)], &src[y * row_bytes], row_bytes)
		}
		sdl.UnlockTexture(g_mem.texture)
	}
	sdl.RenderTexture(g_mem.renderer, g_mem.texture, nil, nil)
	sdl.RenderPresent(g_mem.renderer)
	g_mem.frame += 1
	g_mem.counter += 1
	return true
}

@(export)
game_should_run :: proc() -> bool {
	return !g_mem.quit
}

@(export)
game_shutdown :: proc() {
	buf: [8]u8
	if os.get_env_buf(buf[:], "LAB_DUMP_FRAME") == "1" {
		if err := save_ppm("lab_dump.ppm", g_mem.pixels, FB_W, FB_H); err == nil {
			fmt.println("[lab] dumped lab_dump.ppm")
		} else {
			fmt.eprintfln("[lab] save_ppm failed: %v", err)
		}
	}
	delete(g_mem.pixels)
	if g_mem.texture != nil {
		sdl.DestroyTexture(g_mem.texture)
	}
	if g_mem.renderer != nil {
		sdl.DestroyRenderer(g_mem.renderer)
	}
	if g_mem.window != nil {
		sdl.DestroyWindow(g_mem.window)
	}
	free(g_mem)
}

@(export)
game_shutdown_window :: proc() {
	sdl.Quit()
	fmt.println("[lab] shutdown window")
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
	paint_initial()
	fmt.printfln("[lab] reloaded; counter survived = %d", g_mem.counter)
}

paint_initial :: proc() {
	slice.fill(g_mem.pixels, u32(0x202030FF))
	set_pixel(g_mem.pixels, FB_W, FB_H, 200, 50, 0xFFFFFFFF)
}
