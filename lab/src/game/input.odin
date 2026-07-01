package game

import "odin_lib:tele"
import sdl "vendor:sdl3"

Input_Context :: enum {
	Gameplay,
	Debug,
}

Action :: enum {
	Reset,
	Quit,
	Toggle_Pause,
	Step_Frame,
	Toggle_Arena,
	Toggle_HUD,
	Flight_Dump,
	Vote_1,
	Vote_2,
	Vote_3,
	Vote_4,
}

Binding :: struct {
	key:    sdl.Scancode,
	action: Action,
	ctx:    Input_Context,
}

// ODIN_DEBUG by default, but pinnable: headless/optimized tooling builds pass
// -define:LAB_DEBUG_KEYS=true so scripted SPACE/PERIOD behave identically
// across -debug and -o:speed (else the determinism guard diffs input handling,
// not float math).
DEBUG_ENABLED :: #config(LAB_DEBUG_KEYS, ODIN_DEBUG)

bind_defaults :: proc() {
	delete(g_mem.bindings)
	g_mem.bindings = make([dynamic]Binding)
	append(
		&g_mem.bindings,
		Binding{.R, .Reset, .Gameplay},
		Binding{.ESCAPE, .Quit, .Gameplay},
		Binding{.A, .Toggle_Arena, .Gameplay},
		Binding{.F1, .Toggle_HUD, .Gameplay},
		Binding{._1, .Vote_1, .Gameplay},
		Binding{._2, .Vote_2, .Gameplay},
		Binding{._3, .Vote_3, .Gameplay},
		Binding{._4, .Vote_4, .Gameplay},
		Binding{.SPACE, .Toggle_Pause, .Debug},
		Binding{.PERIOD, .Step_Frame, .Debug},
		Binding{.F2, .Flight_Dump, .Debug},
	)
}

handle_key :: proc(key: sdl.Scancode) {
	for b in g_mem.bindings {
		if b.key != key do continue
		if b.ctx == .Debug && !DEBUG_ENABLED do continue
		do_action(b.action)
	}
}

do_action :: proc(a: Action) {
	switch a {
	case .Reset:
		if g_mem.sim.arena {
			// replay the comparison: re-drop all tiles, keep round + selection
			for &t in g_mem.sim.tiles {
				t = {PARTICLE_START, PARTICLE_START}
			}
		} else {
			g_mem.sim.particle = {PARTICLE_START, PARTICLE_START}
		}
	case .Quit:
		g_mem.quit = true
	case .Toggle_Pause:
		g_mem.sim.paused = !g_mem.sim.paused
	case .Step_Frame:
		g_mem.sim.step = true
	case .Toggle_Arena:
		g_mem.sim.arena = !g_mem.sim.arena
		if g_mem.sim.arena {
			arena_reset(&g_mem.sim)
		}
	case .Toggle_HUD:
		g_mem.hud = !g_mem.hud
	case .Flight_Dump:
		// Manual flight-recorder trigger (W6): dump the last FLIGHT_CAP frames of the ring on demand.
		tele.flight_dump("key")
	case .Vote_1:
		arena_select(1)
	case .Vote_2:
		arena_select(2)
	case .Vote_3:
		arena_select(3)
	case .Vote_4:
		arena_select(4)
	}
}
