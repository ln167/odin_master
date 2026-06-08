# Game (the bespoke, hot-reload dev side)

> **This is one bespoke game, not a reusable engine, library, or framework — and must never become one.** Nothing here is generic or meant for reuse by another game or person (Blow / Muratori style). The "engine-y" parts below (the hot-reload host, software raster, physics) are *this game's* specific machinery, grown from its needs. The only thing deliberately swappable is a **pipeline**: a function with a fixed input/output contract whose internal technique you can swap to trade accuracy/speed and benchmark — for experimenting on this game, never for genericity. See `CLAUDE.md` → "Bespoke game, not an engine."

**Date:** 2026-05-06 (PLAYGROUND.md → ENGINE.md 2026-05-09 → reframed as GAME.md 2026-06-06)
**Status:** Mostly forward-looking. The hot-reload harness in `lab/` is real (Phases 0–4 done, Windows-verified); the "six tools" and GPU phases below are still aspirational. This doc describes the *target*, not the current state — see `lab/PLAN.md` for what is actually built.

Companion to `LEARNING.md` (Odin language learning loop) and `ONBOARDING.md` (substrate structure). The game's dev environment is a separate concern from the substrate's category-1 wiki; it uses the substrate as a reference layer.

---

## Vision

A hot-reload graphics dev setup in Odin + SDL3 that supports two phases of work:

1. **Learning phase** (immediate): write rudimentary graphics experiments (drawing pixels, lines, polygons; sampling textures; simple physics) and iterate in real-time. Each experiment is a small Odin file; saving rebuilds and reloads in under a second without losing window or state.

2. **Prototype phase** (later): becomes the host for the 2D Engineer's Cave prototype described in `from_old_repo_references/PIVOT.md`. Same hot-reload infrastructure, more sophisticated game logic on top.

This is NOT an engine in the Unity / Unreal sense. There is no level editor, no asset pipeline, no scripting layer, no scene graph, no plugin system. It is **a game-with-dev-tools-baked-in** pattern: one binary, dev affordances layered on top of a running simulation.

---

## Why this exists

Real-time feedback is the operating principle. Every iteration that requires compile-link-restart-reopen-rewindow costs 5-30 seconds. A hot-reload loop costs 0.2-1 second. Over the learning phase, that's hundreds of minutes saved and a fundamentally different relationship with the code: experiments become cheap, hypotheses become testable in seconds, "what if I tried..." becomes "let me see right now."

For graphics work specifically, fast iteration is even more valuable than for logic work because graphics bugs are visual: the moment you change something and see the result, debugging happens in your head, not in print statements.

---

## Architecture

Karl Zylinski's `odin-raylib-hot-reload-game-template` is the canonical pattern. Adapt it (we use SDL3 instead of raylib; the host + DLL boundary is identical).

```
odin_master/lab/                         <-- one of: lab/, bench/, tests/, scratch/
├── src/
│   ├── main_hot_reload.odin             host EXE: reload watcher + the Game_API struct
│   └── game/                            <-- the hot-reloadable DLL (package game)
│       ├── game.odin                    exported entry points (game_init, game_update, ...)
│       ├── game_memory.odin             the persistent Game_Memory struct + g_mem
│       ├── physics.odin                 experiment code (Verlet step)
│       ├── raster.odin                  software rasterizer (set_pixel, draw_line, ...)
│       └── save_ppm.odin                PPM framebuffer dump
├── build.py                             wraps `odin build` (hot / clean)
└── justfile                             lab-build recipes

(The Game_API struct — the function signatures the host calls — lives inside
main_hot_reload.odin; there is no separate shared/ package.)
```

**Host responsibilities:**
- Watch the game DLL for changes; reload on save.
- Call `game_init_window`, `game_init`, `game_update`, `game_shutdown_window` on the loaded DLL.
- Persist `Game_Memory` allocation across reloads via `game_memory()` / `game_hot_reloaded()`.

**DLL responsibilities:**
- Set up SDL3 (`sdl.Init` in `game_init_window`); create the window, renderer, and streaming texture in `game_init`.
- All simulation, all rendering logic.
- Operates on `Game_Memory` reattached by the host on reload.

> **SDL3 init lives in the DLL, matching Karl's template.** The window survives reloads because `game_init_window` is called once at startup, not on every reload. Putting init in the DLL means changes to window/renderer setup are part of the reload cycle (good), at the cost of a one-time startup; putting it in the host would require recompiling the host to change init code. Karl's template, our `templates/game/`, and `lab/` all do this; an earlier draft of this doc claimed the opposite, that was wrong.
>
> **SDL handles (window, renderer, framebuffer texture) live in `Game_Memory`, not in DLL globals.** DLL globals reset on each reload. The window handle returned by `SDL_CreateWindow` is created once at startup (in `game_init`) and stored on the heap-allocated `Game_Memory` so the new DLL can reach it via `g_mem` after `game_hot_reloaded`. The SDL3 system itself lives in `SDL3.dll`, separate from our game DLL, so its internal state survives our reloads naturally.

**Game DLL responsibilities:**
- All simulation, all rendering logic.
- All experimental code lives here.
- Operates on State struct passed in by host.
- No globals with state (use State struct instead).
- No threads (or join them on unload).

The host is small (~100 lines). The DLL boundary is small (~5 functions). Everything else is the game.

---

## The six tools

When the dev host is built, these are the dev affordances that should exist from day one. None of them require an "edit mode." All run inside the live simulation.

> **Build status (2026-05-29):** only tool #1 (hot code reload) exists today. Tools #2–#6 are *design, not code* — don't treat them as present. They get built when a live session actually needs them, not on spec.

### 1. Hot code reload

Save a `.odin` file → DLL recompiles → host reloads it → State struct survives → game continues with new code.

Iteration time: ~200-500ms for a small project. **Non-negotiable.**

### 2. Toggleable debug overlays

`F1`-`F12` keys turn on/off per-system overlays. Examples (some apply only when game logic exists):

- Pixel grid wake zones (which areas are voxel vs heightline vs mesh)
- Bond network with stress coloring
- Material composition heatmap
- Promotion candidate connected components
- Constraint residuals as bar charts
- Frame timing breakdown

Overlays are just more pixel writes / draw calls. Cheap to add. Toggle state lives in the State struct so it survives reloads.

### 3. In-game tweakers

Tilde (`~`) brings up a panel with sliders for live parameters: gravity, bond stiffness, pixel cell size, fracture threshold, dynamite radius, debug colors, etc. Use Dear ImGui — the UI design-of-record (`docs/design/ui-strategy.md`, via Capati/odin-imgui). (An earlier draft of this doc suggested `vendor/microui`; ui-strategy.md superseded that with Dear ImGui.)

### 4. State snapshot / restore

`Ctrl+S` serializes the entire simulation state (heightline, active pixel grids, rigid bodies, bonds, parameters) to a file in ~10ms. `Ctrl+L` loads it.

**Critical for novel-physics work.** "Redo that exact dynamite blast 50 times with different bond stiffnesses" takes 10 hours without snapshots and 10 minutes with them.

Implementation: if State is a struct of plain data, serialization is a binary write. Versioning via a magic number + version field in the struct.

### 5. Pause / step / scrub

- `Space` pauses the simulation.
- `.` steps one tick forward while paused.
- `,` steps one tick backward (requires a ring buffer of recent states; ~60 frames at full state copy is cheap for small worlds).

Watch a fracture frame-by-frame, back up, change a parameter, replay.

### 6. Mouse-driven event injection

Click to spawn dynamite. Drag to draw a carve stencil. Right-click to place a brace. This is gameplay input but during dev it's also the test harness. Same code path.

---

## Hot-reload limits & workarounds

What works cleanly:
- Procedure body changes
- New procedures in existing files
- Constants
- Logic changes anywhere in the DLL

What requires care:

| Change | Behavior | Workaround |
|---|---|---|
| State struct layout edit (add/remove field) | Existing in-memory state has wrong layout; crash or corruption | Write a migration function called on reload; or accept state reset for that change |
| DLL globals with state | Reset on reload | Put persistent state in State struct only; never use DLL globals for anything that should survive |
| Threads spawned from DLL | Old code pointers stale; crash likely | Don't spawn threads from DLL, or join all threads on unload |
| Long-lived function pointers | Go stale on reload | Re-resolve on reload |
| Host-level change (host source, SDL3 setup) | Requires host restart | Keep host small (~100 lines) so this rarely fires |
| Old DLL handles after `FreeLibrary` + `LoadLibrary` | Windows surfaces `MOD_NOT_FOUND` on subsequent loads | Never unload while running; copy `game.dll` -> `loaded_N.dll` before each load (Karl's pattern) |
| Compile error | Reload blocked until fixed | Odin compiles in <1s for small projects; barely friction |

For 90%+ of graphics learning and game-logic iteration, hot reload just works. The 10% that breaks is mostly State struct layout edits, where you either migrate or accept a state reset.

---

## What this is NOT

Explicitly out of scope, even forever:

- **Level editor / scene graph editor.** No content authors, nothing to edit.
- **Asset pipeline.** Load PNGs directly via `stbi_load`. No cooking, no packaging.
- **Scripting layer.** Game logic is Odin. No Lua, no Python, no Wren.
- **Plugin system.** Everything compiles into the game DLL.
- **Networking abstraction.** Single-player only.
- **Multiple build configurations.** One debug, one release.
- **A general-purpose engine in the Unity / Unreal sense.** This serves one user and one game (and learning experiments along the way).

Anything that adds complexity without reducing the dev loop time is the enemy.

---

## Relationship to the substrate

The game and its dev tools sit alongside the substrate, not inside it. Specifically:

- **The substrate** (`content/domains/`) is for *external* technical knowledge: Odin language, papers, SDL3, engines, graphics. Category-1 lookup-and-synthesis. LLM never writes to `source/`; in `vault/`, only `vault/lessons/` is LLM-editable.
- **The runnable surface** (`lab/`, `bench/`, `tests/`, `scratch/`) is for *internal* code: experiments, learning artifacts, eventually the game prototype. Different ownership rules: this is normal code under git.

When lab experiments raise a question that needs an authoritative answer ("how does dual contouring work?", "what's the right Vulkan barrier here?"), the substrate is the place you go to find or build that answer. The substrate informs the game; the game does not pollute the substrate.

## Foundational, not throwaway: the runnable-surface roles

The repo's runnable-code dirs hold **four peer roles** with deliberately separated lifecycles. The hot-reload host is one of them. None of the four is a one-off; each is foundational tooling that sticks around for the whole project.

| Role | Lifecycle | Purpose |
|---|---|---|
| `lab/` | persistent process | hot-reload host + swappable game DLL; the workshop you stay in |
| `bench/<name>/` | one-shot run | perf measurement; runs, prints timings, exits |
| `tests/<slug>/` (live; graphics lessons 00–09) | one-shot run | correctness check; diffs actual vs expected output |
| `scratch/<name>/` | throwaway | "I want to try a thing" — gitignored at the file level |
| `profiles/` | output sink | Spall traces dropped here, gitignored |

All four use the same Odin compiler, share `tools/domains/odin/odin_lib/instrument/` for Spall/Tracy zones, and route through the same `just` recipes (`just lab`, `just bench <name>`, `just verify <slug>` / `just verify-all`). The DX is uniform on purpose: one mental model, four lifecycles.

**Hot-reload `lab/` is the only persistent role.** The others are isolated programs that you fire off, read the answer, and move on.

## Programs vs profilers: testing and measurement vocabulary

Five overlapping concepts that confuse people on a cold read. The runnable-surface
roles above describe *where programs live* and *their lifecycle*. This table cuts
the same space differently: *what kind of question each tool answers*, and how
you invoke it. Spall and Tracy are not directories, they are compile-time
switches on `tools/domains/odin/odin_lib/instrument/` that any program (lab,
bench, tests) can opt into.

```
+----------------------+--------------------------+-----------------------+--------------------------+----------------------+
| Name                 | Answers                  | Where                 | Invoked by               | Status               |
+----------------------+--------------------------+-----------------------+--------------------------+----------------------+
| odin test (builtin)  | does this proc work?     | @(test) procs inline  | odin test <pkg> (no recipe) | lessons/templates only |
+----------------------+--------------------------+-----------------------+--------------------------+----------------------+
| bench/<name>/        | how fast does X run?     | bench/<name>/main.odin| just bench <name>        | recipe live, 3 progs |
+----------------------+--------------------------+-----------------------+--------------------------+----------------------+
| tests/<slug>/        | does X give the right    | tests/<slug>/main.odin| just verify <slug>       | gfx lessons 00-09    |
| (= "executable       |  output? (diff vs        |                       | just verify-all          | (claim-backed: TODO) |
|   verification")     |  expected.txt)           |                       |                          |                      |
+----------------------+--------------------------+-----------------------+--------------------------+----------------------+
| Spall   (backend)    | where did time go?       | instrument.odin       | -define:INSTRUMENT=spall | shipped              |
|                      |  offline .spall trace,   |  (compile-time switch)|                          |  bench uses this     |
|                      |  load in viewer after    |                       |                          |                      |
+----------------------+--------------------------+-----------------------+--------------------------+----------------------+
| Tracy   (backend)    | live realtime frame      | instrument.odin       | -define:INSTRUMENT=tracy | shipped              |
|                      |  profiler, attaches to a |  (compile-time switch)|                          |  intended for lab    |
|                      |  running process via TCP |                       |                          |                      |
+----------------------+--------------------------+-----------------------+--------------------------+----------------------+
```

**Mental model:** `odin test`, `bench`, and `tests` are *what kind of program
you run*. Spall and Tracy are *how you observe any of them running*. Default
`INSTRUMENT=false` means zero overhead, you only pay for Spall/Tracy when you
opt in at compile time.

## Tying in `executable verification` (future)

`docs/superpowers/specs/2026-05-08-executable-verification-idea.md` (idea-only, not implemented) proposes that objective wiki claims ("X allocates capacity Y", "this syntax compiles to Z") get backed by runnable artifacts under `tests/`. That artifact directory is already a peer to `bench/` and `lab/` with the same isolated-program shape and the same `just verify <slug>` invocation idiom.

`tests/` is already live: graphics-lesson reference solutions (00–09) sit there with `expected.txt` fingerprints, run via `just verify <slug>` / `just verify-all` / `just claim <slug>` (`tools/substrate/claim.py`, which runs `compiles` / `fails` / `panics` / `output` / `equiv` / `faster` / `test` claims under `tests/` + `claims/`; design in `docs/superpowers/specs/2026-06-07-claim-verification-harness-design.md`). The lessons-as-claims wiring is now **built**: all 29 Odin lessons under `content/domains/odin/vault/lessons/` have been swept into `claims/lessons/NN-slug/` (each lesson's solution as an `output`/`test` claim plus its "break it" cases as `fails`/`panics`/`output` claims, every error/panic substring captured from a real build — and several stale or wrong lesson claims corrected in the process).

---

## How phases here line up with PIVOT.md rungs

This doc and `from_old_repo_references/PIVOT.md` use different sequencing words; reconciliation:

| Phase | What it ships | PIVOT rung mapping |
|---|---|---|
| **Phase 0** ✅ | Hot-reload host + DLL, stdout only | infrastructure (no rung) |
| **Phase 1** ✅ | SDL3 window, framebuffer pointer through `Game_Memory` | infrastructure (no rung) |
| **Phase 2** ✅ | Single-pixel write into the streaming texture | infrastructure (no rung) |
| **Phase 3** ✅ | Lines, rects, polygons (own software rasterizer) | infrastructure (no rung) |
| **Phase 4** ✅ | First Verlet particle plotted | **rung 1** of PIVOT ladder begins here |
| Phase 5 | Pair particle + distance constraint | rung 2 |
| Phase 6 | Multi-constraint solver | rung 3 |
| Phase 7 | Bond network with fracture | rung 4 |
| Phase 8 | Pixel grid of bonded particles | rung 5 |
| Phase 9 | Rigid body promotion from connected components | rung 6 |

Phases 0-3 are *infrastructure*: window, framebuffer, primitive drawing. PIVOT rungs 1-6 are the *physics* ladder. They start interleaving at Phase 4. By Phase 9 the prototype's central architectural thesis (promote/demote bridge) is testable.

---

## When to build it

When the basic Odin lessons in `content/domains/odin/vault/lessons/` are complete enough that the user is ready to start writing graphics code. Probably:

1. Finish core Odin lessons (syntax, types, generics, allocators, error handling).
2. Set up the lab with hot reload + basic SDL3 window. **One day's work.** (Phases 0–4 are already done in `lab/` as of 2026-05-08, Windows-verified: hot reload through one Verlet particle.)
3. Use it as the learning vehicle for graphics rudiments: draw a pixel, draw a line, fill a polygon, blend colors, sample a texture, transform coordinates. Each as a tiny experiment in the DLL.
4. Build up the six tools incrementally as needed (overlays first, then tweakers, etc.).
5. When the architecture is ready, the lab host becomes the prototype's host. No infrastructure rebuild.

The dev host is intentionally built *before* the prototype because the learning phase benefits from it just as much, and building it later would mean either: (a) doing learning without fast feedback (slow), or (b) building the prototype with whatever ad-hoc setup gets cobbled together first (mess).

---

## What this document is

A target. Not a plan. The order, scope, and exact tools may change. The principles will not:

- **Real-time feedback is the operating virtue.** Anything that breaks the dev loop is the enemy.
- **One binary.** The dev host and game code aren't split apart.
- **Dev affordances layered on a running simulation.** No edit mode.
- **The dev host informs the prototype.** Same host, same hot-reload, more sophisticated game logic on top when the time comes.
- **Windows-first (for now).** Active development is Windows-only; `lab/` Phases 0–4 are Windows-verified. The code stays cross-platform *by construction* (`vendor:sdl3`, `core:dynlib`/`os`/`time`, OS-gated bits in `build.py`), and the porting notes in `lab/HANDOFF_FROM_WINDOWS.md` are kept for when a second platform is actually re-tested — but Linux/macOS are **unverified** today. Treat "runs on Linux" as a hypothesis, not a guarantee, until it has been gated there.
- **CPU first, GPU later.** Software-rasterize the foundations (pixel, line, polygon, blend, sample, transform) before touching the GPU. The math transfers; only the API differs. Skipping the CPU phase produces people who can call `glDraw*` but cannot debug their own shader output. Phase 4+ is where GPU optionally enters.
- **No raylib.** Even though it would be faster to learn, batteries-included drawing primitives are exactly what foundations-first is *against*. SDL3 gives a window and a framebuffer; everything above that we write.
