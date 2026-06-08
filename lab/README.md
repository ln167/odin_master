# lab

Hot-reload host + game DLL. Phases 0–4 done (Windows-verified): hot reload, SDL3 window surviving reloads, CPU framebuffer, software rasterizer (Bresenham + filled rect), one Verlet particle that falls and bounces.

## What this is (and is not)

`lab/` is **foundational tooling**, not a one-off experiment. The host (`lab.exe`),
the build script, and the DLL boundary are expected to outlive any specific
experiment that sits in `src/game/`. The current contents of `src/game/` are the
*current* experiment; the host pattern is permanent.

Peer to `bench/` (perf, one-shot programs) and `tests/` (correctness,
one-shot programs). `lab/` is the only one of the three that runs as a
persistent process. See `../tests/README.md` for the lifecycle table, and
`../GAME.md` § "Programs vs profilers" for how `odin test` / `bench` /
`tests` / Spall / Tracy fit together.

Forward-looking vision in `../GAME.md`. Architectural framing in
`from_old_repo_references/PIVOT.md`. Lesson-form tour of the underlying
hot-reload pattern in `../content/domains/odin/vault/lessons/18-hot-reload-tour/`.

## Quick start

From the substrate root:

```sh
just lab          # build + run host + auto-rebuild on every src/ save (the dev loop)
just lab-build    # one-shot DLL/host build, no watch
just lab-clean    # wipe build/
```

`just lab` (= `python build.py watch`) is the normal loop: **one terminal.** It
builds, launches the host, then watches `src/` and rebuilds automatically every
time you save. Edit anything in `src/game/`, hit save, and the host picks up the
new DLL within ~16 ms — no second terminal, no manual rebuild command.
`Game_Memory` survives the swap; `g_mem.counter` keeps ticking through reloads,
proving the swap is non-destructive.

Stop with Ctrl+C (or close the window). A `Game_Memory` struct-shape change still
needs a restart — the host sees the `size_of` mismatch, skips the swap rather than
corrupt state, and asks you to close and re-run `just lab`.

`build.py hot` (one-shot, no watch) still exists for scripted/CI use.

## Layout

```
src/
  main_hot_reload.odin   host: copies game.dll -> game_N.dll, loads, swaps
  game/
    game.odin            DLL exports (game_init, game_update, ...)
    game_memory.odin     Game_Memory struct + g_mem
build.py                 odin build wrapper: watch (default loop) / hot / clean
justfile                 same recipes via `just`
```

## What's load-bearing (do not simplify away)

1. **Build writes to canonical `build/hot_reload/game.dll`.** Host copies that
   file to `game_N.dll` before each load. If the host loaded `game.dll` directly,
   the next build would fail to write to it (file lock). This is Karl Zylinski's
   pattern; the comment in his host says: *"We copy the DLL because using it
   directly would lock it, which would prevent the compiler from writing to it."*
2. **Old DLLs are NEVER unloaded while running.** The current Game_Memory may
   reference data living in old DLL `.text` (string literals are the canonical
   case). Calling `FreeLibrary` on the old DLL would invalidate those pointers.
   Karl's host comments this as the reason; we observed an additional symptom on
   Odin nightly 2026-04 + Windows 11 where `FreeLibrary` followed by `LoadLibrary`
   surfaces `MOD_NOT_FOUND`, but the data-preservation reason is the deeper one.
   Each old DLL costs ~600 KB, freed at process exit.
3. **PDB filename includes a timestamp** (`-pdb-name:game_<ns>.pdb`). Lets you
   keep a debugger attached across rebuilds without PDB lock conflicts. Karl's
   template uses an incrementing counter file; we use `time.time_ns()` because
   it's simpler and not worth a counter-file roundtrip.
4. **`g_mem` is a single pointer; all state behind it.** No DLL globals carry
   state. The host owns the `Game_Memory` allocation; reload re-attaches the
   same pointer via `game_hot_reloaded`.

## What is NOT here (and known TODOs)

Deliberately deferred:

- **SDL3 window + framebuffer + software rasterizer + one Verlet particle: DONE**
  (Phases 1–4, Windows-verified — see `PLAN.md` and `HANDOFF_FROM_WINDOWS.md`).
  SDL init lives in the DLL (`sdl.Init` in `game_init_window`; window/renderer/
  texture in `game_init`), matching Karl's pattern, so the window survives reloads.
- **No `force_reload` / `force_restart` exports.** Add only when needed.
- **File watcher: DONE** (`build.py watch`, `just lab`). Pure-stdlib mtime poll
  over `src/**/*.odin` every 0.05s — no `watchexec` dependency. One scan is 0.55 ms
  (~1% duty cycle), so detection is ≤50 ms; the ~350 ms DLL build is the real floor.
  Rebuilds on save (clears the screen first so a compile error isn't buried under
  host frame logs); a failed build prints the error and waits for the next save.
- **No GPU.** Software rasterizer through Phase 8+ at least. PIVOT.md
  "Building Principles" explains why.
- **No `wait_writable` retry loop.** The mtime-poll loop self-recovers if the
  linker is briefly still finalizing the file: one frame's copy attempt will
  log `Permission_Denied`, the next frame's mtime check sees the new mtime
  again and retries. Don't add a retry loop unless this becomes a real problem.

Known issues to fix when they next bite:

- **Shape-change guard: DONE.** The host compares `game_memory_size()` (=
  `size_of(Game_Memory)`) across every reload; a size change skips the swap and asks
  for a restart instead of corrupting `Game_Memory`. No manual version constant to
  forget. Caveat: a pure same-size field *reorder* isn't caught. By design there is
  no auto state-migration — the restart is your deliberate "ready to reload" gate
  (a field add/remove means close + re-run `just lab`). A headless reload-survival
  check lives in `src/test` (`just test`): it asserts `game_hot_reloaded` re-attaches
  the same allocation and keeps state.
- **No Spall instrumentation in lab/ yet.** Shared
  `tools/domains/odin/odin_lib/instrument/` is ready. Wire when there's a real
  frame-time question to answer.
