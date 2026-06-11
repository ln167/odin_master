package main

import "core:fmt"
import "core:os"
import game "src:game"

main :: proc() {
	game.sim_init()

	ok := true

	y0 := game.g_mem.sim.particle.pos.y
	for _ in 0 ..< 30 do game.frame_step()
	ok = check(ok, "gravity_falls", game.g_mem.sim.particle.pos.y > y0)

	game.handle_key(.R)
	ok = check(ok, "reset_R", game.g_mem.sim.particle.pos == game.PARTICLE_START)

	// sim exports: clone is a value copy; ticking clones is deterministic and
	// leaves the live sim untouched.
	a, b: game.Sim
	game.game_sim_clone(&a)
	game.game_sim_clone(&b)
	live := game.g_mem.sim.particle.pos
	for _ in 0 ..< 100 {
		game.game_sim_tick(&a)
		game.game_sim_tick(&b)
	}
	ok = check(ok, "sim_tick_deterministic", game.game_sim_hash(&a) == game.game_sim_hash(&b))
	ok = check(ok, "sim_clone_advanced", a.particle.pos != live)
	ok = check(ok, "clone_leaves_live_sim", game.g_mem.sim.particle.pos == live)

	game.handle_key(.SPACE)
	p := game.g_mem.sim.particle.pos
	game.frame_step()
	ok = check(ok, "pause_freezes", game.g_mem.sim.particle.pos == p)

	game.handle_key(.PERIOD)
	p2 := game.g_mem.sim.particle.pos
	game.frame_step()
	ok = check(ok, "step_advances_one", game.g_mem.sim.particle.pos != p2)
	p3 := game.g_mem.sim.particle.pos
	game.frame_step()
	ok = check(ok, "step_then_holds", game.g_mem.sim.particle.pos == p3)

	// arena: A splits into 4 lockstep tiles, each its own parameter personality
	game.handle_key(.A)
	ok = check(ok, "arena_toggles_on", game.g_mem.sim.arena)
	game.handle_key(.SPACE) // unpause (paused above)
	t0 := game.g_mem.sim.tiles[0].pos.y
	// 200 frames: enough to fall to the floor and bounce, so tiles diverge
	// even when the variant sets differ only in damping
	for _ in 0 ..< 200 do game.frame_step()
	ok = check(ok, "arena_tiles_fall", game.g_mem.sim.tiles[0].pos.y > t0)
	ok = check(ok, "arena_tiles_differ", game.g_mem.sim.tiles[0].pos != game.g_mem.sim.tiles[3].pos)

	// double-tap voting: first press selects, a different digit moves the
	// selection, the same digit again commits (flash) and clears it
	game.handle_key(._1)
	ok = check(ok, "vote_first_press_selects", game.g_mem.vote_sel == 1)
	game.handle_key(._2)
	ok = check(ok, "vote_other_digit_moves", game.g_mem.vote_sel == 2)
	game.handle_key(._2)
	ok = check(ok, "vote_double_tap_commits", game.g_mem.vote_sel == 0 && game.g_mem.flash > 0 && game.g_mem.flash_tile == 1)

	// R in arena mode replays: tiles re-drop, selection untouched
	game.handle_key(._3)
	game.handle_key(.R)
	ok = check(ok, "arena_R_redrops_tiles", game.g_mem.sim.tiles[0].pos == game.PARTICLE_START)
	ok = check(ok, "arena_R_keeps_sel", game.g_mem.vote_sel == 3)
	game.handle_key(.A)

	game.handle_key(.ESCAPE)
	ok = check(ok, "quit_escape", game.g_mem.quit)

	// reload survival: the host hands game_hot_reloaded the existing allocation; it must
	// re-attach that same pointer and keep state, never new() a fresh (zeroed) Game_Memory.
	game.g_mem.counter = 1234
	before := game.g_mem
	game.game_hot_reloaded(rawptr(game.g_mem))
	ok = check(ok, "reload_keeps_ptr", game.g_mem == before)
	ok = check(ok, "reload_keeps_state", game.g_mem.counter == 1234)
	ok = check(ok, "memory_size_matches", game.game_memory_size() == size_of(game.Game_Memory))

	// hot reload IS the arena round boundary: a reload with arena on re-drops
	game.handle_key(.A)
	game.g_mem.sim.tiles[0].pos = {1, 1}
	game.game_hot_reloaded(rawptr(game.g_mem))
	ok = check(ok, "reload_resets_tiles", game.g_mem.sim.tiles[0].pos == game.PARTICLE_START)

	fmt.printfln("RESULT: %s", "PASS" if ok else "FAIL")
	os.exit(0 if ok else 1)
}

check :: proc(ok: bool, name: string, pass: bool) -> bool {
	fmt.printfln("%-20s %s", name, "PASS" if pass else "FAIL")
	return ok && pass
}
