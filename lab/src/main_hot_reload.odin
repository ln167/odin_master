package main

import "core:dynlib"
import "core:fmt"
import "core:os"
import "core:time"

Game_API :: struct {
	init_window:     proc(),
	init:            proc(),
	update:          proc(),
	should_run:      proc() -> bool,
	shutdown:        proc(),
	shutdown_window: proc(),
	memory:          proc() -> rawptr,
	memory_size:     proc() -> int,
	hot_reloaded:    proc(rawptr),
	lib:             dynlib.Library,
	mtime:           time.Time,
}

DLL_SRC :: "build/hot_reload/game" + "." + dynlib.LIBRARY_FILE_EXTENSION

// Each load gets a unique copy. Old copies stay mapped for the process lifetime
// because Karl's pattern: DLLs may hold string literals or other data referenced
// from Game_Memory, so unloading mid-run can leave dangling pointers. Cost is
// ~600 KB per reload, freed at exit.
load_game :: proc(version: int) -> (api: Game_API, ok: bool) {
	dst := fmt.tprintf("build/hot_reload/game_%d%s", version, "." + dynlib.LIBRARY_FILE_EXTENSION)
	if cerr := os.copy_file(dst, DLL_SRC); cerr != nil {
		fmt.eprintfln("copy %s -> %s: %v", DLL_SRC, dst, cerr)
		return
	}
	count, lok := dynlib.initialize_symbols(&api, dst, "game_", "lib")
	if !lok || count == 0 {
		fmt.eprintfln("load %s: %s", dst, dynlib.last_error())
		return
	}
	api.mtime, _ = os.last_write_time_by_name(DLL_SRC)
	return api, true
}

main :: proc() {
	version := 0
	api, ok := load_game(version)
	if !ok { return }
	version += 1

	api.init_window()
	api.init()

	for api.should_run() {
		api.update()
		mt, _ := os.last_write_time_by_name(DLL_SRC)
		if time.diff(api.mtime, mt) > 0 {
			fmt.printfln("[host] reload v%d", version)
			ptr := api.memory()
			next, next_ok := load_game(version)
			if next_ok {
				// size_of(Game_Memory) differs => fields added/removed/retyped, so the
				// old allocation can't be reinterpreted. Skip the swap and wait for a
				// manual restart. (A pure same-size reorder slips through — rare, and the
				// restart is yours to trigger when you're ready.)
				if next.memory_size() != api.memory_size() {
					fmt.eprintfln("[host] Game_Memory shape changed (%d -> %d bytes); skipping swap. Close the window and re-run `just lab` when ready.",
						api.memory_size(), next.memory_size())
					api.mtime = mt
				} else {
					api = next
					version += 1
					api.hot_reloaded(ptr)
				}
			} else {
				api.mtime = mt
			}
		}
		time.sleep(16 * time.Millisecond)
	}

	api.shutdown()
	api.shutdown_window()
}
