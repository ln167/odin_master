# Lesson 00 — setup check

## Concept
Confirm the tools the rest of these lessons assume: `odin` (compiler),
`ols` (language server), `odinfmt` (formatter), and `qmd` (corpus search,
exposed via `just substrate-search`).

## Setup
Open a terminal anywhere inside this repo.

## Do this
Run each command and check the output against "you should see".

    odin version
    odinfmt
    qmd --version
    just doctor odin

(Skip `ols`. It's a Language Server, not a CLI — running it directly just
makes it sit waiting for a client. nvim wires it up automatically when
you open a `.odin` file. The `just doctor odin` below confirms it's on
PATH.)

## You should see

- **`odin version`** → `C:\…\odin.exe version dev-2026-04-…` (or newer dev-YYYY-MM)
- **`odinfmt`** → a usage banner: `Usage: odinfmt.exe [path] [-config] [-stdin] [-w]`.
  No version flag exists; if the banner prints, the binary works.
- **`qmd --version`** → `qmd 2.1.0` (or newer).
- **`just doctor odin`** → a block of `[PASS]` lines and `OVERALL: PASS`.

## Now do this
A real corpus query:

    just substrate-search --bm25 "context allocator"

## You should see
A list of `qmd://odin-source/...` results with file paths, line numbers,
and snippets from the indexed Odin corpus. If you see "no results"
or "collection not found", run `qmd collection list` to confirm
`odin-source` is indexed; if it isn't, see `ONBOARDING.md` for the
one-time index command.

## What just happened
- `odin` is the compiler at `~/odin/dist/odin.exe`.
- `ols` is the LSP. LazyVim turns it on automatically when you open `.odin`.
  `<leader>ol` toggles it off if you want to practice without crutches.
- `odinfmt` runs on save (configured in `tools/nvim/lua/odin_master/format.lua`).
- `qmd` is the local corpus search engine. Karpathy's recommended stack:
  on-device BM25 + vector + LLM rerank, no cloud calls.
  `just substrate-search --bm25` is the keyword-only path; drop `--bm25`
  for hybrid (after running `qmd embed` once).

## Now break it
Run `just substrate-search --bm25 "totally-not-an-odin-thing-zzz"`. You
get back nothing useful — empty results or low-relevance matches.
Search hits depend on the words actually present in the corpus; learn
the corpus's vocabulary by reading the top hits of broad queries.

## Find more like this
    just substrate-search --bm25 "doctor"

## Next: `content/domains/odin/vault/lessons/01-hellope/`
