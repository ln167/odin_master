# Plan 5 — Playground + instrumentation library

> **Status:** OUTLINE — full task-by-task plan to be written when Plan 1 is implemented and verified working.
>
> **Why outline only:** per the user's incremental-commitment strategy, we don't draft detailed plans for downstream work that may shift once foundation work surfaces real constraints.

**Goal:** Implement `tools/odin_lib/instrument` (the `SCOPE` / `SCOPE_NAMED` / `BENCH` ergonomics) with `-define:INSTRUMENT={spall,tracy,both,false}` compile-time switches; implement the scratchpad workflow (`just scratch-new`, `scratch-run`, `scratch-watch`, evidence capture, backlink mechanism); implement `just bench` and `just profile-run` wrappers around `core:prof/spall` + `oskarnp/odin-tracy`. End state: a developer can verify a claim about Odin in <5 minutes (scratchpad), measure it (bench), and trace it (profile) with single-line ergonomics.

**Depends on:** Plan 1 (`tools/odin_lib/{instrument,bench,scratch}.odin` stubs + `playground/` skeleton + `just bench/profile-run/scratch-*` stubs all exist).

**Architecture:** `instrument` package implements `SCOPE() / SCOPE_NAMED(name) / BENCH(name, fn)` as defer-based wrappers around `core:prof/spall` and `oskarnp/odin-tracy` zones. The compile-time switch (`-define:INSTRUMENT=...`) gates which backend (or both, or no-op) is emitted. Critically: `INSTRUMENT=false` produces zero code — the procs become `#force_inline { }` or `when` guards so the optimizer drops them entirely.

The scratchpad workflow is a thin layer on top of `odin run`: `just scratch-new <slug>` copies `playground/scratch/_template/` to `playground/scratch/YYYY-MM-DD-<slug>/`, opens the file in `$EDITOR`, then `just scratch-run` compiles + runs + captures stdout to `output.txt` + prompts the user to file evidence into `result.md` and append a backlink to `content/wiki/concepts/<topic>.md`.

**Tech Stack:** Odin (instrument lib + scratch templates); `core:prof/spall` (built-in); `oskarnp/odin-tracy` (vendored as a git submodule); Python 3.12 (scratch evidence-filing helper, lives in `tools/indexer/odin_master/`); `entr` or `watchexec` for `scratch-watch` (community standard, just shell out).

## Files this plan will touch

- Replace: `tools/odin_lib/instrument.odin` (real `SCOPE` / `SCOPE_NAMED` / `BENCH` impls)
- Replace: `tools/odin_lib/bench.odin` (real wrappers around `core:time` benchmarks)
- Replace: `tools/odin_lib/scratch.odin` (output-capture helpers)
- Decide + apply: package layout for `odin_lib` — either keep flat (adjust spec §10.3 imports) or split into `tools/odin_lib/{instrument,bench,scratch}/` subpackages (recommended; matches the import path in the spec).
- Create: `tools/odin_lib/instrument/tracy.odin`, `instrument/spall.odin`, `instrument/noop.odin` (one file per backend, gated by `when` blocks reading the `INSTRUMENT` define)
- Create: `tools/odin_lib/vendor/odin-tracy/` as a git submodule (or document the install)
- Modify: `tools/indexer/odin_master/cli.py` (replace `scratch verify` stub with real impl)
- Create: `tools/indexer/odin_master/scratchpad.py` (Python helper for `just scratch-new`/`scratch-run`: tempdir scaffolding, stdout capture, evidence-file prompt, backlink appender)
- Modify: `justfile` (replace `bench`, `profile-run`, `scratch-*` stubs with real recipes that shell out)
- Replace: `playground/scratch/_template/main.odin` and `claim.md` with the production seed
- Create: a few example `playground/bench/` benches + `playground/scratch/` scratches as living docs and as test fixtures
- Create: `tools/odin_lib/tests/` (Odin `@(test)` procs covering `SCOPE` zero-overhead claim, BENCH JSON output, etc.)
- Create: `tests/test_scratchpad_flow.py` (Python end-to-end test of `just scratch-new` + `scratch-run` against a fixture)

## Components (rough)

1. **`instrument.SCOPE` / `SCOPE_NAMED`** — `proc(loc := #caller_location)` that opens a profile zone using `#procedure` (or the explicit name) and `defer`s the close. Internally `when ODIN_DEBUG && INSTRUMENT == "spall"` (etc.) chooses backend.
2. **`instrument.BENCH(name, fn, opts)`** — wraps `core:time` benchmark options; runs `fn` N times; records min/median/max/stddev; emits JSON to `playground/bench/<name>/results/<date>.json`; emits `.spall` trace alongside.
3. **Compile-time backend selection** — `INSTRUMENT` constant read at compile time; the four code paths (`spall`, `tracy`, `both`, `false`) are mutually exclusive `when` blocks. The `false` path generates no code beyond an empty inlined proc.
4. **Tracy bindings** — vendor `oskarnp/odin-tracy` as a git submodule under `tools/odin_lib/vendor/odin-tracy/`; the `tracy` backend imports it via `-collection:tracy=tools/odin_lib/vendor/odin-tracy`.
5. **Scratchpad helper** — `odin-master scratch new <slug>` (or `just scratch-new`) creates the dated dir, opens `$EDITOR` if set; `odin-master scratch run` (or `just scratch-run`) compiles + runs the current scratch, captures stdout, prompts for confirmed/refuted/surprising, writes `result.md`, optionally appends backlink to a wiki concept page.
6. **Bench harness** — `just bench <name>` runs the named bench under the bench profile; opens results JSON; optionally invokes Tracy server if Tracy is the active backend.
7. **Profile harness** — `just profile-run -- <binary>` wraps the binary with Spall capture (env var or wrapper), opens the resulting trace in spall-web (or Tracy server if Tracy is active).
8. **`mem.tracking_allocator` recipe** — documented in `docs/daily-use.md` (Plan 6 polishes), wired into the game/cli template debug builds (cross-cutting with Plan 4).

## Test gates (acceptance criteria)

- `INSTRUMENT=false` build of a sample using `instrument.SCOPE()` produces zero overhead — verified by disassembling the resulting binary and confirming the SCOPE call site has no instructions beyond what an empty proc would emit, OR by a microbench showing the SCOPE'd vs un-SCOPE'd proc has equal wall time within noise.
- `INSTRUMENT=spall` build of the same sample produces a non-empty `.spall` file when run; the file parses with the spall-web viewer.
- `INSTRUMENT=tracy` build connects to a running Tracy server (skipped if Tracy not running locally; CI installs Tracy on the bench job).
- `instrument.BENCH("x", proc() { ... })` emits a JSON file at the documented path with the expected min/median/max/stddev keys.
- `just scratch-new test-claim` creates `playground/scratch/<today>-test-claim/` with the seed files; `just scratch-run` compiles + runs the seed in <1 s; `output.txt` is captured.
- A deliberate-leak fixture using `mem.tracking_allocator` exits non-zero with the leak count printed (the CI gate from spec §10.6).
- The scratchpad evidence-filing prompt round-trips: choosing "confirmed" writes `result.md` and appends a backlink line to a fixture wiki concept page.
- `tools/odin_lib/` package layout is consistent with the import path used by templates (this plan resolves the §10.3 ambiguity flagged in Plan 1).

## Out of scope for this plan

- The actual content of the wiki concept pages (Plan 2 / Plan 8).
- Cross-OS validation of Tracy / Spall integration in CI (Plan 7).
- A REPL or any code-generation preprocessor (explicitly rejected per spec §10.7).
- Wiring instrumentation into the game template's hot-reload loop — that's Plan 4's call.

## Estimated decomposition when fully detailed

~12 tasks, ordered: vendor odin-tracy submodule → resolve `odin_lib` package layout → instrument.noop.odin (zero-cost path) + zero-overhead test → instrument.spall.odin + Spall e2e test → instrument.tracy.odin + Tracy integration test → instrument.BENCH + JSON output test → scratchpad Python helper + tests → wire `just scratch-new/run/watch` + e2e test → wire `just bench` + e2e test → wire `just profile-run` + e2e test → write 2-3 example scratches and benches as living docs → mem.tracking_allocator recipe + CI gate.
