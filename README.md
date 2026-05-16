# odin_master

Personal multi-domain technical-knowledge substrate. v1 is for learning Odin + game programming + graphics programming.

- `docs/superpowers/specs/2026-05-04-substrate-redesign-design.md` — current design spec
- `docs/superpowers/plans/INDEX.md` — implementation plans
- `docs/adding-sources.md` — extend the corpus
- `docs/smoke-test.md` — end-to-end runbook

## Layout

- `content/domains/<d>/` — per-domain knowledge (source/compiled/vault three-tier)
- `templates/page-types/` — page templates per source type (article, paper, code-symbol, blog-post, concept, summary)
- `templates/domain/` — scaffold for adding a new domain
- `tools/substrate/` — shell tools (doctor, promote, test, domain-scaffold)
- `.claude/skills/knowledge-substrate-core/` — workflow orchestration
- `.claude/skills/<domain>/` — thin per-domain skills

## Domains

| Domain | Status |
|---|---|
| `odin` | populated |
| `papers` | empty shell |
| `sdl3` | empty shell |
| `engines` | empty shell |
| `graphics` | empty shell |

## Common operations

```sh
# Mechanical health check
just doctor odin
just doctor-provenance odin

# Run regression gold-set
just substrate-test odin

# qmd-backed search over indexed sources
just substrate-search "context allocator"            # hybrid (needs `qmd embed`)
just substrate-search "context allocator" --bm25     # BM25-only

# Add a new domain (scaffolded empty)
just new-domain my-new-domain

# Promote a compiled page to vault (frozen, blessed)
just substrate-promote content/domains/odin/compiled/from-query/concepts/some-page.md
```

## Workflows (LLM-driven, via skill)

- **Ingest** — integrate a new/changed source. Updates affected `from-ingest/` pages.
- **Compile** — regenerate `compiled/` from `source/`. Idempotent.
- **Query** — answer a question using the wiki + sources. Non-trivial queries produce a `from-query/` page (two-outputs rule).
- **Lint** — wiki health check. Proposes; never auto-fixes.

Invoke via the relevant per-domain skill (`odin`, etc.) in Claude Code; the skill orchestrates through `knowledge-substrate-core`.

## Tooling (engine + learning side)

- `LEARNING.md` — daily loop, hotkey table, lesson workflow
- `ENGINE.md` — engine vision; the six dev tools (lab / bench / tests / scratch / profiles / substrate)
- `tools/profiler/README.md` — Spall + Tracy zone profiling

### Profiler (Tracy)

One-time build of the Tracy client library (auto-detects OS):

```sh
just tracy-build
```

Then build any program with zones live:

```sh
odin run . -define:INSTRUMENT=tracy        # Tracy: live attach via Tracy.exe server
odin run . -define:INSTRUMENT=spall        # Spall: offline trace -> profiles/*.spall
```

Zone API is `instrument.SCOPE()` / `instrument.SCOPE_NAMED("name")` from `odin_lib:instrument`.

### Debugger (RAD Debugger, Windows)

The Odin compiler emits a `.raddbg` section under `-debug` (since `dev-2025-06`), so RAD Debugger picks up Odin programs natively.

```sh
just raddbg-install                  # one-time: pulls latest raddbg.exe (~5 MB)
just raddbg path/to/app.exe          # launch debugger against existing binary
just raddbg-dir bench/grid-vs-svo    # build dir with -debug + launch
```

Editor: `<leader>oR` in any `.odin` buffer builds the current file with `-debug` and launches RAD Debugger against it.

### Debugger (LLDB / codelldb, cross-platform)

```sh
just debug path/to/app.exe            # standalone lldb with Odin pretty-printers loaded
just debug-dir bench/grid-vs-svo      # build + lldb
```

Editor: `<leader>oD` builds + launches codelldb via nvim-dap, with the Odin pretty-printers auto-imported (slices/strings/dynamic-arrays/maps render properly).

### UI (Dear ImGui)

Immediate-mode UI for debug overlays, live tuning sliders, eventually shipping HUD/menus. See `docs/design/ui-strategy.md` for the IMGUI-vs-retained reasoning and `content/domains/graphics/vault/lessons/09b-immediate-mode-ui/` for the curriculum slot.

```sh
just imgui-build           # one-time: builds Dear ImGui static lib + bindings via Capati/odin-imgui
```

Build any Odin program with the bindings:

```sh
odin run . -collection:imgui=tools/domains/odin/odin_lib/vendor/odin-imgui
```

Backends compiled in: `sdl3`, `sdlgpu3`. To recompile with other backends edit `BACKENDS` in `tools/ui/build_imgui.py`.

### Assembly view

```sh
just asm bench/naive-vs-bresenham     # emits .S next to source, built at -o:speed
just asm-file path/to/main.odin       # single-file source
```

## End-to-end smoke test

See `docs/smoke-test.md`.
