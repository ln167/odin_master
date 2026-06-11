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
	sim_size:        proc() -> int,
	sim_seed:        proc(rawptr),
	sim_tick:        proc(rawptr),
	sim_hash:        proc(rawptr) -> u64,
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

DIFF_FRAMES :: 120

// Both DLL copies stay mapped after a swap, so each can advance its own copy
// of the same Sim snapshot: an automatic behavioral diff of every reload.
// Snapshots are seeded unpaused (game_sim_seed) so a reload taken while
// paused still answers. Same-shape Sims only; a shape change skips honestly.
reload_diff :: proc(old, new: ^Game_API, version: int) {
	if old.sim_size == nil || new.sim_size == nil {
		return // pre-sim-export DLL still live; nothing to compare
	}
	n := new.sim_size()
	if old.sim_size() != n {
		diff_note(version, "sim shape changed; diff skipped")
		return
	}
	a := make([]u8, n)
	b := make([]u8, n)
	defer delete(a)
	defer delete(b)
	old.sim_seed(raw_data(a))
	old.sim_seed(raw_data(b))
	for f in 1 ..= DIFF_FRAMES {
		old.sim_tick(raw_data(a))
		new.sim_tick(raw_data(b))
		if old.sim_hash(raw_data(a)) != new.sim_hash(raw_data(b)) {
			diff_note(version, fmt.tprintf("diverges at frame %d of %d", f, DIFF_FRAMES))
			return
		}
	}
	diff_note(version, fmt.tprintf("sim identical for %d frames", DIFF_FRAMES))
}

// Console line for the human, log line for the agent (the watch screen-clear
// eats console scrollback, so the file is the durable channel).
diff_note :: proc(version: int, msg: string) {
	fmt.printfln("[diff] v%d %s", version, msg)
	f, err := os.open("build/hot_reload/reload_diff.log", os.O_WRONLY + os.O_CREATE + os.O_APPEND)
	if err != nil {
		return
	}
	defer os.close(f)
	os.write_string(f, fmt.tprintf("v%d %s\n", version, msg))
}

main :: proc() {
	version := 0
	api, ok := load_game(version)
	if !ok { return }
	version += 1

	api.init_window()
	api.init()

	fail_count := 0
	for api.should_run() {
		api.update()
		mt, _ := os.last_write_time_by_name(DLL_SRC)
		if time.diff(api.mtime, mt) > 0 {
			if fail_count == 0 {
				fmt.printfln("[host] reload v%d", version)
			}
			ptr := api.memory()
			next, next_ok := load_game(version)
			if next_ok {
				fail_count = 0
				// size_of(Game_Memory) differs => fields added/removed/retyped, so the
				// old allocation can't be reinterpreted. Skip the swap and wait for a
				// manual restart. (A pure same-size reorder slips through — rare, and the
				// restart is yours to trigger when you're ready.)
				if next.memory_size() != api.memory_size() {
					fmt.eprintfln("[host] Game_Memory shape changed (%d -> %d bytes); skipping swap. Close the window and re-run `just lab` when ready.",
						api.memory_size(), next.memory_size())
					api.mtime = mt
				} else {
					prev := api
					api = next
					version += 1
					api.hot_reloaded(ptr)
					reload_diff(&prev, &api, version)
				}
			} else {
				// The copy can race the linker mid-write; keep mtime stale so the
				// next iteration retries, and back off instead of spinning.
				fail_count += 1
				if fail_count == 1 {
					fmt.eprintfln("[host] reload load failed; retrying until it succeeds")
					diff_note(version, "LOAD FAILED; retrying")
				}
				time.sleep(200 * time.Millisecond)
			}
		}
		time.sleep(16 * time.Millisecond)
	}

	api.shutdown()
	api.shutdown_window()
}
