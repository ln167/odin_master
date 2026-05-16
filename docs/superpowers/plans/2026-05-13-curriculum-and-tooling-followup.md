# Curriculum and tooling followup

- **Date:** 2026-05-13
- **Status:** Plan-of-record. The graphics curriculum (`content/domains/graphics/vault/lessons/00-19`) is fully scaffolded; the `tests/` verification mechanism is wired with 8 reference tests for the CPU phase; `ENGINE.md` replaces `PLAYGROUND.md`. This file enumerates what is not yet built so future sessions can pick up cold.
- **Predecessors:** `2026-05-09-graphics-curriculum-research.md` (curriculum design), `2026-05-08-executable-verification-idea.md` (verify mechanism spec), `2026-05-04-substrate-redesign-design.md` (substrate architecture).

## What got built this session (so you know not to redo it)

- All 22 graphics lessons scaffolded at `content/domains/graphics/vault/lessons/`. Each has a `README.md` with `## Tasks`, `## Tools to use here`, `## Concept`, `## Setup`, `## Do this`, `## Run`, `## Now break it`, `## Sources`, `## Next` sections. Lessons 00, 01, 02, 02b, 03, 04, 05, 06 also have compileable `main.odin` skeletons.
- Master curriculum index at `content/domains/graphics/vault/lessons/README.md` with per-lesson Scaffolded / Done checkboxes.
- `tests/` slot implemented: `just verify <name>` + `just verify-all` recipes in `justfile`; harness at `tools/substrate/verify_all.py`; 8 lesson reference solutions verified passing.
- Verification-strategy decision: print sampled pixel values to stdout, diff against `expected.txt`. No SHA, no binary diffing.
- One real bug caught and fixed by pre-verification: lesson 04 z-buffer's GREEN triangle was CW so the original "two intersecting triangles" demo only rendered one. Fixed in both the lesson skeleton and the reference solution.
- `PLAYGROUND.md` -> `ENGINE.md` rename + prose cleanup. References in `lab/README.md`, `tests/README.md`, `content/manifest.yaml` updated.
- `Tools to use here` blocks added to all 22 lesson READMEs to drill the workflow (hotkeys + just recipes) alongside the API content.
- Curriculum-research design doc updated with verified SDL3-GPU bindless findings (release-3.4.8: only `MAX_UNIFORM_BUFFERS_PER_STAGE = 4` is documented; other limits are author-defined backend-bound).
- Memory persisted at `~/.claude/projects/C--procured-v2/memory/project_graphics_curriculum_scaffolded.md`.

## Open items (this is the followup list)

### High-leverage, low-effort (~30 min total)

**1. LEARNING.md updates.** Add to the Daily Loop section:
- A one-liner that `just verify-all` is a useful pre-flight before starting a lesson, especially after pulling changes (confirms scaffolding isn't broken).
- A one-liner that `<leader>oq` answers are automatically filed back to `content/domains/<d>/compiled/from-query/`. The user's asking grows the corpus; this is not just lookup.

**2. Tests for lessons 07-09.** These are still CPU-runnable (PPM output + perspective-correct interp, lambert/phong, tangent-space normal mapping). They can have `main.odin` reference solutions and `expected.txt` fingerprints exactly like lessons 00-06. The pattern is established. Estimated 15 min total, ~5 min per lesson.

  Files to create per lesson:
  - `tests/lesson-07-texture-sampling/{main.odin,expected.txt}`
  - `tests/lesson-08-lambert-phong-gamma/{main.odin,expected.txt}`
  - `tests/lesson-09-tangent-space-normal-mapping/{main.odin,expected.txt}`

  Also need `main.odin` skeletons in the corresponding lesson directories (currently README-only). The CPU rasterizer foundation from lesson 04's main.odin is the natural starting point.

### Medium-effort (~1-3 hours each)

**3. Lesson 07-09 main.odin skeletons** (separate from tests above). The lessons are README-only; for someone working through them, a skeleton with TODOs would parallel the lesson 00-06 experience. Items 2 and 3 are coupled: write the skeleton, then write the reference solution that fills in the TODOs.

**4. Profiler usage walkthrough.** Currently lessons 13/15/17 reference `-define:INSTRUMENT=spall` and Tracy attach but no concrete walkthrough exists. Add `tools/profiler/README.md` covering: how to build with instrumentation, where Spall traces land, how to view a trace (Spall.exe download/path), how Tracy live attach works (Tracy server URL, TCP connect, the Tracy GUI), example zone annotations from `tools/domains/odin/odin_lib/instrument/`.

**5. First few `bench/` programs.** Recipe is wired (`just bench <name>`) but directory is empty. Concrete starter programs that map to the curriculum:
- `bench/naive-vs-bresenham/` — measure naive float-line vs Bresenham int-line for N lines
- `bench/edge-function-vs-scanline/` — triangle rasterization variants
- `bench/grid-vs-svo/` — spatial structure perf (needed for lesson 16)

These also exercise the Spall trace path so they double as profiler-walkthrough material for item 4.

### Larger or intentionally deferred (do NOT pick up without explicit go-ahead)

**6. `verify-stub` recipe + nvim `<leader>oV` keymap.** Sketched in `2026-05-08-executable-verification-idea.md` § "Editor integration." Generates a test stub from the function under cursor via tree-sitter. Useful but optional; the 8 lesson tests don't need it. The user's "how to verify" need is met without this.

**7. Wiki-claim-backed tests beyond lessons.** Same spec § "Wiki integration." Objective wiki claims ("Odin's `make([]int, 0, 5)` allocates capacity 5") would each have a `tests/claim-<slug>/` verification. Real value, but it's an extension of the substrate, not the curriculum. Plan separately.

**8. `html_mirror` fetcher pipeline.** Manifest at `content/manifest.yaml` has tier-1/2 graphics entries but the fetcher that mirrors them to `source/raw/` is deferred per the May 4 substrate spec. Only Aaltonen's "No Graphics API" is mirrored manually. Major undertaking on its own; not blocking the lessons.

**9. Empty domain shells: `papers/`, `sdl3/`, `engines/`.** Intentionally empty per the May 4 spec ("populate when a concrete need exceeds what markdown + grep + skill provides"). Do not pre-populate. The `graphics/` shell got populated this round because there was a concrete need (lesson curriculum); the others wait for theirs.

**10. Lab Phase 5+ implementation plans.** Footnote in `lab/PLAN.md` says these phases are user-driven, not LLM-authored. The orientation table in that file maps phases 5+ to graphics curriculum lessons and PIVOT rungs but does not draft step-by-step implementation. Do NOT draft phase 5+ in detail; the user types every loop themselves.

**11. Tests for lessons 10-19 (GPU lessons).** Need `lab/` infrastructure (running engine, ability to dump frame to PPM, comparison against reference output). Possible via `LAB_DUMP_FRAME=1` env var but requires more setup per lesson. Defer until at least one GPU lesson is being worked.

## How to use this file

A future session pulling on a thread should:
1. Read this file's "Open items" section.
2. Read the predecessor specs/plans listed above for full context.
3. Read the master curriculum index at `content/domains/graphics/vault/lessons/README.md` to see lesson state.
4. Read `ENGINE.md` for the vision frame.
5. Pick an open item, write a focused execution plan if substantial, then go.

## Critical files

- `content/domains/graphics/vault/lessons/README.md` — master checklist
- `content/domains/graphics/vault/lessons/NN-name/README.md` — per-lesson content (× 22)
- `tests/README.md` — verify mechanism + test index
- `tests/lesson-NN-name/{main.odin,expected.txt}` — reference solutions (× 8 today)
- `justfile` — `bench`, `verify`, `verify-all`, `lab`, `doctor`, etc.
- `tools/substrate/verify_all.py` — test-runner harness
- `tools/substrate/{doctor,promote,test,domain-scaffold}.py` — sibling substrate scripts
- `tools/domains/odin/odin_lib/instrument/{instrument,spall,tracy}.odin` — profiler zone API
- `LEARNING.md`, `ONBOARDING.md`, `ENGINE.md` — front-door docs
- `docs/superpowers/specs/2026-05-09-graphics-curriculum-research.md` — curriculum design + SDL3-GPU bindless findings
- `docs/superpowers/specs/2026-05-08-executable-verification-idea.md` — verify mechanism spec (partially shipped)
- `docs/superpowers/specs/2026-05-04-substrate-redesign-design.md` — substrate architecture
- `content/manifest.yaml` — corpus sources (declarative, fetcher deferred)

## Out of scope for this followup plan

- Anything that changes the lesson curriculum order or content beyond filling in 07-09 skeletons.
- Anything that touches `lab/` Phase 5+ implementation.
- Building the html_mirror fetcher.
- Populating empty domain shells.
- Refactoring the substrate architecture.

Stick to the open items list. Each item is bounded and independently shippable.
