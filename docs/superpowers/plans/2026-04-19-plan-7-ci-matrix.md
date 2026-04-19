# Plan 7 — CI matrix + cross-platform validation

> **Status:** SHIPPED 2026-04-19
>
> **Why outline only:** per the user's incremental-commitment strategy, we don't draft detailed plans for downstream work that may shift once foundation work surfaces real constraints. A real CI matrix only makes sense once there are real subsystems to test.

**Goal:** Replace Plan 1's minimal CI workflow with the full matrix per spec §11.5: 4 OS × multiple compile profiles × 2 Odin versions, plus a daily cron against `nightly`. Add `docs.yml` for the local stdlib HTML build. Add a `workflow_call` reusable workflow so downstream scaffolded projects can `uses: <you>/odin_master/.github/workflows/ci.yml@main`. End state: every push to main runs the full matrix; main is provably green on Linux + macOS (Apple Silicon + Intel) + Windows for both pinned and nightly Odin; daily cron catches upstream regressions early.

**Depends on:** Plans 2 (indexer must run somewhere), 3 (search CLI must build cross-platform), 4 (hot-reload template must compile cross-platform), 5 (instrumentation library must compile under all `INSTRUMENT` defines), 6 (`just bootstrap` and `doctor` must work for the integration lane).

**Architecture:** GitHub Actions workflows under `.github/workflows/`. Heavy use of `laytan/setup-odin@v2` for compiler installation. Matrix exclusions for combinations that genuinely don't apply (e.g., `hot-reload` profile only relevant for `templates/game/`). Caching for Cargo, pip, Odin builds, and Ollama models (where feasible — Ollama models are large and may not be worth caching). Daily cron via `schedule:` trigger.

**Tech Stack:** GitHub Actions YAML; `laytan/setup-odin@v2`; `actions/setup-python@v5`; `dtolnay/rust-toolchain@stable`; `actions/cache@v4`; `swatinem/rust-cache@v2`; conditional steps via `runs-on` and `if:`.

## Files this plan will touch

- Replace: `.github/workflows/ci.yml` (the full matrix; replaces Plan 1's minimal version)
- Create: `.github/workflows/docs.yml` (local pkg.odin-lang.org build)
- Create: `.github/workflows/cron-nightly.yml` (daily `nightly` Odin run)
- Create: `.github/workflows/reusable-ci.yml` (the `workflow_call` lane downstream scaffolds can reuse)
- Modify: `tests/test_repo_structure.py` (add CI assertions: matrix dimensions, daily cron present, reusable workflow present)
- Create: `docs/superpowers/plans/2026-04-19-plan-7-ci-matrix.md` ← this file

## Components (rough)

1. **Build matrix** — per spec §11.5:
   - `os`: `ubuntu-latest`, `macos-latest` (Apple Silicon), `macos-13` (Intel), `windows-latest`
   - `profile`: `debug`, `release`, `hot-reload` (game-template-only via include rules), `web` (Emscripten — informational, `continue-on-error: true`)
   - `odin`: `dev-2026-04` (pinned, must pass) AND `nightly` (informational, `continue-on-error: true`)
   - Exclusions: `hot-reload` × non-game-template combinations.
2. **Lanes**:
   - **structural**: pytest from Plan 1 (already exists; just keep it as the cheapest gate)
   - **rust-search**: `cargo test` + `cargo build --release` for `tools/search/`
   - **python-indexer**: `pytest tools/indexer/tests` (with Ollama mocked; we don't run real Ollama in CI)
   - **odin-templates**: scaffold each template into a tempdir, `odin build .` against pinned and nightly
   - **odin-instrument**: build `tools/odin_lib/` with each `INSTRUMENT` value (`spall`, `tracy`, `both`, `false`); run the zero-overhead test
   - **integration**: `just bootstrap-lite` on Linux + run `just doctor`; assert green
3. **Caching**: Cargo via `swatinem/rust-cache`; pip via built-in cache; Odin compiler build via `actions/cache` keyed on `.odin-version` content.
4. **Daily cron**: `cron-nightly.yml` runs the full matrix against `odin: nightly` and reports failures via GitHub issue auto-creation (or just visible failure status).
5. **Docs build**: `docs.yml` runs `odin-master docs build` (Plan 6 implements this); uploads artifact for inspection.
6. **Reusable workflow**: `reusable-ci.yml` accepts `workflow_call` inputs for `odin-version`, `profile`, `runs-on`; downstream scaffolds can `uses: <you>/odin_master/.github/workflows/reusable-ci.yml@main` and pass their own inputs.
7. **Test report aggregation**: each Odin lane sets `ODIN_TEST_JSON_REPORT=build/test-report.json` per spec §11.4; uploaded as artifact; `odin-master test-summary` runs in a final `report` job that depends on all matrix jobs.

## Test gates (acceptance criteria)

- Every matrix cell (the cartesian of OS × profile × Odin version, minus declared exclusions) runs to completion in <30 min wall time.
- All `dev-2026-04` cells are required-passing; `nightly` cells are informational (`continue-on-error: true`) and do not block merges.
- A deliberately-broken commit on a feature branch fails the right matrix lane with a useful log.
- Caching reduces repeat-run time by ≥40% versus a cold run.
- Daily cron fires on schedule (verified by inspecting the Actions tab).
- Reusable workflow can be invoked from a fresh test repo and runs the same lanes.
- `docs.yml` produces an HTML artifact that opens in a browser.
- The aggregated `report` job posts a markdown test summary to the PR (via `actions/github-script` or similar).

## Out of scope for this plan

- Self-hosted runners (use GitHub-hosted only).
- Release publishing (spec §15: "the repo itself is the distribution").
- Coverage reporting (spec §14: deferred — no community standard yet).
- Property-based testing (spec §14: deferred).
- Web target as a required lane (informational only).

## Estimated decomposition when fully detailed

~10 tasks, ordered: design the matrix YAML on paper → write the structural-tests lane (port from Plan 1) → write the rust-search lane → write the python-indexer lane → write the odin-templates lane (across all OSes, both Odin versions) → write the odin-instrument lane (across all INSTRUMENT values) → write the integration lane (`bootstrap-lite` + `doctor`) → write `docs.yml` → write `cron-nightly.yml` → write `reusable-ci.yml` + smoke-test from a separate repo → wire test-report aggregation + PR comment → polish caching + observe time savings.
