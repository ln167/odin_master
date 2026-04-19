// Hot-reload host. Polls the game DLL on disk; on mtime change it captures the
// game's memory pointer, unloads, loads the new DLL, and hands the pointer back.
package main

import "core:dynlib"
import "core:fmt"
import "core:os"
import "core:path/filepath"
import "core:strings"
import "core:time"

Game_API :: struct {
	init_window:     proc(),
	init:            proc(),
	update:          proc() -> bool,
	should_run:      proc() -> bool,
	shutdown:        proc(),
	shutdown_window: proc(),
	memory:          proc() -> rawptr,
	memory_size:     proc() -> int,
	hot_reloaded:    proc(rawptr),
	force_reload:    proc() -> bool,
	force_restart:   proc() -> bool,
	lib:             dynlib.Library,
	mtime:           time.Time,
	api_version:     int,
}

DLL_DIR :: "build/hot_reload"

dll_ext :: proc() -> string {
	when ODIN_OS == .Windows { return ".dll" }
	when ODIN_OS == .Darwin  { return ".dylib" }
	return ".so"
}

newest_dll :: proc() -> (path: string, ok: bool) {
	d, derr := os.open(DLL_DIR)
	if derr != nil { return "", false }
	defer os.close(d)
	files, ferr := os.read_dir(d, -1, context.allocator)
	if ferr != nil { return "", false }
	best_time: time.Time
	for f in files {
		if !strings.has_suffix(f.name, dll_ext()) { continue }
		if !strings.has_prefix(f.name, "game_") { continue }
		if time.diff(best_time, f.modification_time) > 0 {
			best_time = f.modification_time
			path, _ = filepath.join({DLL_DIR, f.name}, context.allocator)
			ok = true
		}
	}
	return
}

load_api :: proc(path: string) -> (api: Game_API, ok: bool) {
	count, lok := dynlib.initialize_symbols(&api, path, "game_", "lib")
	if !lok || count == 0 {
		fmt.eprintln("dynlib load failed from", path)
		return {}, false
	}
	mt, _ := os.last_write_time_by_name(path)
	api.mtime = mt
	return api, true
}

main :: proc() {
	fmt.println("ready")
	cur_path, ok := newest_dll()
	if !ok {
		fmt.eprintln("no game DLL in", DLL_DIR, "— run `python build.py hot` first")
		return
	}
	api, lok := load_api(cur_path)
	if !lok { return }
	api.init_window()
	api.init()

	for api.should_run() {
		api.update()
		new_path, npok := newest_dll()
		if npok && new_path != cur_path {
			fmt.println("reload:", filepath.base(new_path))
			ptr := api.memory()
			dynlib.unload_library(api.lib)
			next, nok := load_api(new_path)
			if !nok {
				fmt.eprintln("reload failed; staying on old API")
				api, _ = load_api(cur_path)
			} else {
				api = next
				cur_path = new_path
				api.hot_reloaded(ptr)
			}
		}
		time.sleep(16 * time.Millisecond)
	}

	api.shutdown()
	api.shutdown_window()
	dynlib.unload_library(api.lib)
}
