package game

// Dear ImGui (design of record for ALL UI), drawn through the existing
// SDL_Renderer via the sdlrenderer3 backend. Lives inside the hot-reloaded
// DLL so panels are live-editable; the context pointer survives swaps in
// Game_Memory.imgui and game_hot_reloaded re-attaches it (spike plan A —
// fallback if it ever crashes: destroy+recreate per reload and eat the leak).

import "core:fmt"
import "odin_lib:tele"
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

// Build the frame's UI and finalize draw data; ui_draw blits it over the cleared screen.
ui_frame :: proc() {
	imr3.new_frame()
	imsdl.new_frame()
	im.new_frame()
	hud_window()
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

hud_window :: proc() {
	if len(tele.observe_list()) == 0 {
		tele.observe("counter", &g_mem.counter)
	}
	if im.begin("debug") {
		for o in tele.observe_list() {
			im.text_unformatted(fmt.ctprintf("%s = %v", o.label, tele.observe_value(o)))
		}
	}
	im.end()
}
