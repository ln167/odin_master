# Playground (future-state)

**Date:** 2026-05-06
**Status:** Forward-looking. Not yet built. This document describes what `odin_master` should turn into as a real-time graphics playground for learning + foundational experimentation.

Companion to `LEARNING.md` (Odin language learning loop) and `ONBOARDING.md` (substrate structure). The playground is a separate concern from the substrate's category-1 wiki — it's a dev environment that uses the substrate as a reference layer.

---

## Vision

A hot-reload graphics playground in Odin + SDL3 that supports two phases of work:

1. **Learning phase** (immediate): write rudimentary graphics experiments (drawing pixels, lines, polygons; sampling textures; simple physics) and iterate in real-time. Each experiment is a small Odin file; saving rebuilds and reloads in under a second without losing window or state.

2. **Prototype phase** (later): becomes the host for the 2D Engineer's Cave prototype described in `../projects/ultimate-flat/PIVOT.md`. Same hot-reload infrastructure, more sophisticated game logic on top.

The playground is NOT a game engine in the Unity / Unreal sense. There is no level editor, no asset pipeline, no scripting layer, no scene graph, no plugin system. It is **a game-with-dev-tools-baked-in** pattern: one binary, dev affordances layered on top of a running simulation.

---

## Why this exists

Real-time feedback is the operating principle. Every iteration that requires compile-link-restart-reopen-rewindow costs 5-30 seconds. A hot-reload loop costs 0.2-1 second. Over the learning phase, that's hundreds of minutes saved and a fundamentally different relationship with the code: experiments become cheap, hypotheses become testable in seconds, "what if I tried..." becomes "let me see right now."

For graphics work specifically, fast iteration is even more valuable than for logic work because graphics bugs are visual: the moment you change something and see the result, debugging happens in your head, not in print statements.

---

## Architecture

Karl Zylinski's `odin-raylib-hot-reload-game-template` is the canonical pattern. Adapt it (we use SDL3 instead of raylib; the host + DLL boundary is identical).

```
odin_master/lab/                         <-- one of: lab/, bench/, tests/, scratch/
├── host/                                <-- thin host EXE
│   ├── main.odin                        window, input, hot-reload watcher
│   └── dynlib_loader.odin               cross-platform DLL/dylib/so loading
├── game/                                <-- the hot-reloadable DLL
│   ├── game.odin                        update + draw entry points
│   ├── state.odin                       the persistent State struct
│   └── ...                              experiment-specific files
├── shared/                              <-- types shared between host + DLL
│   └── api.odin                         function signatures host calls
└── justfile                             lab-build recipes
```

**Host responsibilities:**
- Watch the game DLL for changes; reload on save.
- Call `game_init_window`, `game_init`, `game_update`, `game_shutdown_window` on the loaded DLL.
- Persist `Game_Memory` allocation across reloads via `game_memory()` / `game_hot_reloaded()`.

**DLL responsibilities:**
- Open the window, set up SDL3, allocate the streaming texture (in `game_init_window`).
- All simulation, all rendering logic.
- Operates on `Game_Memory` reattached by the host on reload.

> **SDL3 init lives in the DLL, matching Karl's template.** The window survives reloads because `game_init_window` is called once at startup, not on every reload. Putting init in the DLL means changes to window/renderer setup are part of the reload cycle (good), at the cost of a one-time startup; putting it in the host would require recompiling the host to change init code. Karl's template, our `templates/game/`, and `lab/` all do this; an earlier draft of this doc claimed the opposite, that was wrong.
>
> **SDL handles (window, renderer, framebuffer texture) live in `Game_Memory`, not in DLL globals.** DLL globals reset on each reload. The window handle returned by `SDL_CreateWindow` is created once in `game_init_window` and stored on the heap-allocated `Game_Memory` so the new DLL can reach it via `g_mem` after `game_hot_reloaded`. The SDL3 system itself lives in `SDL3.dll`, separate from our game DLL, so its internal state survives our reloads naturally.

**Game DLL responsibilities:**
- All simulation, all rendering logic.
- All experimental code lives here.
- Operates on State struct passed in by host.
- No globals with state (use State struct instead).
- No threads (or join them on unload).

The host is small (~100 lines). The DLL boundary is small (~5 functions). Everything else is the game.

---

## The six tools

When the playground is built, these are the dev affordances that should exist from day one. None of them require an "edit mode." All run inside the live simulation.

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

Tilde (`~`) brings up a panel with sliders for live parameters: gravity, bond stiffness, pixel cell size, fracture threshold, dynamite radius, debug colors, etc. Use `vendor/microui` (already in Odin) or hand-roll an immediate-mode panel in 200 lines.

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

## What the playground is NOT

Explicitly out of scope, even forever:

- **Level editor / scene graph editor.** No content authors, nothing to edit.
- **Asset pipeline.** Load PNGs directly via `stbi_load`. No cooking, no packaging.
- **Scripting layer.** Game logic is Odin. No Lua, no Python, no Wren.
- **Plugin system.** Everything compiles into the game DLL.
- **Networking abstraction.** Single-player only.
- **Multiple build configurations.** One debug, one release.
- **A general-purpose engine.** This serves one user and one game (and learning experiments along the way).

Anything that adds complexity without reducing the dev loop time is the enemy.

---

## Relationship to the substrate

The playground sits alongside the substrate, not inside it. Specifically:

- **The substrate** (`content/domains/`) is for *external* technical knowledge: Odin language, papers, SDL3, engines, graphics. Category-1 lookup-and-synthesis. LLM never writes to `source/` or `vault/`.
- **The runnable surface** (`lab/`, `bench/`, `tests/`, `scratch/`) is for *internal* code: experiments, learning artifacts, eventually the game prototype. Different ownership rules: this is normal code under git.

When the playground experiments raise a question that needs an authoritative answer ("how does dual contouring work?", "what's the right Vulkan barrier here?"), the substrate is the place you go to find or build that answer. The substrate informs the playground; the playground does not pollute the substrate.

## Foundational, not throwaway: the runnable-surface roles

The repo's runnable-code dirs hold **four peer roles** with deliberately separated lifecycles. The hot-reload host is one of them. None of the four is a one-off; each is foundational tooling that sticks around for the whole project.

| Role | Lifecycle | Purpose |
|---|---|---|
| `lab/` | persistent process | hot-reload host + swappable game DLL; the workshop you stay in |
| `bench/<name>/` | one-shot run | perf measurement; runs, prints timings, exits |
| `tests/<slug>/` (future, see spec below) | one-shot run | correctness check; diffs actual vs expected output |
| `scratch/<name>/` | throwaway | "I want to try a thing" — gitignored at the file level |
| `profiles/` | output sink | Spall traces dropped here, gitignored |

All four use the same Odin compiler, share `tools/domains/odin/odin_lib/instrument/` for Spall/Tracy zones, and route through the same `just` recipes (`just lab`, `just bench <name>`, `just verify <slug>` (future)). The DX is uniform on purpose: one mental model, four lifecycles.

**Hot-reload `lab/` is the only persistent role.** The others are isolated programs that you fire off, read the answer, and move on.

## Tying in `executable verification` (future)

`docs/superpowers/specs/2026-05-08-executable-verification-idea.md` (idea-only, not implemented) proposes that objective wiki claims ("X allocates capacity Y", "this syntax compiles to Z") get backed by runnable artifacts under `tests/`. That artifact directory is already a peer to `bench/` and `lab/` with the same isolated-program shape and the same `just verify <slug>` invocation idiom.

The slot exists already at `tests/` (with a placeholder README). Nothing to implement until the design proceeds. The framing here is enough to keep future work coherent: anything we build today should be reusable when verifications come online.

---

## How phases here line up with PIVOT.md rungs

This doc and `../projects/ultimate-flat/PIVOT.md` use different sequencing words; reconciliation:

| PLAYGROUND phase | What it ships | PIVOT rung mapping |
|---|---|---|
| **Phase 0** ✅ | Hot-reload host + DLL, stdout only | infrastructure (no rung) |
| **Phase 1** | SDL3 window, framebuffer pointer through `Game_Memory` | infrastructure (no rung) |
| **Phase 2** | Single-pixel write into the streaming texture | infrastructure (no rung) |
| **Phase 3** | Lines, rects, polygons (own software rasterizer) | infrastructure (no rung) |
| **Phase 4+** | First Verlet particle plotted | **rung 1** of PIVOT ladder begins here |
| Phase 5 | Pair particle + distance constraint | rung 2 |
| Phase 6 | Multi-constraint solver | rung 3 |
| Phase 7 | Bond network with fracture | rung 4 |
| Phase 8 | Pixel grid of bonded particles | rung 5 |
| Phase 9 | Rigid body promotion from connected components | rung 6 |

PLAYGROUND phases 0-3 are *infrastructure*: window, framebuffer, primitive drawing. PIVOT rungs 1-6 are the *physics* ladder. They start interleaving at Phase 4. By Phase 9 the prototype's central architectural thesis (promote/demote bridge) is testable.

---

## When to build it

When the basic Odin lessons in `content/domains/odin/vault/lessons/` are complete enough that the user is ready to start writing graphics code. Probably:

1. Finish core Odin lessons (syntax, types, generics, allocators, error handling).
2. Set up the lab with hot reload + basic SDL3 window. **One day's work.** (Phase 0 of this is already done in `lab/` as of 2026-05-06; the SDL3 step is Phase 1.)
3. Use it as the learning vehicle for graphics rudiments: draw a pixel, draw a line, fill a polygon, blend colors, sample a texture, transform coordinates. Each as a tiny experiment in the DLL.
4. Build up the six tools incrementally as needed (overlays first, then tweakers, etc.).
5. When the architecture is ready, the playground host becomes the prototype's host. No infrastructure rebuild.

The playground is intentionally built *before* the prototype because the learning phase benefits from it just as much, and building it later would mean either: (a) doing learning without fast feedback (slow), or (b) building the prototype with whatever ad-hoc setup gets cobbled together first (mess).

---

## What this document is

A target. Not a plan. The order, scope, and exact tools may change. The principles will not:

- **Real-time feedback is the operating virtue.** Anything that breaks the dev loop is the enemy.
- **One binary.** No engine/game separation.
- **Dev affordances layered on a running simulation.** No edit mode.
- **The playground informs the prototype.** Same host, same hot-reload, more sophisticated game logic on top when the time comes.
- **Cross-platform from day one.** The dev path is Windows ↔ Linux (the same user moves between machines mid-project). Native macOS is best-effort. Anything we build must compile and run unchanged on Windows + Linux. No Windows-only tooling on the critical path.
- **CPU first, GPU later.** Software-rasterize the foundations (pixel, line, polygon, blend, sample, transform) before touching the GPU. The math transfers; only the API differs. Skipping the CPU phase produces people who can call `glDraw*` but cannot debug their own shader output. Phase 4+ is where GPU optionally enters.
- **No raylib.** Even though it would be faster to learn, batteries-included drawing primitives are exactly what foundations-first is *against*. SDL3 gives a window and a framebuffer; everything above that we write.
