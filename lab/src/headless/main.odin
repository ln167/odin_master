package main

// labx — the agent's eyes and hands on the lab sim, headless.
// Drives package game with no SDL init (SDL3.dll only needs to exist on disk
// for the loader): N deterministic frames, scripted key injection, per-frame
// NaN/escape invariants, a folded trajectory hash, and PNG framebuffer dumps.
//
//   labx -frames:600 -script:tape.txt -png:out/shot -png-every:120 -arena -flight
//
// Script lines: "<frame> <KEY>", KEY in R SPACE PERIOD ESCAPE A F1 F2 1 2 3 4.
// F2 = flight-recorder dump (W6); -flight also dumps the ring at end-of-run.
// Output: "f=..." state lines every -state-every frames (default 60, 0 = off),
// "png=..." per dump, final "hash=..." trajectory line.
// Exit 0 = ok, 1 = invariant violation, 2 = bad usage/script.

import "base:runtime"
import "core:fmt"
import "core:hash"
import "core:math"
import "core:mem"
import "core:os"
import "core:strconv"
import "core:strings"
import "odin_lib:tele"
import sdl "vendor:sdl3"
import stbi "vendor:stb/image"
import game "src:game"

Ev :: struct {
	frame: int,
	key:   sdl.Scancode,
}

// Route an assert failure through the flight recorder before the default abort: the last
// FLIGHT_CAP frames of ring history are the black box for "what led up to the assert" (spec §10 trigger).
flight_assert :: proc(prefix, message: string, loc: runtime.Source_Code_Location) -> ! {
	tele.flight_dump(fmt.tprintf("assert: %s %s", prefix, message))
	runtime.default_assertion_failure_proc(prefix, message, loc)
}

main :: proc() {
	context.assertion_failure_proc = flight_assert // W6: an assert dumps the ring before aborting

	frames := 600
	state_every := 60
	png_every := 0
	png_prefix: string
	script_path: string
	arena := false
	flight := false

	for a in os.args[1:] {
		switch {
		case strings.has_prefix(a, "-frames:"):
			frames = num(a[len("-frames:"):])
		case strings.has_prefix(a, "-state-every:"):
			state_every = num(a[len("-state-every:"):])
		case strings.has_prefix(a, "-png-every:"):
			png_every = num(a[len("-png-every:"):])
		case strings.has_prefix(a, "-png:"):
			png_prefix = a[len("-png:"):]
		case strings.has_prefix(a, "-script:"):
			script_path = a[len("-script:"):]
		case a == "-arena":
			arena = true
		case a == "-flight":
			flight = true // W6: dump the flight-recorder ring at end-of-run (else quiet)
		case:
			fmt.eprintfln("labx: unknown arg %q", a)
			os.exit(2)
		}
	}

	events: [dynamic]Ev
	if script_path != "" {
		data, rerr := os.read_entire_file(script_path, context.allocator)
		if rerr != nil {
			fmt.eprintfln("labx: cannot read script %q: %v", script_path, rerr)
			os.exit(2)
		}
		for line in strings.split_lines(string(data)) {
			l := strings.trim_space(line)
			if l == "" || strings.has_prefix(l, "#") do continue
			fields := strings.fields(l)
			defer delete(fields)
			if len(fields) != 2 {
				fmt.eprintfln("labx: bad script line %q", l)
				os.exit(2)
			}
			key, kok := key_from_name(fields[1])
			if !kok {
				fmt.eprintfln("labx: unknown key %q", fields[1])
				os.exit(2)
			}
			append(&events, Ev{num(fields[0]), key})
		}
	}

	game.sim_init()
	if arena {
		game.handle_key(.A)
	}

	traj: u64 = 0xcbf29ce484222325
	for f in 0 ..< frames {
		for e in events {
			if e.frame == f {
				game.handle_key(e.key)
			}
		}
		game.frame_step()
		if game.g_mem.quit {
			fmt.printfln("quit at f=%d", f)
			break
		}
		if msg, bad := invariants(); bad {
			// Programmatic trigger (spec §10): a NaN / out-of-range particle dumps the ring -- the
			// frames leading up to the blow-up -- before the run exits nonzero.
			tele.flight_dump(fmt.tprintf("invariant f=%d %s", f, msg))
			fmt.eprintfln("INVARIANT f=%d %s", f, msg)
			os.exit(1)
		}
		fh := game.game_sim_hash(&game.g_mem.sim)
		traj = hash.fnv64a(mem.ptr_to_bytes(&fh), traj)
		if state_every > 0 && (f + 1) % state_every == 0 {
			print_state(f + 1)
		}
		if png_every > 0 && png_prefix != "" && (f + 1) % png_every == 0 {
			write_png(png_prefix, f + 1)
		}
		free_all(context.temp_allocator)
	}
	if png_prefix != "" && png_every == 0 {
		write_png(png_prefix, frames)
	}
	if flight {
		tele.flight_dump("end-of-run") // W6: opt-in black box of the last FLIGHT_CAP frames
	}
	fmt.printfln("hash=%x", traj)
}

num :: proc(s: string) -> int {
	n, ok := strconv.parse_int(s)
	if !ok {
		fmt.eprintfln("labx: bad number %q", s)
		os.exit(2)
	}
	return n
}

key_from_name :: proc(name: string) -> (sdl.Scancode, bool) {
	switch name {
	case "R":
		return .R, true
	case "A":
		return .A, true
	case "SPACE":
		return .SPACE, true
	case "PERIOD":
		return .PERIOD, true
	case "ESCAPE":
		return .ESCAPE, true
	case "F1":
		return .F1, true
	case "F2":
		return .F2, true
	case "1":
		return ._1, true
	case "2":
		return ._2, true
	case "3":
		return ._3, true
	case "4":
		return ._4, true
	}
	return .UNKNOWN, false
}

invariants :: proc() -> (string, bool) {
	s := &game.g_mem.sim
	if s.arena {
		for t, i in s.tiles {
			if bad_particle(t) {
				return fmt.tprintf("tile %d pos=(%v,%v)", i, t.pos.x, t.pos.y), true
			}
		}
	} else if bad_particle(s.particle) {
		return fmt.tprintf("particle pos=(%v,%v)", s.particle.pos.x, s.particle.pos.y), true
	}
	return "", false
}

bad_particle :: proc(p: game.Particle) -> bool {
	return(
		math.is_nan(p.pos.x) ||
		math.is_nan(p.pos.y) ||
		abs(p.pos.x) > 8000 ||
		abs(p.pos.y) > 8000 \
	)
}

print_state :: proc(f: int) {
	s := &game.g_mem.sim
	if s.arena {
		fmt.printf("f=%d", f)
		for t, i in s.tiles {
			fmt.printf(" t%d=(%.2f,%.2f)", i, t.pos.x, t.pos.y)
		}
		fmt.println()
	} else {
		v := s.particle.pos - s.particle.pos_prev
		fmt.printfln(
			"f=%d pos=(%.2f,%.2f) vel=(%.2f,%.2f)",
			f, s.particle.pos.x, s.particle.pos.y, v.x, v.y,
		)
	}
}

// Framebuffer is u32 0xRRGGBBAA (see save_ppm.odin); stb wants R,G,B,A bytes.
write_png :: proc(prefix: string, frame: int) {
	if i := strings.last_index_any(prefix, "/\\"); i > 0 {
		os.make_directory(prefix[:i]) // single level by convention, e.g. -png:out/shot
	}
	path := fmt.tprintf("%s_%06d.png", prefix, frame)
	buf := make([]u8, game.FB_W * game.FB_H * 4, context.temp_allocator)
	for p, i in game.g_mem.pixels {
		buf[i * 4 + 0] = u8(p >> 24)
		buf[i * 4 + 1] = u8(p >> 16)
		buf[i * 4 + 2] = u8(p >> 8)
		buf[i * 4 + 3] = u8(p)
	}
	cpath := strings.clone_to_cstring(path, context.temp_allocator)
	if stbi.write_png(cpath, game.FB_W, game.FB_H, 4, raw_data(buf), game.FB_W * 4) == 0 {
		fmt.eprintfln("labx: write_png failed: %s", path)
		os.exit(1)
	}
	fmt.printfln("png=%s", path)
}
