# hey claude, we're not on windows anymore

From older-claude (Windows session, 2026-05-08). Quick handoff so you don't
re-discover what I already burned hours on. Covers both mac and linux,
the gotchas mostly overlap.

## What's working

- Phases 0-4 of `lab/PLAN.md` are done and verified on Windows: hot-reload host,
  SDL3 window, CPU framebuffer, software rasterizer (Bresenham + filled rect),
  one Verlet particle that falls and bounces. PPM dump scaffolding too.
- `lab/build.py hot` builds the DLL and host. Run `./build/hot_reload/lab`
  (or `lab.exe` on Windows). `just lab` from repo root does both.
- Hot reload: edit anything in `src/game/`, run `python build.py hot` from a
  second terminal, host picks up the new DLL within ~16 ms. State in
  `Game_Memory` survives the swap; api-version mismatch guard skips reloads
  that change the struct shape.

## Cross-platform stuff already handled

- `build.py` keys off `platform.system()` for `.dll/.so/.dylib` and `EXE`.
- Host uses `core:dynlib`/`core:os`/`core:time`, all portable.
- PDB output and `.exe` extension are Windows-gated.
- `dynlib.LIBRARY_FILE_EXTENSION` resolves to `dylib` on darwin (no leading dot,
  build.py prepends one).

## The prereq you'll hit first (both platforms)

`vendor:sdl3` links via `system:SDL3` on non-Windows. Install once:

```sh
brew install sdl3                      # macOS
sudo apt install libsdl3-dev           # Debian/Ubuntu (when packaged)
# else build from source: https://github.com/libsdl-org/SDL
```

On mac that puts `libSDL3.0.dylib` in `/opt/homebrew/lib/` (Apple Silicon) or
`/usr/local/lib/` (Intel). On linux it lands in `/usr/lib/x86_64-linux-gnu/`
or similar. Odin's linker finds it via `-lSDL3`, runtime finds it via standard
dyld/ld.so search.

The `SDL_NAME` copy step in `build.py` is a Windows-only thing in practice. On
mac/linux the source path (`<odin>/vendor/sdl3/libSDL3.dylib` or `.so`)
doesn't exist in the Odin distribution, so the `if sdl_src.exists()` guard
makes it a no-op. Don't "fix" that, it's correct.

## What I did NOT verify on mac or linux

Everything. I'm Windows-only this session. If something breaks on first run,
the likely failure modes are:

1. **`dlopen` can't find SDL3** → package not installed, or a non-default
   prefix. Mac: `otool -L build/hot_reload/game.dylib`. Linux:
   `ldd build/hot_reload/game.so` then `LD_LIBRARY_PATH=...` if needed.
2. **(mac only) Apple Silicon arch mismatch** → if Odin was built/downloaded
   for the wrong arch. `file build/hot_reload/lab` should show `arm64` on
   M-series. On linux this is a non-issue unless you're on a Pi/ARM board.
3. **dlsym not finding `game_*` exports** → unlikely (Odin exports work the
   same on darwin and linux), but if it happens, `dynlib.last_error()` will
   say so.
4. **(linux only) X11 vs Wayland** → SDL3 picks one at runtime via
   `SDL_VIDEODRIVER`. Default usually works; force with
   `SDL_VIDEODRIVER=x11` if you hit a Wayland-specific issue.

## Karl's pattern (do not "simplify" away)

These are load-bearing, comments live in `lab/README.md`:

- Build writes to canonical `build/hot_reload/game.<ext>`. Host **copies** that
  file to `game_N.<ext>` before each load. Direct load would file-lock on
  Windows; mac and linux don't lock the same way but copy-before-load is still
  right because the data-preservation reason (next bullet) applies on every OS.
- Old DLLs are **never unloaded** while running. The current `Game_Memory` may
  hold pointers into old `.text` (string literals are the canonical case).
  `dlclose`-ing the old image would dangle them. Each old image costs ~600 KB,
  freed at process exit. Don't add cleanup.
- `g_mem` is a single pointer; all state behind it. SDL handles (window,
  renderer, texture) live in `Game_Memory`, not DLL globals. DLL globals reset
  on reload; heap state survives.

## Test method I used on Windows

Headless: I launched `lab.exe` in background, used PowerShell
`CloseMainWindow()` to send WM_CLOSE for the quit-event test, and read
`lab_dump.ppm` via Python to verify pixel coordinates. Equivalents:

- **Mac:** `osascript -e 'tell application "lab" to quit'` to send a clean
  quit through the SDL event loop. Plain `kill -TERM <pid>` may bypass it.
- **Linux:** `xdotool search --name lab windowclose` (X11) or
  `wmctrl -c lab` (either). Or send `SDL_QUIT` via `kill -INT <pid>` if the
  host installs a SIGINT handler — currently it doesn't, so prefer the
  window-manager route.
- PPM verification: `python3` is on path by default everywhere; the same
  reader script works.

## Known unfinished (low priority)

- `paint_initial`'s static (200, 50) pixel write is dead code — Phase 4's
  per-frame clear overwrites it. Remove if it bugs you.
- Mac and linux gates for all four phases were not run.
- The recent rename: `playground/` → root-level `lab/`, `bench/`, `tests/`,
  `scratch/`, `profiles/`. If anything still says `playground/<x>`, it's
  historical (specs/plans) and intentionally not touched.

## Where to start

`lab/PLAN.md` is the plan-of-record. Phases 1-4 are done. If user wants to
continue: Phase 5 isn't drafted yet — talk to them first about what comes next
(Verlet system with N particles? mouse/keyboard input? text rendering? GPU
move? PIVOT.md rung 2). Don't extrapolate without alignment.

— older claude
