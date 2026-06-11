package game

// Dear ImGui (design of record for ALL UI), drawn through the existing
// SDL_Renderer via the sdlrenderer3 backend. Lives inside the hot-reloaded
// DLL so panels are live-editable; the context pointer survives swaps in
// Game_Memory.imgui and game_hot_reloaded re-attaches it (spike plan A —
// fallback if it ever crashes: destroy+recreate per reload and eat the leak).

import "core:fmt"
import sdl "vendor:sdl3"
import im "vnd:odin-imgui"
import imsdl "vnd:odin-imgui/imgui_impl_sdl3"
import imr3 "vnd:odin-imgui/imgui_impl_sdlrenderer3"

ui_init :: proc() {
	g_mem.imgui = im.create_context()
	imsdl.init_for_sdl_renderer(g_mem.window, g_mem.renderer)
	imr3.init(g_mem.renderer)
}

ui_reattach :: proc() {
	im.set_current_context((^im.Context)(g_mem.imgui))
}

ui_event :: proc(ev: ^sdl.Event) {
	imsdl.process_event(ev)
}

// Build the frame's UI and finalize draw data; ui_draw blits it after the
// sim framebuffer so panels float above the game.
ui_frame :: proc() {
	imr3.new_frame()
	imsdl.new_frame()
	im.new_frame()
	if g_mem.hud {
		hud_window()
	}
	im.render()
}

ui_draw :: proc() {
	imr3.render_draw_data(im.get_draw_data(), g_mem.renderer)
}

ui_shutdown :: proc() {
	imr3.shutdown()
	imsdl.shutdown()
	im.destroy_context()
}

// The debug section: a fixed full-height panel in the strip right of the sim
// viewport. ImGui never draws over the game.
hud_window :: proc() {
	s := &g_mem.sim
	im.set_next_window_pos({FB_W + 6, 6}, .Always)
	im.set_next_window_size({PANEL_W - 12, FB_H - 12}, .Always)
	if im.begin("debug", nil, {.No_Resize, .No_Move, .No_Collapse}) {
		im.text_unformatted(fmt.ctprintf("frame %d  %s", s.frame, "PAUSED" if s.paused else "RUNNING"))
		if s.arena {
			im.separator_text(fmt.ctprintf("arena round %d", ROUND))
			// 2x2 listing mirrors the tile layout on screen
			tile_label(0)
			im.same_line(im.get_window_width() * 0.5)
			tile_label(1)
			tile_label(2)
			im.same_line(im.get_window_width() * 0.5)
			tile_label(3)
			im.separator()
			if g_mem.voted_round == ROUND {
				im.text_unformatted("voted - waiting for the next round")
			} else if g_mem.vote_sel > 0 {
				im.text_unformatted(fmt.ctprintf("selected %d - press %d again to commit", g_mem.vote_sel, g_mem.vote_sel))
			} else {
				im.text_unformatted("press 1-4 to select a tile")
			}
			im.text_unformatted("R replays the drop")
		} else {
			v := s.particle.pos - s.particle.pos_prev
			im.text_unformatted(fmt.ctprintf("pos %.1f,%.1f  vel %.2f,%.2f", s.particle.pos.x, s.particle.pos.y, v.x, v.y))
		}
	}
	im.end()
}

tile_label :: proc(i: int) {
	p := ARENA_PARAMS[i]
	sel := " "
	if g_mem.vote_sel == i + 1 {
		sel = ">"
	}
	im.text_unformatted(fmt.ctprintf("%s%d) g=%.0f d=%.2f", sel, i + 1, p.gravity.y, p.damping))
}
