# lab

Hot-reload host + game DLL. Phase 0: stdout only. SDL3 window arrives in Phase 1.

## What this is (and is not)

`lab/` is **foundational tooling**, not a one-off experiment. The host (`lab.exe`),
the build script, and the DLL boundary are expected to outlive any specific
experiment that sits in `src/game/`. The current contents of `src/game/` are the
*current* experiment; the host pattern is permanent.

Peer to `bench/` (perf, one-shot programs) and `tests/` (correctness,
one-shot programs). `lab/` is the only one of the three that runs as a
persistent process. See `../tests/README.md` for the lifecycle table.

Forward-looking vision in `../PLAYGROUND.md`. Architectural framing in
`../../projects/ultimate-flat/PIVOT.md`. Lesson-form tour of the underlying
hot-reload pattern in `../content/domains/odin/vault/lessons/18-hot-reload-tour/`.

## Quick start

From the substrate root:

```sh
just lab          # build DLL + start host
just lab-build    # rebuild DLL only (host auto-reloads)
just lab-clean    # wipe build/
```

From inside `lab/`, two terminals:

```sh
# Terminal 1 (run once):
python build.py hot
./build/hot_reload/lab[.exe]

# Terminal 2 (every save):
python build.py hot
```

Edit anything in `src/game/`, run `python build.py hot`, the host picks up the
new DLL within ~16 ms. `Game_Memory` survives the swap; `g_mem.counter` keeps
ticking through reloads, proving the swap is non-destructive.

## Layout

```
src/
  main_hot_reload.odin   host: copies game.dll -> game_N.dll, loads, swaps
  game/
    game.odin            DLL exports (game_init, game_update, ...)
    game_memory.odin     Game_Memory struct + g_mem
build.py                 wraps `odin build` (hot / clean only)
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
3. **PDB filename includes a timestamp** (`-pdb-name:game_<unix>.pdb`). Lets you
   keep a debugger attached across rebuilds without PDB lock conflicts. Karl's
   template uses an incrementing counter file; we use `int(time.time())` because
   it's simpler and not worth a counter-file roundtrip.
4. **`g_mem` is a single pointer; all state behind it.** No DLL globals carry
   state. The host owns the `Game_Memory` allocation; reload re-attaches the
   same pointer via `game_hot_reloaded`.

## What is NOT here (and known TODOs)

Deliberately deferred:

- **No SDL3, no graphics, no window.** Lands in Phase 1. SDL3 init will live
  in the DLL (`game_init_window`, exported), matching Karl's pattern. The
  window survives reloads regardless of where init lives, because `init_window`
  is called once at startup and never re-called on reload.
- **No `force_reload` / `force_restart` exports.** Add only when needed.
- **No automatic file watcher.** Two-terminal manual rebuild is fine for now.
  Add `watchexec` if it feels slow.
- **No GPU.** Software rasterizer through Phase 8+ at least. PIVOT.md
  "Building Principles" explains why.
- **No `wait_writable` retry loop.** The mtime-poll loop self-recovers if the
  linker is briefly still finalizing the file: one frame's copy attempt will
  log `Permission_Denied`, the next frame's mtime check sees the new mtime
  again and retries. Don't add a retry loop unless this becomes a real problem.

Known issues to fix when they next bite:

- **`api_version` mismatch check missing.** Required *before* the first time
  `Game_Memory` changes shape between reloads (Phase 2 candidate). Without it,
  a layout-change reload silently corrupts state.
- **`ols.json` collection path is stale.** Says `tools/odin_lib`, real path is
  `tools/domains/odin/odin_lib`. Will bite as soon as anything in `lab/` does
  `import "odin_lib:..."`.
- **No Spall instrumentation in lab/ yet.** Shared
  `tools/domains/odin/odin_lib/instrument/` is ready. Wire when there's a real
  frame-time question to answer.
