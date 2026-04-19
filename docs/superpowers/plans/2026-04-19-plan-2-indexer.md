# Plan 2 — Indexer (Python cold-path)

> **Status:** SHIPPED 2026-04-19
>
> **Why outline only:** per the user's incremental-commitment strategy, we don't draft detailed plans for downstream work that may shift once foundation work surfaces real constraints.

**Goal:** Implement `odin-master update`, `reindex`, `summarize`, `lint`, and the per-source ingestors. End state: pointing the CLI at a manifest produces a fully-built `content/index/` (SQLite + USearch), and `summarize` populates `content/wiki/concepts/` + `content/wiki/summaries/` with backlinks.

**Depends on:** Plan 1 (CLI shells exist; `tools/indexer/odin_master/cli.py` has stub subcommands to fill in).

**Architecture:** The cold path runs occasionally on a GPU machine with Ollama. Spec §5.2 / §5.3 spell out the chunk → embed → write loop. Per-source-kind ingestors live as one module each under `tools/indexer/odin_master/ingestors/` so adding a new source type is a single-file change. Idempotency is hash-driven: each chunk's content hash determines whether it needs re-embedding.

**Tech Stack:** Python 3.12, typer (already from Plan 1), `sentence-transformers` (Qwen3-4B via Ollama HTTP for embedding), `sqlite3` (stdlib) + FTS5, `usearch` Python bindings, `requests` (Ollama HTTP), `pymupdf4llm` (PDF), `yt-dlp` + `whisper` (transcripts), `beautifulsoup4` + `markdownify` (HTML), `wget` shell-out (mirrors), `gitpython` (git_clone fetcher).

## Files this plan will touch

- Modify: `tools/indexer/pyproject.toml` (add real deps)
- Modify: `tools/indexer/odin_master/cli.py` (replace stubs in `update`, `reindex`, `summarize`, `lint`, `add-transcript` shim)
- Create: `tools/indexer/odin_master/manifest.py` (parse + validate `content/manifest.yaml`)
- Create: `tools/indexer/odin_master/chunker.py` (markdown → heading-aware chunks)
- Create: `tools/indexer/odin_master/embedder.py` (Ollama HTTP `/api/embed` client)
- Create: `tools/indexer/odin_master/store.py` (SQLite schema + FTS5 + USearch writers)
- Create: `tools/indexer/odin_master/summarizer.py` (LLM-call → wiki/concepts/ + wiki/summaries/ with backlinks)
- Create: `tools/indexer/odin_master/lint.py` (broken-backlink, dead-ref checker)
- Create: `tools/indexer/odin_master/ingestors/{html_mirror,pdf,transcript,stdlib,forum,git_clone}.py`
- Create: `tools/indexer/tests/test_*.py` per module (chunker, embedder mock, ingestors with fixtures, summarizer with mocked LLM, store roundtrip, manifest parsing)
- Create: `tools/indexer/tests/fixtures/` (small markdown/HTML/PDF samples + a fixture manifest)

## Components (rough)

1. **Manifest reader** — parse `content/manifest.yaml`; validate every entry has the required keys for its fetcher; surface schema errors with file/line context.
2. **Fetchers (per source kind)** — `html_mirror` (wget --mirror), `git_clone` (clone or pull), `pdf` (file path), `transcript` (yt-dlp + whisper), `stdlib` (run `odin doc`), `forum` (Discourse JSON API). Each implements `should_refresh()` + `fetch()`.
3. **Chunker** — heading-aware markdown chunker with target chunk size ≈ 512 tokens, overlap ≈ 50; emits `(text, metadata)` tuples where metadata includes `source_id`, `tier`, `view`, `path`, `heading_path`.
4. **Embedder** — calls `POST http://localhost:11434/api/embed` with `model=qwen3-embedding:4b`; documents get NO instruction prefix; truncates 2560-dim → 1024 (MRL); L2-normalizes.
5. **Store** — opens `content/index/chunks.sqlite` (creates schema on first run); writes chunk rows + populates FTS5 virtual table; opens `content/index/vectors.usearch` and writes vectors keyed by chunk row id. Records `manifest-hash.txt`.
6. **Summarizer** — `odin-master summarize <source>` reads the verbatim source, asks the local LLM (e.g., qwen3:8b) to extract takeaways per concept, appends each takeaway to `content/wiki/concepts/<topic>.md` with the required HTML-comment backlink, and writes a per-source overview at `content/wiki/summaries/<mirror-of-source-tier-path>.md`.
7. **Linter** — walks the wiki, asserts every paragraph has a backlink comment, every backlink resolves to a real source line, every concept page is reachable from `INDEX.md`.

## Test gates (acceptance criteria)

- Fixture manifest with 3–5 small markdown sources runs end-to-end: produces `chunks.sqlite` with the expected number of FTS5 rows and a `vectors.usearch` of the expected size.
- Re-running `odin-master reindex` is idempotent: only changed-content chunks get re-embedded (verified by mocking the Ollama client and asserting call count drops to zero on the second run).
- A manifest entry pointing at a non-existent source fails with a precise error (file, entry id, missing path) rather than a Python traceback.
- Ollama unreachable on a GPU machine → `reindex` errors with an actionable message; `--keyword-only` skips the embedder and still produces a working FTS5-only index.
- `odin-master summarize <fixture-source>` produces a `wiki/concepts/<topic>.md` whose backlink comment points at the right line in the source.
- `odin-master lint` flags a deliberately-broken backlink in a fixture wiki.
- All ingestor tests pass with HTTP mocked (`responses` or `httpretty`); no real network in test runs.

## Out of scope for this plan

- Actually populating the real default corpus (Plan 8).
- The Rust search CLI reading the index (Plan 3).
- Editor or `just` wiring around `summarize` / `update` (Plan 6).
- CI matrix beyond the structural job from Plan 1 (Plan 7).
- Performance tuning beyond hitting the spec §14 indexing-throughput target (200K chunks → 10–15 min on RTX 4080).

## Estimated decomposition when fully detailed

~14 tasks, ordered: pyproject deps update → manifest parser + tests → store schema + roundtrip tests → chunker + tests → embedder (HTTP-mocked) tests → ingestor implementations one by one (html_mirror, git_clone, pdf, transcript, stdlib, forum) with fixtures → wire `update` + `reindex` end-to-end → summarizer + tests → linter + tests → integration test against fixture manifest → CLI doctor for "is Ollama reachable / model pulled?".
