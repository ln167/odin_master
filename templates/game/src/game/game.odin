// Karl Zylinski hot-reload pattern: this package is built as a DLL. The host
// in src/main_hot_reload.odin loads/unloads us and rehydrates g_mem across
// reloads via game_memory()/game_hot_reloaded().
package game

import "base:runtime"
import "core:fmt"

HOT_RELOAD :: #config(HOT_RELOAD, false)

@(export)
game_init_window :: proc() {
	fmt.println("[{{name}}] init window")
}

@(export)
game_init :: proc() {
	g_mem = new(Game_Memory)
	g_mem.counter = 0
	g_mem.frame = 0
	fmt.println("[{{name}}] init: state allocated at", g_mem)
}

@(export)
game_update :: proc() -> bool {
	g_mem.frame += 1
	g_mem.counter += 1
	if g_mem.frame % 60 == 0 {
		fmt.printfln("[{{name}}] frame=%d counter=%d", g_mem.frame, g_mem.counter)
	}
	return true
}

@(export)
game_should_run :: proc() -> bool {
	return g_mem.frame < 600
}

@(export)
game_shutdown :: proc() {
	free(g_mem)
}

@(export)
game_shutdown_window :: proc() {
	fmt.println("[{{name}}] shutdown window")
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
	fmt.printfln("[{{name}}] reloaded; counter survived = %d", g_mem.counter)
}

@(export)
game_force_reload :: proc() -> bool { return false }

@(export)
game_force_restart :: proc() -> bool { return false }

@(private)
_ctx_keepalive: runtime.Context
