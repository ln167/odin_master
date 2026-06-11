# Lab experimental sessions

Journal of agent+owner tooling experiments in `lab/`. One entry per session,
newest first. Spec for the program:
`docs/superpowers/specs/2026-06-10-tooling-experiment-design.md`.

---

## 2026-06-10 — Session 1: the spine + the first live arena experiment

**Mission (owner's framing):** enhance tooling, not the game. Fast human
feedback is the critical piece: "generate N variants, show them side by side,
I pick, you iterate — imagine doing that by hand."

**Method:** 30-agent exploration workflow (11 axes proposed, each
adversarially critiqued, synthesized into a tier list) → owner resolved the
decision points → built the top tier in one session, iterating live on owner
feedback.

### The five things built and verified

1. **Variant arena** (`arena.odin`, `arena_variants.odin`) — press A: the sim
   splits into a 2×2 lockstep grid, each tile running the owner's
   `step_particle` kernel with its own parameter set. Digit keys vote
   (double-tap: first press selects with a green border, same digit commits).
   R re-drops all tiles. A hot reload of new variants is the round boundary.
   The agent's only write surface is `arena_variants.odin` — parameters into
   the owner's kernel, never solver code.
2. **Agent eyes** — `just lab-run` (labx, `src/headless/`): N deterministic
   frames with no SDL init; scripted key injection ("frame KEY" lines);
   per-frame NaN/escape invariants; a folded trajectory hash; PNG framebuffer
   dumps the agent reads multimodally. Tapes and scripts are the same format,
   so replay-verify is this same tool.
3. **Determinism guard** (inside `just lab-test`) — builds the headless
   runner at `-o:none` and `-o:speed`, same 600-frame arena run, trajectory
   hashes must match (plus run-to-run identity). Catches the optimizer
   changing physics — verified green.
4. **Reload-diff** (host, `main_hot_reload.odin`) — both DLL copies stay
   mapped after a swap, so every save seeds the live sim into two buffers and
   ticks one through the OLD code, one through the NEW, comparing hashes 120
   frames: console + `build/hot_reload/reload_diff.log` say
   `sim identical` or `diverges at frame N`. A free behavioral changelog of
   every edit. (Honest limit: it replays the *current* state — a settled
   particle masks gravity edits; arena-off masks variant edits.)
5. **Debug section** (`ui.odin`) — Dear ImGui via the sdlrenderer3 backend
   (lib rebuilt; rebuild tax measured 0.38s→0.41s; context survives hot
   reloads via `set_current_context`). After owner feedback: a dedicated
   panel strip right of the untouched 800×600 sim viewport — UI never
   overlays the game. Shows status, the four tile params in a 2×2 layout
   mirroring the screen, vote state, hints.

Support work: failed-DLL-load retry in the host (the copy/linker race fires
on EVERY reload on this machine — the retry is load-bearing);
`-define:LAB_HEADLESS=true` keeps scripted runs out of the human vote
channel; `-define:LAB_DEBUG_KEYS=true` pins input handling across opt levels;
`tools/arena/wait_vote.py` + `just arena-wait` blocks on new votes
(offset-based); 22 assertions in `just lab-test`.

### The first real experiment: bouncing-particle feel, tuned by eye

Five generations, ~quarter hour of owner attention, single keypresses:

| Gen | Field | Winner |
|---|---|---|
| 1 | coarse spread (g 150..900) | g=600 d=0.75 |
| 2 | bracket the winner (500/600/700) | anchor holds |
| 3 | tight refine (±50 g, ±0.03 d) | anchor holds |
| 4 | pure damping showcase (.60/.75/.85/.95) | d=0.75 holds |
| 5 | wildcards (floaty / brick / springy) | anchor holds — **CONVERGED** |

**Result: gravity={0,600}, damping=0.75** — never lost a round. NOT yet
written into `physics.odin` defaults (owner's call; defaults still
{0,300}/0.9). History: `lab/arena/votes.log`.

### Loop bugs found by running it for real

- Round numbers had two owners (lab's reset counter vs the agent's
  generation count) and drifted across restarts → **agreed restructure
  (pending):** round id authored in `arena_variants.odin` next to the
  variants; votes append JSON lines `{round, winner, variants[]}` to
  `arena/history.jsonl`; Sim round counter + `round.txt` die.
- The vote listener could race a fast voter (vote lands before the listener
  starts → missed) → restructure also means the agent reads history directly.
- Em-dashes in console/UI strings render as garbage (`ΓÇö`) under the Windows
  codepage and ImGui's default font → player-facing strings are ASCII.
- A vote does not advance the round — the agent's *response* does; the HUD
  now says "voted - waiting" so the state is visible.

### Parked (named triggers, not forgotten)

Bench gallery (N-way side-by-side honest bench — owner's original explicit
ask, top candidate next); golden-frame claims (first rendering refactor);
live record/loop replay (gameplay worth recording); fuzzer sweeps (Phase-5+
user-authored physics); contact-sheet HTML grid (a variant fan the live
arena can't show); tweak sliders (~20 lines whenever dragging beats the 0.5s
reload); shader lab (killed as premature — CPU pixel functions are this
game's shaders, the arena already compares those).

### Open items at session end

1. Round/history restructure (agreed, designed, not yet built).
2. Champion constants not yet landed in `physics.odin` defaults.
3. Bench gallery unbuilt.
