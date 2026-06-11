package game

import "core:fmt"
import "core:hash"
import "core:mem"
import "core:os"
import "core:slice"
import sdl "vendor:sdl3"

@(export)
game_init_window :: proc() {
	if !sdl.Init({.VIDEO}) {
		fmt.eprintfln("[lab] sdl.Init failed: %s", sdl.GetError())
		os.exit(1)
	}
	fmt.println("[lab] init window")
}

@(export)
game_init :: proc() {
	sim_init()
	g_mem.window = sdl.CreateWindow("lab", FB_W + PANEL_W, FB_H, {})
	if g_mem.window == nil {
		fmt.eprintfln("[lab] CreateWindow failed: %s", sdl.GetError())
		os.exit(1)
	}
	g_mem.renderer = sdl.CreateRenderer(g_mem.window, nil)
	if g_mem.renderer == nil {
		fmt.eprintfln("[lab] CreateRenderer failed: %s", sdl.GetError())
		os.exit(1)
	}
	g_mem.texture = sdl.CreateTexture(g_mem.renderer, .RGBA8888, .STREAMING, FB_W, FB_H)
	if g_mem.texture == nil {
		fmt.eprintfln("[lab] CreateTexture failed: %s", sdl.GetError())
		os.exit(1)
	}
	ui_init()
	g_mem.hud = true
	paint_initial()
	fmt.printfln("[lab] init: window=%p renderer=%p texture=%p pixels=%d", g_mem.window, g_mem.renderer, g_mem.texture, len(g_mem.pixels))
}

// Everything the sim needs and nothing SDL — shared by game_init, the
// headless runner (src/headless), and src/test.
sim_init :: proc() {
	g_mem = new(Game_Memory)
	g_mem.pixels = make([]u32, FB_W * FB_H)
	g_mem.sim.particle = {PARTICLE_START, PARTICLE_START}
	bind_defaults()
}

@(export)
game_update :: proc() {
	ev: sdl.Event
	for sdl.PollEvent(&ev) {
		ui_event(&ev)
		#partial switch ev.type {
		case .QUIT:
			g_mem.quit = true
		case .KEY_DOWN:
			if !ev.key.repeat {
				handle_key(ev.key.scancode)
			}
		}
	}
	frame_step()
	ui_frame()
	if g_mem.sim.frame % 60 == 0 {
		fmt.printfln("[lab] frame=%d particle.y=%.2f", g_mem.sim.frame, g_mem.sim.particle.pos.y)
	}
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
	sdl.SetRenderDrawColor(g_mem.renderer, 22, 22, 30, 255)
	sdl.RenderClear(g_mem.renderer)
	dst := sdl.FRect{0, 0, FB_W, FB_H}
	sdl.RenderTexture(g_mem.renderer, g_mem.texture, nil, &dst)
	ui_draw()
	sdl.RenderPresent(g_mem.renderer)
	g_mem.counter += 1
	free_all(context.temp_allocator)
}

// One whole frame, SDL-free: advance the sim, repaint the framebuffer.
// The SDL host calls it between event pump and texture blit; the headless
// runner calls it directly.
frame_step :: proc() {
	tick_sim(&g_mem.sim)
	render_frame()
}

tick_sim :: proc(s: ^Sim) {
	if !s.paused || s.step {
		if s.arena {
			for &t, i in s.tiles {
				step_particle(&t, ARENA_PARAMS[i])
			}
		} else {
			step_particle(&s.particle, DEFAULT_PARAMS)
		}
		s.step = false
	}
	s.frame += 1
}

render_frame :: proc() {
	slice.fill(g_mem.pixels, u32(0x202030FF))
	if g_mem.sim.arena {
		render_arena()
	} else {
		px := int(g_mem.sim.particle.pos.x) - 2
		py := int(g_mem.sim.particle.pos.y) - 2
		draw_rect_filled(g_mem.pixels, FB_W, FB_H, px, py, 4, 4, 0xFFFFFFFF)
	}
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
	ui_shutdown()
	delete(g_mem.pixels)
	delete(g_mem.bindings)
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
	ui_reattach() // ImGui's current-context static is per-DLL; point it back at ours
	bind_defaults() // bindings are data: rebind so binding edits ship via hot reload
	sdl.SetWindowSize(g_mem.window, FB_W + PANEL_W, FB_H) // layout changes ship via reload too
	paint_initial()
	if g_mem.sim.arena {
		arena_reset(&g_mem.sim) // hot reload = arena round boundary
	}
	fmt.printfln("[lab] reloaded; counter survived = %d", g_mem.counter)
}

// Sim introspection: the host's reload-diff and the tooling tick plain Sim
// copies through THIS dll's code without touching the live sim.
@(export)
game_sim_size :: proc() -> int {
	return size_of(Sim)
}

@(export)
game_sim_clone :: proc(dst: rawptr) {
	(^Sim)(dst)^ = g_mem.sim
}

// Like game_sim_clone but normalized for diffing: never paused, so a reload
// taken while paused still yields a meaningful trajectory comparison.
@(export)
game_sim_seed :: proc(dst: rawptr) {
	s := (^Sim)(dst)
	s^ = g_mem.sim
	s.paused = false
	s.step = false
}

@(export)
game_sim_tick :: proc(s: rawptr) {
	tick_sim((^Sim)(s))
}

@(export)
game_sim_hash :: proc(s: rawptr) -> u64 {
	return hash.fnv64a(mem.ptr_to_bytes((^Sim)(s)))
}

paint_initial :: proc() {
	slice.fill(g_mem.pixels, u32(0x202030FF))
}
