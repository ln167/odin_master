package main

// Lesson 18 HTML probe: the reload contract compiles.
//
// Two halves of the seam, proven to type-check together:
//   1. The MODULE side: the @(export) procs the host calls by name, including
//      the three reload-specific ones. game_memory_size returns size_of of the
//      persistent struct; game_memory hands out the pointer; game_hot_reloaded
//      casts a rawptr back to ^Game_Memory and stores it in the new g_mem.
//   2. The HOST side: Game_API, a struct whose fields are proc-pointer types
//      with EXACTLY the matching signatures, plus the runtime name-binding call
//      dynlib.initialize_symbols that fills those fields from the loaded library.
import "core:dynlib"
import "core:mem"

Game_Memory :: struct {
	frame:       u64,
	counter:     int,
	last_reload: f64,
	allocator:   mem.Allocator,
}

g_mem: ^Game_Memory

// ---- module side: the exported entry procs ----
@(export) game_init        :: proc()              { g_mem = new(Game_Memory) }
@(export) game_update      :: proc() -> bool      { g_mem.frame += 1; return true }
@(export) game_should_run  :: proc() -> bool      { return g_mem.frame < 600 }
@(export) game_shutdown    :: proc()              { free(g_mem) }
@(export) game_memory      :: proc() -> rawptr    { return g_mem }
@(export) game_memory_size :: proc() -> int       { return size_of(Game_Memory) }
@(export) game_hot_reloaded :: proc(mem_ptr: rawptr) { g_mem = (^Game_Memory)(mem_ptr) }

// ---- host side: the proc-pointer struct it binds the exports into ----
Game_API :: struct {
	init:         proc(),
	update:       proc() -> bool,
	should_run:   proc() -> bool,
	shutdown:     proc(),
	memory:       proc() -> rawptr,
	memory_size:  proc() -> int,
	hot_reloaded: proc(rawptr),
	lib:          dynlib.Library,
}

load_api :: proc(path: string) -> (api: Game_API, ok: bool) {
	count, lok := dynlib.initialize_symbols(&api, path, "game_", "lib")
	if !lok || count == 0 {
		return {}, false
	}
	return api, true
}

main :: proc() {
	// Reference everything so the contract is exercised, not just declared.
	game_init()
	api, _ := load_api("game.dll")
	if api.update != nil {
		ptr := game_memory()
		_ = game_memory_size()
		game_hot_reloaded(ptr)
		_ = game_should_run()
	}
	game_shutdown()
}
