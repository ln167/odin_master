# Odin learning environment

Front door for Odin learning. Lessons live at `content/domains/odin/vault/lessons/` (frozen — promoted into vault as the canonical curriculum).

> **Curriculum gate:** finish lessons 00-19 before opening `lab/` for graphics work. The lab assumes comfort with slices, dynamic arrays, tagged unions, allocators, and the `context` system; lessons 18-19 specifically cover hot reload (which the lab implements) and search-driven learning (which everything after the lab depends on). Skipping ahead produces the same "I know the API but cannot debug my output" failure mode that `../projects/ultimate-flat/PIVOT.md` calls out for graphics. There is no shortcut.

## Daily loop

1. **Pick a lesson** — `<leader>oh` (or `<leader>oH` for the next one after where you left off). Lessons are at `content/domains/odin/vault/lessons/`.
2. **Type the code** — typing is the rep, not pasting. Each lesson tells you what to type and what you should see.
3. **Break it** — every lesson ends with "Now break it." Read the compiler's error message before fixing.
4. **Search the corpus** — `<leader>oq` opens a qmd-backed search prompt. Hits open in a terminal split with file paths + line numbers. For deeper questions ("why does X work this way?") ask the odin skill in Claude Code — it'll cite `compiled/` and `source/raw/`, and non-trivial queries get filed to `compiled/from-query/`.
5. **Scratch a thought** — `<leader>op` opens `scratch/scratch.odin`. Run with `<leader>or`.

## Hotkey map (default prefix `<leader>o`)

| Key | Action |
|-----|--------|
| `<leader>ol` | Toggle OLS (LSP) on/off — practice without crutches |
| `<leader>oq` | qmd search over the corpus (replaces former `<leader>os`) |
| `<leader>or` | Run the current `.odin` file |
| `<leader>oh` | Pick a lesson |
| `<leader>oH` | Open the next lesson |
| `<leader>op` | Open `scratch/scratch.odin` |
| `<leader>od` | `:OdinDoctor` |

## Tooling

- Configs (formatter + LSP): `odinfmt.json` and `ols.json` at repo root
- Project scaffolds: `content/domains/odin/templates/{cli,game,lib}/`
- Domain-specific tooling: `tools/domains/odin/{odin_lib,lessons-check}/`

## What changed from v0

`odin-search` is gone, replaced by [qmd](https://github.com/tobi/qmd) (Karpathy's recommended search backend). For deep "why does X work this way?" questions, ask the odin skill in Claude Code; it cites compiled wiki + raw sources and files non-trivial answers to `compiled/from-query/`.
