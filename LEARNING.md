# Odin learning environment

Front door for Odin learning. Lessons live at `content/domains/odin/vault/lessons/` (frozen — promoted into vault as the canonical curriculum).

> **Curriculum gate:** finish lessons 00-19 before opening `lab/` for graphics work. The lab assumes comfort with slices, dynamic arrays, tagged unions, allocators, and the `context` system; lessons 18-19 specifically cover hot reload (which the lab implements) and search-driven learning (which everything after the lab depends on). Skipping ahead produces the same "I know the API but cannot debug my output" failure mode that `from_old_repo_references/PIVOT.md` calls out for graphics. There is no shortcut.
>
> **After lesson 19:** move to the graphics curriculum at `content/domains/graphics/vault/lessons/00+`. That sequence (22 lessons, framebuffer through GPU bindless and destruction) is where the game work proper begins. Design doc: `docs/superpowers/specs/2026-05-09-graphics-curriculum-research.md`. Forward-looking vision: `GAME.md`.

## Daily loop

1. **Pick a lesson** — `<leader>oh` (or `<leader>oH` for the next one after where you left off). Lessons are at `content/domains/odin/vault/lessons/`.
2. **Pre-flight** — `just verify-all` runs every reference solution under `tests/` and confirms the curriculum scaffolding still builds. Worth doing after a pull or before sinking time into a fresh lesson.
3. **Type the code** — typing is the rep, not pasting. Each lesson tells you what to type and what you should see.
4. **Break it** — every lesson ends with "Now break it." Read the compiler's error message before fixing.
5. **Get unstuck** — in practice: official Odin docs for facts, and ask an LLM for conceptual "why does X work this way?" questions (the odin skill in Claude Code cites `compiled/` and `source/raw/`). A qmd-backed corpus search exists (`<leader>oq`) but is **deprioritized** — it hasn't proven useful day-to-day, so don't rely on it.
6. **Scratch a thought** — `<leader>op` opens `scratch/scratch.odin`. Run with `<leader>or`.

## Hotkey map (default prefix `<leader>o`)

| Key | Action |
|-----|--------|
| `<leader>ol` | Toggle OLS (LSP) on/off — practice without crutches |
| `<leader>oq` | qmd search over the corpus (deprioritized — see daily-loop step 5) |
| `<leader>or` | Run the current `.odin` file |
| `<leader>oh` | Pick a lesson |
| `<leader>oH` | Open the next lesson |
| `<leader>op` | Open `scratch/scratch.odin` |
| `<leader>od` | `:OdinDoctor` |
| `<leader>oV` | Scaffold `tests/<slug>/` for the proc under cursor |
| `<leader>oD` | Build current file in debug mode and start LLDB (codelldb) |
| `<leader>oR` | Build current file in debug mode and start RAD Debugger (Windows; `just raddbg-install` first) |

### DAP stepping (any buffer once `nvim-dap` is installed)

| Key | Action |
|-----|--------|
| `<leader>db` / `<F9>`  | Toggle breakpoint at cursor |
| `<leader>dc` / `<F5>`  | Continue / start session |
| `<leader>do` / `<F10>` | Step over |
| `<leader>di` / `<F11>` | Step into |
| `<leader>dO` / `<F12>` | Step out |
| `<leader>dr`           | Toggle DAP REPL |
| `<leader>dq`           | Terminate session |

## Tooling

- Configs (formatter + LSP): `odinfmt.json` and `ols.json` at repo root
- Project scaffolds: `content/domains/odin/templates/{cli,game,lib}/`
- Domain-specific tooling: `tools/domains/odin/odin_lib/`

## What changed from v0

`odin-search` is gone, replaced by [qmd](https://github.com/tobi/qmd) as the wired search backend — though qmd/search is currently **deprioritized** (hasn't proven useful in practice; see daily-loop step 5). For "why does X work this way?" questions, ask the odin skill in Claude Code; it cites compiled wiki + raw sources.
