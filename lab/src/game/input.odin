package game

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
}

Binding :: struct {
	key:    sdl.Scancode,
	action: Action,
	ctx:    Input_Context,
}

DEBUG_ENABLED :: ODIN_DEBUG

bind_defaults :: proc() {
	g_mem.bindings = make([dynamic]Binding)
	append(
		&g_mem.bindings,
		Binding{.R, .Reset, .Gameplay},
		Binding{.ESCAPE, .Quit, .Gameplay},
		Binding{.SPACE, .Toggle_Pause, .Debug},
		Binding{.PERIOD, .Step_Frame, .Debug},
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
		g_mem.particle = {PARTICLE_START, PARTICLE_START}
	case .Quit:
		g_mem.quit = true
	case .Toggle_Pause:
		g_mem.paused = !g_mem.paused
	case .Step_Frame:
		g_mem.step = true
	}
}
