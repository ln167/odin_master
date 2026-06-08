package main

import "core:fmt"
import "core:os"
import game "src:game"

main :: proc() {
	game.g_mem = new(game.Game_Memory)
	game.g_mem.particle = {game.PARTICLE_START, game.PARTICLE_START}
	game.bind_defaults()

	ok := true

	y0 := game.g_mem.particle.pos.y
	for _ in 0 ..< 30 do game.sim_frame()
	ok = check(ok, "gravity_falls", game.g_mem.particle.pos.y > y0)

	game.handle_key(.R)
	ok = check(ok, "reset_R", game.g_mem.particle.pos == game.PARTICLE_START)

	game.handle_key(.SPACE)
	p := game.g_mem.particle.pos
	game.sim_frame()
	ok = check(ok, "pause_freezes", game.g_mem.particle.pos == p)

	game.handle_key(.PERIOD)
	p2 := game.g_mem.particle.pos
	game.sim_frame()
	ok = check(ok, "step_advances_one", game.g_mem.particle.pos != p2)
	p3 := game.g_mem.particle.pos
	game.sim_frame()
	ok = check(ok, "step_then_holds", game.g_mem.particle.pos == p3)

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

	fmt.printfln("RESULT: %s", "PASS" if ok else "FAIL")
	os.exit(0 if ok else 1)
}

check :: proc(ok: bool, name: string, pass: bool) -> bool {
	fmt.printfln("%-20s %s", name, "PASS" if pass else "FAIL")
	return ok && pass
}
