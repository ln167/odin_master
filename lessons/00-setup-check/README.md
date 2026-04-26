# Lesson 00 — setup check

## Concept
Confirm the four tools the rest of these lessons assume: `odin` (compiler),
`ols` (language server), `odinfmt` (formatter), `odin-search` (corpus search).

## Setup
Open a terminal anywhere inside this repo.

## Do this
Run each command and check the output against "you should see".

    odin version
    ols --version
    odinfmt -version
    odin-search --doctor

## You should see

- `odin version dev-2026-04-…` (or newer dev-YYYY-MM)
- `ols 0.1…` or any version line — just confirms the binary runs
- `odinfmt 0.1…` or any version line
- A doctor block ending in `ollama: ok` (or `unreachable` if you haven't
  started Ollama — that's fine for keyword search)

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
