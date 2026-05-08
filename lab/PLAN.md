# lab — Phase 1-4 implementation plan

**Date:** 2026-05-08
**Status:** Plan-of-record. Survives compact. Re-read this before resuming work.
**Phase 0 status:** done (hot-reload host + DLL, stdout only).

## Hard rules (every phase)

1. **One step at a time. Build after every step.** No accumulating multiple unbuilt changes.
2. **If a build or test gate fails, STOP and report.** No clever workarounds.
3. **No abstraction until two pieces duplicate.** Direct, named, no helpers-just-in-case.
4. **No DLL globals carry state.** SDL handles, particles, anything → `Game_Memory`.
5. **Comments only when removing them would confuse a future reader.** Carmack rule.
6. **Cross-platform.** `vendor:sdl3` API only. Build + run on both Windows and Linux at every phase boundary.
7. **Nothing not on the phase list.** No FPS counter, no input tracking, no audio, no PNGs, no text, no menu, no resize.

## Phase 1: SDL3 window survives reloads

Steps:
- 1.1 — Import `vendor:sdl3` in `game.odin`. `sdl.Init(.VIDEO)` in `game_init_window`; `sdl.Quit()` in `game_shutdown_window`.
- 1.2 — `sdl.CreateWindow("lab", 800, 600, {})` in `game_init_window`. Store `^sdl.Window` in `Game_Memory.window`.
- 1.3 — `sdl.CreateRenderer(window, nil)`; store in `Game_Memory.renderer`.
- 1.4 — In `game_update`: pump `sdl.PollEvent`. On `.QUIT`, set `g_mem.quit = true`. `RenderClear` to black, `RenderPresent`. `game_should_run` returns `!g_mem.quit`.

Test 1 (objective gates):
- `python build.py hot` succeeds, no warnings.
- 800x600 window titled "lab" appears.
- Edit clear color, rebuild → color changes, **window does not close**.
- Click X → host exits cleanly.
- Repeat all of the above on Linux.

## Phase 2: CPU framebuffer + first pixel

Steps:
- 2.0 — Add `api_version` field to `Game_Memory`. Increment at every shape change from here on. Host checks it in `game_hot_reloaded`; if mismatch, log and skip the reload.
- 2.1 — `sdl.CreateTexture(renderer, .RGBA8888, .STREAMING, 800, 600)` in `game_init_window`. Store in `Game_Memory.texture`.
- 2.2 — Allocate `Game_Memory.pixels: []u32` length `800 * 600` on init.
- 2.3 — Per-frame: `LockTexture` → memcpy `pixels` → `UnlockTexture` → `RenderTexture(renderer, texture, nil, nil)` → `RenderPresent`.
- 2.4 — Write `pixels[100*800 + 100] = 0xFFFFFFFF` once at init.
- 2.5 — `save_ppm :: proc(path, pixels, w, h)` writing P6 PPM. Call when env `LAB_DUMP_FRAME=1` set, just before exit.

Test 2:
- White pixel visible at (100, 100).
- Move to (200, 50) via edit+rebuild → moves without window restart.
- `LAB_DUMP_FRAME=1` writes valid PPM that decodes in any viewer.

## Phase 3: software rasterizer rudiments

Steps:
- 3.1 — `set_pixel :: proc(buf: []u32, w, h, x, y: int, c: u32)` with bounds check. Replace direct writes.
- 3.2 — `draw_line :: proc(buf, w, h, x0, y0, x1, y1, c: u32)`. Bresenham, derived on paper first.
- 3.3 — `draw_rect_filled :: proc(buf, w, h, x, y, ww, hh: int, c: u32)`. Nested loop.
- 3.4 — Game update: clear to dark gray each frame, draw a static line + a moving rectangle whose `x = int(g_mem.frame % 800)`.

Test 3:
- Line visible; pixel positions for one chosen segment match hand-walked Bresenham trace.
- Rectangle slides across, wraps. Edit color, rebuild → color updates mid-flight.
- PPM snapshot captured.

## Phase 4: first Verlet particle (PIVOT.md rung 1)

Steps:
- 4.1 — `Particle :: struct { pos, pos_prev: [2]f32 }`. Single instance in `Game_Memory.particle`. Init at (400, 100), `pos_prev = pos`.
- 4.2 — Verlet step: `next = 2*pos - pos_prev + g*dt*dt`. `g = {0, 980}` (px/s²), `dt = 1.0/60`.
- 4.3 — Bounce off `y == 600 - r` by reflecting via `pos_prev` adjustment. Damping `0.9`.
- 4.4 — Render: clear background, draw 4x4 white square at `pos` via `draw_rect_filled`.

Test 4:
- Particle falls and bounces.
- Log `frame, pos.y` every 60 frames. Peak height monotonically decreases (energy decay).
- Edit gravity constant, rebuild, mid-flight `pos`/`pos_prev` survive → trajectory shifts.

## Decide at exec time

- Pixel format: `RGBA8888` or `ARGB8888`. Verify via vendor:sdl3 source.
- Endianness for `0xFFFFFFFF`.
- Linux: confirm `libSDL3.so` is reachable (system pkg or vendored alongside).
- Windows: confirm `SDL3.dll` discovery (PATH or co-located).

## Stop conditions

- Compile error unfixed in 2 attempts → stop, report.
- Test gate fails → stop, report.
- Real architectural issue (e.g., subagent flags a problem) → stop, ask.
- End of Phase 4 reached → stop, hand back.

## NOT in this plan (defer until needed)

- Keyboard/mouse beyond Quit detection.
- Window resize, multi-window, fullscreen.
- Sound, text rendering, PNGs, fonts, FPS HUD.
- Threading.
- Shaders, GPU.
- `force_reload` / `force_restart` exports.
