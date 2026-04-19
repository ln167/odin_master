# Plan 4 — Hot-reload template (Karl Zylinski pattern)

> **Status:** OUTLINE — full task-by-task plan to be written when Plan 1 is implemented and verified working.
>
> **Why outline only:** per the user's incremental-commitment strategy, we don't draft detailed plans for downstream work that may shift once foundation work surfaces real constraints.

**Goal:** Materialize `templates/game/` as a self-contained, working Karl-Zylinski-style hot-reload Odin project; implement `odin-master new <name> --template game` to copy + parameter-substitute the template into a target directory; the resulting project compiles on Linux / macOS / Windows and supports edit-recompile-reload with `Game_State` preserved.

**Depends on:** Plan 1 (templates/game/README placeholder + odin-master CLI shell exist).

**Architecture:** Lift Karl Zylinski's `Game_API` + dynlib-swap pattern verbatim per spec §9.2. Host process owns memory and the live DLL handle; game DLL exports a fixed proc surface. On reload: capture memory pointer via `game_memory()`, unload old DLL, load new DLL, hand pointer back via `game_hot_reloaded()`. Cross-platform DLL extension and rpath handling per spec §9.2 bullets. Build orchestration is Karl's Sokol-style unified `build.py` (one Python script, not three OS shell scripts). The `App_*` parameterization variant for non-game projects is a follow-up (drop unless we want it now).

**Tech Stack:** Odin (template code); Python 3.12 (`build.py` orchestrator + `odin-master new` substitution logic — already from Plan 2 dependency stack); `core:dynlib` (in-template); raylib via `vendor:raylib` (default game template dep, swappable).

## Files this plan will touch

- Modify: `tools/indexer/odin_master/cli.py` (replace `new` stub with real scaffolder)
- Create: `tools/indexer/odin_master/scaffolder.py` (template copy + `{{name}}` substitution logic)
- Create: `tools/indexer/tests/test_scaffolder.py`
- Replace: `templates/game/README.md` (real, end-user docs for the template)
- Create: `templates/game/.odin-version` (inherits the master pin)
- Create: `templates/game/justfile` (build / run / hot / clean / test)
- Create: `templates/game/build.py` (Karl-style cross-platform orchestrator)
- Create: `templates/game/ols.json` (project-local OLS config)
- Create: `templates/game/odinfmt.json`
- Create: `templates/game/.gitignore`
- Create: `templates/game/src/main_hot_reload.odin` (host process — Game_API, dynlib loader, reload loop)
- Create: `templates/game/src/main_release.odin` (single-binary release build path)
- Create: `templates/game/src/game/game.odin` (the game DLL — `@(export)` proc surface)
- Create: `templates/game/src/game/game_memory.odin` (`Game_Memory` struct + helpers)
- Create: `templates/game/.odin-master/template-sha.txt` (recorded at scaffold time by `odin-master new`)
- Create: end-to-end test runner under `tests/test_scaffold_compiles.py` (or `tools/indexer/tests/test_scaffold_e2e.py`) — scaffolds to tempdir, runs `odin build` if compiler present.

## Components (rough)

1. **Scaffolder library** — given `(template_name, target_dir, name)`, copy `templates/<template_name>/` recursively to `target_dir`, substituting `{{name}}` and other template params in `.odin`, `.json`, `.toml`, `justfile`, `*.md` files. Records the current `odin_master` repo SHA into `.odin-master/template-sha.txt` of the new project (consumed by Plan 6's `update-template`).
2. **Game host** (`src/main_hot_reload.odin`) — implements the full `Game_API` struct (fields per spec §9.2), the dynlib load loop, the file-watcher / mtime polling loop, and the reload protocol (`game_memory` → unload → load → `game_hot_reloaded`).
3. **Game DLL** (`src/game/game.odin`) — `@(export)` procs: `game_init_window`, `game_init`, `game_update`, `game_should_run`, `game_shutdown`, `game_shutdown_window`, `game_memory`, `game_memory_size`, `game_hot_reloaded`, `game_force_reload`, `game_force_restart`. Plus a sample `Game_State` (e.g., a counter that survives reloads) to make the demo proof-of-life obvious.
4. **`Game_Memory`** — heap struct holding all state; allocated by `game_init`; pointer rehydrated by `game_hot_reloaded`.
5. **Cross-platform build** (`build.py`) — Linux: `.so`, copy vendored libs to `build/hot_reload/linux/`, `-Wl,-rpath=$ORIGIN/linux`. macOS: `.dylib`, `-Wl,-rpath $ROOT/vendor/raylib/macos`. Windows: `.dll` + the file-lock workaround (copy to `game_<api_version>.dll` before loading) + `-pdb-name` rotation per reload.
6. **`justfile`** in the template — `just dev` (the hot-reload run loop), `just build [profile]`, `just run`, `just test`, `just clean`. Wires `build.py`.
7. **`mem.tracking_allocator`** wired into the debug build per spec §10.6 (CI-gating leak detection).

## Test gates (acceptance criteria)

- `odin-master new my_game --template game` to a tempdir produces a directory tree matching `templates/game/` with `{{name}}` substituted to `my_game` everywhere it appears.
- `template-sha.txt` is written and matches the master repo's HEAD SHA.
- `cd /tempdir/my_game && odin build .` succeeds on Linux (CI-gated).
- (Best-effort) `odin build .` succeeds on macOS and Windows runners — covered in Plan 7's matrix; Plan 4 just ensures the code is correct in principle.
- `just dev` starts the host and prints "ready"; editing `src/game/game.odin` (changing a constant) triggers a reload within 2 s and the in-memory counter survives (proof of `game_memory` rehydration).
- Asan profile (`just build asan`) compiles and runs cleanly on a no-op session.
- `mem.tracking_allocator` reports zero leaks on a clean shutdown of the demo game.
- Scaffolder rejects invalid project names (path-traversal, illegal chars) with a clear error.
- Re-running `odin-master new` against an existing dir requires `--force` (or some explicit flag) — does not silently overwrite.

## Out of scope for this plan

- The `lib` and `cli` templates — separate sub-plan if/when they become real.
- The `App_*` parameterization variant for non-game projects — defer unless needed.
- Web target (Emscripten) — informational only per spec §11.5.
- `odin-master update-template` (three-way merge) — that lives in Plan 6.
- Cross-OS validation of the hot-reload loop in CI — handled in Plan 7.

## Estimated decomposition when fully detailed

~10 tasks, ordered: scaffolder library + tests (with fixture template) → update CLI `new` to call scaffolder → write the real `templates/game/` files (host + game DLL + `Game_Memory` + `build.py` + `justfile` + configs) → unit-test scaffold → end-to-end test (scaffold + `odin build` on Linux) → manual-verify hot-reload loop → wire `mem.tracking_allocator` + asan profile + tests → polish error paths and `--force`.
