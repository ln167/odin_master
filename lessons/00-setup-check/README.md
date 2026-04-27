# Lesson 00 — setup check

## Concept
Confirm the four tools the rest of these lessons assume: `odin` (compiler),
`ols` (language server), `odinfmt` (formatter), `odin-search` (corpus search).

## Setup
Open a terminal anywhere inside this repo.

## Do this
Run each command and check the output against "you should see".

    odin version
    odinfmt
    odin-search --doctor

(Skip `ols`. It's a Language Server, not a CLI — running it directly just
makes it sit waiting for a client. nvim wires it up automatically when
you open a `.odin` file. Run `odin-master doctor` below to confirm it's
on PATH.)

## You should see

- **`odin version`** → `C:\…\odin.exe version dev-2026-04-…` (or newer dev-YYYY-MM)
- **`odinfmt`** → a usage banner: `Usage: odinfmt.exe [path] [-config] [-stdin] [-w]`.
  No version flag exists; if the banner prints, the binary works.
- **`odin-search --doctor`** → a doctor block ending in `ollama: ok`
  (or `unreachable` if Ollama isn't running — that's fine for
  keyword-only search).

## Now do this
From the repo root:

    odin-master doctor

## You should see
A block of `ok` / `missing` lines. The two that *must* be `ok` are
`odin on PATH` and `chunks.sqlite`. Everything else is optional.

## What just happened
- `odin` is the compiler at `~/odin/dist/odin.exe`.
- `ols` is the LSP. LazyVim turns it on automatically when you open `.odin`.
  `<leader>ol` toggles it off if you want to practice without crutches.
- `odinfmt` runs on save (configured in `tools/nvim/lua/odin_master/format.lua`).
- `odin-search` is the local corpus search — BM25 + vector hybrid, ~13k
  chunks across the official site, wiki, and core/vendor.

## Now break it
Run `odin-search "context allocator" --top 3`. Then try
`odin-search "context allocator" --top 3 --keyword-only`. Compare. The
`--keyword-only` mode skips embedding (fast, no Ollama needed); the default
fuses BM25 + vector with Reciprocal Rank Fusion.

## Find more like this
    odin-search "doctor" --top 5

## Next: `lessons/01-hellope/`
