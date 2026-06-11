# Tooling experiment: human-in-the-loop variant tooling for the lab

**Date:** 2026-06-10
**Status:** Session 1 in progress. Designed via a 30-agent exploration workflow
(11 axes proposed, each adversarially critiqued, then synthesized); owner
resolved the decision points in-chat before build started.
**Owner directives:** use the GPU freely — CPU-land is a constraint on the
owner's *lessons only*, never the engine/tooling; Dear ImGui for ALL UI
(debug, tooling, eventually game), it is the design of record; ImGui's
SDL_Renderer backend gets proven by a spike, not argued about.

## What this is

Tooling around the bespoke game (never an engine): the agent generates and
pre-filters variants headlessly, the human judges live with single
keypresses, and every layer reports through files the agent can read. The
flagship loop: **"four personalities of your kernel, voted in 90 seconds"** —
agent writes 4 parameter sets, owner watches a 2×2 lockstep grid in the
running lab, presses 1–4, agent breeds the next round around the winner; the
hot reload itself is the round boundary.

## The spine (everything else consumes it)

- **S1 `frame_step` extraction** (`lab/src/game/game.odin`): one whole frame,
  SDL-free — `tick_sim` + `render_frame`. The SDL host calls it between event
  pump and texture blit; the headless runner calls it directly.
- **S2 `Sim` sub-struct** (`game_memory.odin`): plain-data trajectory state
  (frame, round, particle, 4 arena tiles, paused/step/arena). Clone = value
  copy; hash = FNV-1a over bytes (padding stays zero: allocation is `new()`d,
  fields written whole); serialize = free later. Overlay/visual state (hud,
  flash) deliberately lives OUTSIDE Sim so toggling it never changes a hash.
- **S3 `labx` headless runner** (`lab/src/headless/main.odin`, `just lab-run`):
  N deterministic frames, scripted key injection ("frame KEY" lines), per-frame
  NaN/escape invariants (exit 1), state lines, folded trajectory hash, PNG
  dumps via vendored stb (`stb_image_write.lib` prebuilt). No SDL init at all —
  SDL3.dll only needs to exist on disk for the loader. The agent's eyes: it
  runs candidates, reads the PNGs (multimodal), pre-filters before the human
  looks. Tapes and scripts are the same format — record/replay's verify half
  IS this runner.
- **S4 determinism guard** (in `just lab-test`): the same 600-frame arena run
  must hash identically run-to-run and across `-o:none` vs `-o:speed`
  (optimizer-changed-my-trajectory is a real Odin/LLVM footgun). Input gates
  pinned via `-define:LAB_DEBUG_KEYS=true` so both builds handle keys the same.
- **S5 vote channel**: digit keys 1–4 in the live lab append
  `round=N winner=K params=<all four sets>` to `lab/arena/votes.log`
  (full param sets per line → convergence reconstructable though
  `arena_variants.odin` is overwritten each round). `just arena-wait`
  (`tools/arena/wait_vote.py`) blocks with timeout, prints the line, exits
  0/2. Headless builds never touch the vote file
  (`-define:LAB_HEADLESS=true`); a fresh session's first arena_reset truncates
  it so round numbers stay monotonic for the reader.

## Consumers built in session 1

- **Variant arena** (`arena.odin`, `arena_variants.odin`): A toggles a 2×2
  half-scale lockstep grid; tile i runs the owner's `step_particle` kernel
  with `ARENA_PARAMS[i]`. `arena_variants.odin` is the agent's ONLY write
  surface (parameter sets into the owner's kernel — per PLAN.md Phases 5+ the
  LLM does not write solver code; the kernel parametrization itself was a
  ~5-line mechanical change explicitly owner-authorized in-chat).
  Hot reload = round boundary (`game_hot_reloaded` → `arena_reset`: tiles
  reset, round += 1). Vote feedback: winner tile border flashes 30 frames.
- **Reload-diff** (`main_hot_reload.odin`): both DLL copies stay mapped after
  a swap, so the host seeds two copies of the live Sim (`game_sim_seed`,
  normalized unpaused), ticks one through the OLD dll and one through the NEW
  for 120 frames, comparing hashes — every save prints
  `[diff] v3 sim identical for 120 frames` or `diverges at frame 37`, and
  appends to `build/hot_reload/reload_diff.log` (the durable agent channel;
  the watch screen-clear eats console scrollback). Known blind spot, by
  design: the diff replays the live sim's current mode — an ARENA_PARAMS
  edit while arena is OFF diffs identical.
- **Host resilience**: a failed DLL load (copy racing the linker) no longer
  permanently skips that build — mtime stays stale, retry every ~216 ms with
  a single console notice + log line. Host-exe rebuild while the host runs
  prints one honest "restart to refresh the host" line instead of failing
  every subsequent save.

## Decisions taken (owner, in-chat)

1. **PLAN.md rule 7 amended** (2026-06-10): text/overlays allowed in package
   game, PNGs confined to the headless package, input *tracking* still
   deferred.
2. **GPU is allowed everywhere except the owner's lesson code.** The lab was
   already GPU-presented (SDL_Renderer = D3D11 underneath); "CPU land" only
   governs who computes the framebuffer contents.
3. **Dear ImGui for all UI**, via the SDL_Renderer backend: rebuild the
   prebuilt lib with `--backends=sdl3,sdlgpu3,sdlrenderer3` (one-word change
   in `tools/ui/build_imgui.py`, done). The explicit SDL_GPU migration stays
   parked — possibly as the owner's Phase 8 lesson. bespoke text rendering
   was dropped in favor of this.
4. **Vote channel = votes.log file** (keypress in the lab window, agent blocks
   on it); chat is for static image picks.
5. **Kernel parametrization**: owner authorized the agent to write and
   self-approve the `step_particle` change (gravity/damping → `Step_Params`).

## ImGui spike — RESOLVED (measured 2026-06-10)

DLL-owned ImGui via the sdlrenderer3 backend, context parked in
`Game_Memory.imgui`, `set_current_context` in `game_hot_reloaded` (plan A):
- **Reload survival: PASS** — 3 live hot swaps (kernel edit, revert,
  arena-params edit) with ImGui rendering throughout; no crash, no fallback
  needed.
- **Rebuild tax: 0.38s → 0.41s** — the feared multi-MB relink cost is noise.
- UI code lives in `lab/src/game/ui.odin` (hot-editable); HUD shows
  frame/status, pos/vel, and in arena mode the round plus each tile's
  parameters (the human sees the numbers they vote on). F1 toggles, on by
  default. The lib was rebuilt with `--backends=sdl3,sdlgpu3,sdlrenderer3`.

## Verification (all run 2026-06-10)

- `just lab-test`: 17/17 assertions PASS + determinism guard PASS
  (`-o:none` ≡ `-o:speed`, run-to-run identical).
- labx witness: two identical 600-frame hashes; arena PNG dumps read back by
  the agent (the 2×2 grid with four distinct fall heights is visible —
  agent-eyes loop closed end to end).
- Live session: 3 hot reloads; reload-diff printed `diverges at frame 1`
  for a gravity edit and `identical` for the revert-while-settled; the
  copy-vs-linker race fired on EVERY reload on this machine and the retry
  absorbed it each time (the old host would have wedged on the first one).
- wait_vote.py: synthetic votes.log → fresh round returned (exit 0), stale
  round timed out (exit 2).
- Pre-build, a 2-agent adversarial review (compile-blocker hunt against the
  dev-2026-04 dist sources + behavioral hand-trace) found the
  stale-votes.log bug (fixed: first arena_reset of a session truncates) and
  headless vote pollution (fixed: `-define:LAB_HEADLESS=true` gates the vote
  file). One reviewer miss: Odin constants can't be runtime-indexed —
  `ARENA_PARAMS` is `@(rodata)` instead.

## Known honest limits

- Reload-diff replays the live sim's CURRENT state and mode: a settled
  particle masks gravity edits (its rest fixed-point is gravity-independent),
  and ARENA_PARAMS edits while arena is off diff as identical. In arena
  rounds tiles reset mid-air before the diff seeds, so round edits always
  show.
- ImGui draws over the window, not into the sim framebuffer — headless PNGs
  are deliberately HUD-free.
- Keyboard goes to both ImGui and game bindings (no WantCaptureKeyboard gate
  yet); add the one-line gate when the first text-input widget appears.

## Parked, with named triggers

- Golden-frame claim kind (`frame`) — when a rendering refactor first needs it.
- F2/F3 record/loop (looped live code editing) — when there is play worth
  recording; needs the input-tracking deferral lifted.
- Static HTML contact-sheet grid — when a real 4+ visual fan exists that the
  in-lab arena can't show.
- Fuzzer seed-sweep machinery — when user-authored physics (Phase 5+) exists.
- Bench N-way gallery/history — first time a bench is genuinely rerun.
- SDL_GPU migration + shader grids — GPU phase (possibly owner's lesson 8).
