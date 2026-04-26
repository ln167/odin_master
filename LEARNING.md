# Odin learning environment

Front door. Everything below is one keystroke away in LazyVim once
`tools/nvim` is installed (see `tools/nvim/README.md` for the snippet).

## Daily loop

1. **Pick a lesson** — `<leader>oh` (or `<leader>oH` for the next one
   after where you left off). Lessons live under `lessons/`.
2. **Type the code** — typing is the rep, not pasting. Each lesson
   tells you exactly what to type and what you should see.
3. **Break it** — every lesson ends with "Now break it." Read the
   compiler's error message before fixing.
4. **Search the corpus** — `<leader>os` (or `odin-search "topic"`).
   Hit the top result; jump to `path:line`.
5. **Scratch a thought** — `<leader>op` opens
   `playground/scratch.odin`. Run with `<leader>or`.

## Hotkey map (default prefix `<leader>o`)

| Key            | Action                                            |
|----------------|---------------------------------------------------|
| `<leader>ol`   | Toggle OLS (LSP) on/off — practice without crutches |
| `<leader>os`   | Search the local corpus                            |
| `<leader>or`   | Run the current `.odin` file                       |
| `<leader>oh`   | Pick a lesson                                      |
| `<leader>oH`   | Open the next lesson                               |
| `<leader>op`   | Open `playground/scratch.odin`                     |
| `<leader>od`   | `:OdinDoctor`                                      |

## Where things live

| What                        | Where                                         |
|-----------------------------|-----------------------------------------------|
| Lessons                     | `lessons/`                                    |
| Playground                  | `playground/`                                 |
| Search CLI (Rust)           | `tools/search/` (built to `~/.cargo/bin/odin-search`) |
| Indexer / cold path (Py)    | `tools/indexer/odin_master/`                  |
| Neovim plugin               | `tools/nvim/`                                 |
| Wiki concepts               | `content/wiki/concepts/`                      |
| Indexed corpus              | `content/sources/tier{1,2,3}-*/`              |
| Built index (gitignored)    | `content/index/{chunks.sqlite, vectors.usearch}` |

## The five tools

- **odin** (`~/odin/dist/odin.exe`) — the compiler.
  `odin run main.odin -file` is your "go" button.
- **ols** (`~/odin/bin/ols.exe`) — language server. Hover (`K`),
  go-to-def (`gd`), refs (`gr`), completion. `<leader>ol` toggles it.
- **odinfmt** (`~/odin/bin/odinfmt.exe`) — formatter. Runs on save.
- **odin-search** (`~/.cargo/bin/odin-search.exe`) — local hybrid
  search across the indexed Odin corpus.
- **odin-master** (Python CLI) — cold-path admin: `reindex`, `lint`,
  `summarize`, `doctor`, `bootstrap-corpus`, `source-diff`.

## When things break

- LSP feels stuck → `<leader>ol` twice (off, on).
- Search returns nothing → `odin-master doctor`; check that
  `chunks.sqlite` exists.
- Lesson runner can't find a lesson → confirm you're inside the repo
  (LazyVim looks up the tree for `content/manifest.yaml`).
- Anything else → `:OdinDoctor`.

## Adding to the track

Stubs 06–19 are scaffolded. Pick one, fill in the body using the same
shape as lessons 00–05 (Concept → Setup → Do this → Now do this →
What just happened → Low-level interlude → Now break it → Find more
like this → Next).
