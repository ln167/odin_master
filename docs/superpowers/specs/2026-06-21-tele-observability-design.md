# `tele` — unified telemetry / observability for the lab

> ⚠️ **SUPERSEDED IN DIRECTION (2026-06-28)** by
> `docs/superpowers/specs/2026-06-28-tele-observability-redesign.md`. The **P0–P9 primitives below are
> built and still current** (the lean `on`-tier surface), but the *direction* changed: the dial is now
> `off|on|max` (`steroids`→`max`), and `max` adds automatic value capture (the **Weaver**) + automatic
> execution capture (the **Hooks**). Read the redesign for anything forward-looking.

**Date:** 2026-06-21
**Status:** Design + phased plan — **primitives built (P0–P9 done); direction superseded.** Survives compact.
**Owner sign-off:** mental model blessed 2026-06-21; superseded in direction 2026-06-28.

---

## What this is

`tele` is **one** internal package giving *eyes on a running program* — for the hot-reload lab game **and** for every throwaway scratch / practice / test / spike `.odin` file. It is the repo's first real logger; today "logging" is hand-rolled `fmt.println` with no levels, no structure, no reflection.

It is **not** an engine, an editor, or a viewport. The `CLAUDE.md` "no engine" rule is about hand-built editor surfaces (layers, viewports), not telemetry. Unified telemetry is foundational and worth having.

### Home & import

- Package lives at `tools/domains/odin/odin_lib/tele/`, beside the existing `instrument/` (which it absorbs).
- Imported `import "odin_lib:tele"` via the `odin_lib` collection (already used by `bench/` for `odin_lib:instrument`).
- Must be importable from lab, scratch, tests, practice, claims — wiring is Phase 0.

---

## The mental model (blessed)

**One line:** eyes on a running program — captured once, presented for whoever's reading.

### Foundational spine: *event* vs. *presentation*

A `tele` call captures one **event** — a value plus its name, type, location, time, level. *How that event is shown is a separate decision.* The same event can render two ways:

- **human** → colored, pretty: `file:line  x (int) = 42`
- **machine** → structured, greppable: `tele x=42 type=int loc=file:38`

**Capture once, render per reader — both readers are first-class.** You are not the only consumer: agents run this code and read its output. This is already proven in-repo — `reload_diff.log` is "console line for the human, log line for the agent." `tele` generalizes it: one event can land **colored on the console *and* structured in a file the agent greps, at the same time.**

Implementation stays trivial: the event's fields are fixed; one config picks the format(s). No renderer framework, no plugins.

### 3 mechanisms (what does the capturing)

| Mechanism | Question it answers | Unifies |
|---|---|---|
| **Stream** | "what is this / what happened / in what order?" | logging · `dbg` · counters |
| **Panel** | "what's it doing *over time*?" (live) | watch · HUD · metrics |
| **Profiler** | "where did *time / memory* go?" | Tracy · Spall |

### 4 knobs (how the Stream behaves)

| Knob | Controls | Range |
|---|---|---|
| **Level** | severity volume | debug → info → warn → error |
| **Audience** | format + reader | human (color) · machine (structured) · both |
| **Rate** | when / how often it fires | every frame · every 60th · on keypress · only if `x>k` |
| **Sink** | where it lands + survives | ephemeral console · durable file |

### The dial — *cost* is why it exists

Observability **competes with the thing it observes** (CPU, noise, scrollback), so all of it is toggleable. Master config:

- **`-define:TELE=off`** → compiles to *nothing*. Release. Zero overhead.
- **`-define:TELE=on`** → normal leveled logging, human or machine.
- **`-define:TELE=steroids`** → everything fires, max verbosity, color, auto-dump. **Deliberately expensive — for throwaway scratch / practice / spike code, never the shipped loop.**

The master `TELE` dial sets sensible defaults for the four knobs; the granular `-define:TELE_FORMAT` / `TELE_LEVEL` (introduced in the phases) are *optional overrides* on top — e.g. `TELE=on -define:TELE_FORMAT=machine` for an agent-facing run. Keep the override surface minimal; add a knob-define only when a phase actually needs it.

### Adjacent, *not* this

**Assertions / invariants** (crash-on-impossible — the headless NaN/escape checks) are a *correctness guard*, not observability. They halt; they don't surface state. Outside `tele`.

---

## Hard rules (code ethos — non-negotiable)

These override any generic "best practice" instinct. Here, *best practice means simple and correct, never enterprise guard-rails.*

1. **No comment spam.** A comment only where its removal would confuse a future reader (Carmack rule).
2. **No error handling, no fallbacks.** No defensive `if x == nil` ladders, no try-this-then-that. Fail loud or don't guard at all.
3. **Clear, never convoluted.** The most directly-written code that works. No abstraction-for-later, no cleverness.
4. **No abstraction until two pieces actually duplicate.** Direct and named.
5. **Off = gone.** `TELE=off` must compile to literally nothing — verified, not assumed.

---

## Verified by running code (2026-06-21, Odin `dev-2026-04-nightly`)

Spikes under `build/obs_spike/`. Every capability the design leans on was run, not assumed:

| Capability | Result |
|---|---|
| `#caller_expression(p)` | ✅ captures **literal arg source text** — `foo`, `bar`, even `"foo * 2 + 1"`. Names-for-free is real. |
| Same on a *variadic* | ⚠️ yields only the *first* arg's text → `dbg(x,y,z)` needs **fixed-arity overloads**, not `..any`. |
| Overload set `dbg :: proc{_dbg1,_dbg2,_dbg3}` | ✅ `dbg(x, pos, p)` → `file:line  x (int)=42` / `pos ([2]f32)=[400,100]` / `p (Player)=Player{...}`, colored. |
| `fmt` `%v` / `%#v` | ✅ recursive **named** dumps of structs/enums/maps/slices/arrays out of the box — no hand-rolled reflection walker. |
| `#caller_location` default param | ✅ `file_path`, `line`, `procedure` for free. |
| ANSI color | ✅ renders in this terminal (`build.py` already enables it on Windows). |

**Design consequence:** `dbg` is an overload set `_dbg1.._dbgN` (N≈8), each param carrying its own `#caller_expression` + a shared `#caller_location`. Struct dumping delegates to Odin's `fmt`. Nothing exotic required.

---

## Testing method — "verify through running code"

Every phase ships a fixture as an **`output` claim** under `claims/tele/<phase-slug>/` (`claim.txt` = `output .` or `output main.odin`, `main.odin` + `expected.txt`). The harness builds + runs + diffs stdout — run via `just claim tele/<slug>` / `just verify-all`.

- Nondeterministic absolute paths use the harness `<...>` wildcard (e.g. `<...>:38  x (int) = 42`).
- ANSI codes are deterministic → literal in `expected.txt`.
- `flags.txt` pins the per-claim dial (`-define:TELE=steroids`, `-define:TELE=off`, and the `-collection:odin_lib=…` if `claim.py` doesn't inject it globally — resolved in Phase 0).

A phase is **done when its claim passes** and the owner has eyeballed the human-format output once.

---

## Phases (each a nuclear, independently-testable unit)

Order respects: inspect first (the acute daily pain) → logging → profiler → live panel. **Build one, test it, stop. No accumulating unbuilt phases.**

### P0 — Skeleton + dial + import proof  ✅ DONE (2026-06-22)
- **Adds:** `tele/` package; `TELE :: #config(TELE,"off")` with derived `ENABLED` / `STEROIDS`; collection wiring so `import "odin_lib:tele"` builds from lab, scratch, tests, and claim fixtures.
- **Test:** fixture imports `odin_lib:tele`, prints the resolved dial → `tele=off`. Proves package + collection wiring.
- **Open item — RESOLVED:** `claim.py` did *not* inject `-collection:odin_lib`. Wired it globally: a `COLL` constant spliced into every `odin build/run/test` site in `claim.py`. Harmless to existing claims (Odin ignores unimported collections) — verified by re-running example + lesson claims, all still PASS. No per-claim `flags.txt` needed for the collection.
- **Done when:** the import-proof claim builds and runs everywhere it must. → `claims/tele/p0-import-off` (default → `tele=off`/`false`/`false`) and `claims/tele/p0-import-steroids` (`flags.txt -define:TELE=steroids` → `tele=steroids`/`true`/`true`) both PASS; existing claims unaffected.

### P1 — `dbg()` human  *(the star — acute-pain solver)*  ✅ DONE (2026-06-22)
- **Adds:** `dbg` overload set `_dbg1.._dbg8` (`#caller_expression` per arg + shared `#caller_location`); human renderer in `_emit` (`file:line  name (type) = value`, colored via named ANSI constants). `dbg.odin`. Type derives from `value.id` (no redundant field); value formatting delegates to `fmt` `%v`.
- **Dial:** each `_dbgN` body is `when ENABLED { _emit(...) }` → at `TELE=off` the body is empty (verified: fixture at off emits **0 bytes**). Name/loc capture is compile-time (`#caller_expression`/`#caller_location`) so it's free even when on.
- **Test:** `claims/tele/p1-dbg` (`flags.txt -define:TELE=on`) — `dbg(x)`, `dbg(x,pos)`, `dbg(x,pos,p)` → 6 exact colored lines. `file_path` is absolute (`C:/…/main.odin`) so path is `<...>`-wildcarded; line numbers literal. PASS.
- **Done when:** claim passes; owner sees the colored dump. → claim PASS; owner eyeball pending.

### P2 — `dump(x)`  ✅ DONE (2026-06-22)
- **Adds:** `dump(x)` in `dump.odin` — `file:line  name (type) =` header then x's full recursive layout via `fmt` `%#v`, the whole blob one yellow span. Same compile-time name/loc capture as `dbg`. Palette lifted from `dbg.odin` into `tele.odin` (now two renderers share it).
- **Test:** `claims/tele/p2-dump` (`-define:TELE=on`) dumps a `Particle` (struct + enum + slice + `[2]f32` + **single-entry** map). Single entry chosen because multi-entry map iteration order isn't guaranteed → would flake; one entry is order-deterministic. PASS. Off → 0 bytes.
- **Done when:** claim passes. → PASS; P1 still PASS after the palette move.

### P3 — Machine renderer + Audience knob  ✅ DONE (2026-06-22)
- **Adds:** audience knob `FORMAT :: #config(TELE_FORMAT, "human")` in `tele.odin` → `_HUMAN`/`_MACHINE` compile-time bools (`both` ⇒ both true). `_emit` (dbg's single chokepoint) now has two `when` arms: `_HUMAN` = the colored line; `_MACHINE` = flat greppable `tele name=value type=t loc=file:line` (no ANSI). `both` emits human-then-machine per value.
- **Test:** `claims/tele/p3-machine` (`-define:TELE=on -define:TELE_FORMAT=machine`) → 6 structured lines, path `<...>`-wildcarded, asserted exactly. `claims/tele/p3-both` (`...=both`) → 12 lines, human (ANSI) + machine interleaved per value. Human-default already covered by `p1-dbg`. All PASS.
- **Off overrides format:** `TELE=off` + `TELE_FORMAT=machine` → 0 bytes (the `when ENABLED` guard in the overloads gates `_emit` before FORMAT is ever consulted). Verified.
- **Scope note:** routing lives in dbg's `_emit`; `dump` stays human-only (it *is* the human `%#v` blob — no machine equivalent defined, and P3's test is the dbg fixture). Revisit only if a machine `dump` is actually needed.
- **Done when:** human/machine/both all diff clean. → all PASS.

### P4 — Sinks: console + durable file, simultaneously  ✅ DONE (2026-06-22)
- **Adds:** `FILE :: #config(TELE_FILE, "")` knob + `sink.odin` `_sink_file` (open/create/append per line — the `diff_note`/`reload_diff.log` pattern, exactly `os.O_WRONLY+os.O_CREATE+os.O_APPEND`). Console sink stays plain `fmt` to stdout (no abstraction — spec forbids pluggable sinks). In `_emit` the machine line now routes `when _FILE { _sink_file(line) } else { fmt.print(line) }`; human always → console. So `TELE_FORMAT=both`+`TELE_FILE=x` ⇒ human on console **and** machine in the file, one event.
- **Test:** `claims/tele/p4-sinks` (`both`, `TELE_FILE=p4.log`) — `dbg(x)` puts the colored line on stdout and the structured line in `p4.log`; fixture then `os.read_entire_file`s it back and prints → stdout = human line + the file's structured line. PASS. P1/P2/P3 still PASS (no-file path unchanged).
- **Gotchas handled:** append-sink accumulates across runs → fixture `os.remove`s the log first (deterministic single line). `os.read_entire_file` needs an allocator arg and returns `Error` (not bool). `_sink_file` uses a runtime `if !_FILE { return }` (constant-folds to zero overhead) instead of `when`, so `core:os` stays a *used* import in the default no-file build — a `when _FILE` there would make `os` unused and break every existing claim.
- **Done when:** claim passes; file content matches. → PASS.

### P5 — Leveled logging  ✅ DONE (2026-06-22)
- **Adds:** `level.odin` — `tele.debug/info/warn/error(args: ..any, loc := #caller_location)`; `LEVEL :: #config(TELE_LEVEL, "debug")` gate as four compile-time bools (`_DEBUG`/`_INFO`/`_WARN`/`_ERROR`, each `ENABLED && LEVEL ∈ {allowed}`). Each proc body is `when _LEVEL { _log(...) }` so below-threshold + `TELE=off` calls become empty bodies (zero output). `_log` mirrors `_emit`'s human/machine/file routing (`%q`-quoted msg in the machine line). These are *message* logs; dbg/dump remain the inspectors. Unknown `TELE_LEVEL` ⇒ all four silent (fail-safe quiet).
- **Test:** `claims/tele/p5-levels` (`TELE=on TELE_LEVEL=warn`) → only `[warn]`/`[error]` lines (debug/info compiled out), exact colored match. `claims/tele/p5-off` (default `TELE=off`, **empty** expected.txt) → zero output ⇒ compile-out. Both PASS; full P0–P4 regression still green.
- **Notes:** the `proc(args: ..any, loc := #caller_location)` shape — a defaulted param *after* a variadic — compiles (same trick `core:log` uses); confirmed by build. Compile-out is measured as *zero output* per the spec; arg-boxing of literals has no observable effect and is elided under `-o`.
- **Done when:** both claims pass. → PASS.

### P6 — Rate gate  ✅ DONE (2026-06-22)
- **Adds:** `gate.odin` — `every(n, tick) -> bool` (true when `tick % n == 0`, `n<=0` never fires) and `cond(c) -> bool` (only-if-condition). Both are `ENABLED && …`, so when `TELE=off` they fold to constant `false` → the guarded log and the gate call optimize away. Caller owns the tick/frame counter ⇒ no hidden per-site state, deterministic. Usage: `if tele.every(60, frame) { tele.info(...) }`.
- **Test:** `claims/tele/p6-rate` (`TELE=on`) loops `tick in 0..<180` with `if tele.every(60, tick) { tele.info("tick", tick) }` → exactly 3 lines (ticks 0/60/120), same call-site line, exact match. PASS.
- **Design note:** rejected a hidden `@(static) map[loc]count` self-counting gate — Odin's `@(static)` in a proc is shared across all call sites (wrong), and nil-map writes are dicey. Passing the tick in is simpler, allocation-free, and matches a game loop that already has a frame counter.
- **Done when:** exactly-3 claim passes. → PASS.

### P7 — Counters  ✅ DONE (2026-06-22)
- **Adds:** `counters.odin` — `count(name, by := 1)` bumps a package-global `map[string]int` (lazy `make` on first use); `dump_counts()` prints all of them, **keys sorted** (`slice.sort`) so multi-counter output is deterministic. Human = `file:line counters` header + `  name = N` lines; machine = `tele count=name value=N loc=…` per counter, routed via `_machine_line`.
- **Refactor (3rd consumer):** the machine→file/console tail now lives in `sink.odin` `_machine_line`; `_emit` (dbg) and `_log` (levels) call it too. Triplication is the trigger to extract. Full P0–P6 regression re-run green after the change.
- **Test:** `claims/tele/p7-counters` (`TELE=on`) loops 10× (even/odd) + `count("total", 10)` then `dump_counts()` → `even=5 odd=5 total=10`, sorted, exact. PASS.
- **Unused-import trap (again):** `_dump_counts` is an **unconditional** private renderer (only `dump_counts`'s wrapper has `when ENABLED`), so its `fmt`/`slice`/`runtime` references keep those imports used when `TELE=off` — wrapping the whole body in `when ENABLED` would break every claim's default build.
- **Done when:** claim passes. → PASS.

### P8 — Profiler fold-in  ✅ DONE (2026-06-22)
- **Adds:** the `instrument/` package's three files moved into `tele` as `scope.odin` / `scope_spall.odin` / `scope_tracy.odin` (`package tele`). `tele.SCOPE()` / `tele.SCOPE_NAMED()` / `tele.spall_init/shutdown` now live in the one layer. `INSTRUMENT` define kept (the backend selector: `spall|tracy|both|false`). `tele` and `instrument` both defined `ENABLED` → de-collided the profiler's to `_SPALL`/`_TRACY` (dropped the unused `ENABLED`/`_PROF`). `tracy.odin`'s `../vendor/odin-tracy/…` foreign path is unchanged because `tele/` and `instrument/` are siblings under `odin_lib/`.
- **Test:** `claims/tele/p8-scope-off` (default `INSTRUMENT=false`) — `tele.SCOPE()` round-trip builds + runs, `spall_init/shutdown` inert, no trace → `spall bytes > 0: false`. `claims/tele/p8-scope-spall` (`INSTRUMENT=spall`) → a real 1252-byte `trace.spall` is written, read back → `spall bytes > 0: true`. Both PASS; full P0–P7 regression green (whole tele package recompiled).
- **Reality vs spec:** there were **no** pre-existing `bench/` callers of `instrument.SCOPE()` (bench uses `core:time` directly; no bench/instrument claim existed). The only real caller was `tools/profiler/_smoke_tracy/main.odin` — repointed to `tele.SCOPE`. Stale `instrument/...` comments in `build_tracy.py`/`smoke_test_tracy.py` updated.
- **Latent bug fixed:** `tracy.odin` imports `core:c` but only used it inside `when _TRACY` — harmless while `instrument` was compiled only at `INSTRUMENT=tracy`, but `tele` compiles in *every* build, so at the default it would be an unused import. Added a `_Csize :: c.size_t` keep-alive alias.
- **Orphan removed:** the old `tools/domains/odin/odin_lib/instrument/` was deleted (user-approved 2026-06-22) once verified orphaned — no `odin_lib:instrument` import remains anywhere. One layer on disk now.
- **Done when:** off path unchanged; trace appears when on. → PASS.

### P9 — Live panel / `watch` (lab-only)  ✅ DONE (2026-06-22)
- **Adds:** `watch.odin` — `watch("label", &x)` registers `{label, rawptr, typeid}`; `watch_value(w)` rebuilds `any{ptr,id}` so the value is read **fresh** each render (always current). `watch_list()` exposes the registry to the lab; `watch_frame(frame)` is the headless renderer (4th renderer, same human/machine shape — human arm doubles as textual headless fallback *and* keeps `fmt` a used import). Linear programs that never call `watch_frame` pay nothing.
- **Lab wiring:** `lab/build.py` gained `ODIN_LIB` collection + `TELE_ON` on all four package-game builds (hot/test/guard/labx). `ui.odin` imports tele, (re)registers `frame`/`paused`/`pos` under a `len==0` guard (survives hot-reload — the DLL's registry resets on swap, pointers into persistent `g_mem` stay valid), and draws `watch_list()` into the `debug` ImGui panel.
- **Test:** `claims/tele/p9-watch` (`TELE=on TELE_FORMAT=machine`) — two watches over 3 frames → 6 deterministic per-frame structured lines (insertion order, no path). PASS. Lab verified to **compile + run + stay deterministic**: `labx` builds/runs, `hot` builds the GUI DLL, `just lab test` → all unit tests PASS + determinism guard PASS (watches are observation-only; headless never calls `hud_window` so the sim hash is untouched).
- **Owner step (not claim-testable):** visually confirm the `watch` section in the live ImGui debug panel shows `frame`/`paused`/`pos` updating each frame (`just lab`).
- **Done when:** headless watch claim passes; owner confirms the panel. → claim PASS; panel compiles+runs, owner eyeball pending.

---

## Out of scope (defer until a live need)

- Log rotation, ring buffers of history, query/filter languages over logs.
- Network/remote sinks, log shipping.
- Anything pluggable (renderer registries, sink plugins, backend abstraction).
- Sampling profilers beyond the existing Spall/Tracy zones.
- Editor surfaces, viewports, hand-built layer UIs (the actual "engine" line `CLAUDE.md` forbids).
