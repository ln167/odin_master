# odin_master

Personal multi-domain technical-knowledge substrate. v1 is for learning Odin + game programming + graphics programming.

## Daily loop cheat-sheet
test (main Δ16)> just asm-file .\main.odin
The file '.main.odin' was not found.
error: Recipe `asm-file` failed on line 75 with exit code 1
test (main Δ16)> ls

    Directory: C:\Users\user1\dev\odin_master\lessons\01-hellope\test

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a---           5/16/2026  4:32 PM         607744 main.dbg.exe
-a---           5/16/2026  4:32 PM        4304896 main.dbg.pdb
-a---           5/16/2026  3:55 PM        2022260 main.dbg.rdi
-a---           5/19/2026  6:04 PM            151 main.odin

test (main Δ16)>

| | |
|---|---|
| `<leader>oh` / `<leader>oH` | Pick / next lesson (odin + graphics) |
| `<leader>oq` | qmd search the indexed corpus |
| `<leader>or` | Run current `.odin` file |
| `<leader>op` | Open `scratch/scratch.odin` |
| `<leader>oV` | Scaffold a verification test for the proc under cursor |
| `<leader>oD` | Debug current file with codelldb (nvim-dap session) |
| `<leader>oR` | Debug current file with RAD Debugger (Windows GUI) |
| `<leader>db` / `<F9>` | Toggle breakpoint |
| `<leader>dc` / `<F5>` | Continue / start |
| `<leader>do` / `<F10>` | Step over |
| `<leader>di` / `<F11>` | Step into |
| `just verify-all` | Run all reference tests (pre-flight before a lesson) |
| `just bench <name>` | Run a microbenchmark |
| `just asm <dir>` | Dump optimized assembly next to source |
| `just tracy-build` / `just imgui-build` / `just raddbg-install` / `just lldb-fixup` | One-time machine setup |

Full hotkey table + daily loop discussion: `LEARNING.md`. Engine vision: `ENGINE.md`. Tooling deep-dives: `tools/profiler/README.md` + sections below.

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

**Hotkeys** (standard VS / RemedyBG conventions, all rebindable in `View → Theme & Bindings`):

| Key | Action |
|---|---|
| F5 | Run / Continue |
| F9 | Toggle breakpoint at cursor |
| F10 | Step over |
| F11 | Step into |
| Shift+F11 | Step out |
| Shift+F5 | Stop / kill target |
| Ctrl+F5 | Run without debugging |
| Ctrl+B | Open breakpoints panel |
| Ctrl+M | Open memory view (peek-types) |
| Ctrl+P | Command palette (fuzzy-search every action) |

Typical loop: `<leader>oR` from nvim → RAD opens with your binary loaded → F9 on the line you want to inspect → F5 → step with F10/F11.

### Debugger (LLDB / codelldb, cross-platform)

**Windows: one-time fixup before codelldb works.** LLVM's official Windows binary doesn't ship the Python DLL `liblldb.dll` depends on, and the Odin install expects liblldb under `~/odin/lldb/bin/` (which isn't pre-populated). Run:

```sh
just lldb-fixup            # copies liblldb.dll + python310.dll into the right place
```

(See `tools/debug/install_lldb_python.py` for details. References: [llvm-project#74073](https://github.com/llvm/llvm-project/issues/74073), [codelldb#283](https://github.com/vadimcn/codelldb/issues/283).)

After that:

```sh
just debug path/to/app.exe            # standalone lldb with Odin pretty-printers loaded
just debug-dir bench/grid-vs-svo      # build + lldb
```

Editor: `<leader>oD` builds + launches codelldb via nvim-dap, with the Odin pretty-printers auto-imported (slices/strings/dynamic-arrays/maps render properly). Requires the `nvim-dap` plugin — `:LazyExtras` → `dap.core` is the LazyVim path.

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
