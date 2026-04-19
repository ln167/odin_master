# Plan 8 — Default corpus seeding + end-to-end integration

> **Status:** OUTLINE — full task-by-task plan to be written when Plans 1, 2, 3, and 6 are implemented and verified working.
>
> **Why outline only:** per the user's incremental-commitment strategy, we don't draft detailed plans for downstream work that may shift once foundation work surfaces real constraints. End-to-end seeding only makes sense after the indexer + search CLI + setup commands all work in isolation.

**Goal:** Populate `content/manifest.yaml` with the real default corpus from spec §4.7 (tier1 official Odin sources, tier2 curated, tier3 community); add an `odin-master bootstrap-corpus` (or fold into existing `update`) one-shot command that fetches → ingests → indexes → verifies; assert that canonical Odin queries return tier1 results in the top-5. End state: a fresh GPU-desktop install runs one command and ends up with a working searchable corpus where "how do I read a file" returns the right `core:os` doc, "what is context.allocator" returns the right overview chapter, and so on.

**Depends on:** Plan 1 (skeleton + manifest stub), Plan 2 (indexer can actually fetch + ingest + embed), Plan 3 (search CLI can query the index), Plan 6 (`odin-master setup` so settings are correct + `doctor` so we can verify health afterward). Optional: Plan 7 (CI lane that runs a tiny-corpus smoke test).

**Architecture:** This plan is mostly **content + integration test**, not new code. We populate `content/manifest.yaml` with the spec §4.7 entries, write a thin one-shot `bootstrap-corpus` orchestration that calls existing subcommands in order, and write integration tests that pin the search-quality bar with a few canonical queries.

The "no information loss" rule (spec §4.8) is enforced by the indexer (Plan 2). Plan 8 verifies: after a fresh build, every source listed in the manifest produces at least one chunk in the index, and the wiki/concepts/ pages cite verbatim sources via backlinks (Plan 2's lint covers this; Plan 8 just runs it as a gate).

**Tech Stack:** None new; just YAML for the manifest + reuse of Plan 2's ingestors + Plan 3's search CLI + Plan 6's doctor.

## Files this plan will touch

- Replace: `content/manifest.yaml` (the empty stub from Plan 1 → the populated default-corpus registry from spec §4.7)
- Modify: `tools/indexer/odin_master/cli.py` (add `bootstrap-corpus` command — chains `update` → `reindex` → `lint` → a search-quality smoke test)
- Create: `tools/indexer/odin_master/bootstrap_corpus.py` (the one-shot orchestrator)
- Create: `tools/indexer/odin_master/quality_check.py` (reads a YAML of canonical query → expected source IDs in top-N; runs `odin-search` against each; reports pass/fail)
- Create: `content/quality-checks.yaml` (the canonical-query gold set — versioned alongside the manifest because it's part of the corpus contract)
- Create: `tools/indexer/tests/test_bootstrap_corpus.py` (with HTTP mocked — small fixture corpus that exercises every ingestor type)
- Create: `tests/test_search_quality.py` (root-level integration test; SKIPs gracefully if `content/index/` doesn't exist)
- Create: `docs/adding-sources.md` real content (replacing the Plan 1 stub) — how to add a new manifest entry + run `update`
- Optional: `.github/workflows/corpus-smoke.yml` (Plan 7-adjacent — runs `bootstrap-corpus` against a tiny fixture manifest in CI to guard regressions)

## Components (rough)

1. **Populated manifest** — every entry from spec §4.7's "Default corpus sources" table, with the exact `id`, `tier`, `fetcher`, `url` / `source_path` / `git_url`, `destination`, `processor`, and a `last_updated: 2026-04-19` initial timestamp. Explicitly include the `# DO NOT INDEX: Discord` comment block.
2. **`bootstrap-corpus` command** — chains:
   1. `odin-master update` (fetches everything declared in the manifest)
   2. `odin-master reindex` (rebuilds SQLite + USearch from scratch)
   3. `odin-master lint` (verifies wiki backlink integrity)
   4. `odin-master quality-check` (runs canonical queries; exits non-zero if quality bar isn't met)
   Total wall time target: under 15 min on RTX 4080 (per spec §14).
3. **`quality-check`** — reads `content/quality-checks.yaml`, which is a list like:
   ```yaml
   - query: "how do I read a file"
     must_include_source_ids_in_top_5: [odin-lang-org, odin-stdlib]
   - query: "what is context.allocator"
     must_include_source_ids_in_top_5: [odin-lang-org]
   - query: "hot reload pattern game"
     must_include_source_ids_in_top_5: [karl-zylinski-blog]
   ```
   Runs each query via `odin-search --json`, parses results, asserts each query's `must_include` list intersects the top-5 result source IDs.
4. **Tiny-fixture CI variant** — for the optional CI smoke job: a 3-source fixture manifest (one git_clone of a small repo, one html_mirror of a single page, one local PDF) → run `bootstrap-corpus` → run a 2-query quality check. Keeps CI under 5 min.
5. **`docs/adding-sources.md`** — walkthrough: edit `content/manifest.yaml`, run `odin-master update <source-id>` (or full `update`), verify with `odin-search`.

## Test gates (acceptance criteria)

- Full default-corpus build completes in <15 min on RTX 4080 (manual verification on the developer's box; not CI-gated).
- Every source ID listed in spec §4.7 produces ≥1 chunk in `chunks.sqlite` after `bootstrap-corpus` (asserted by `quality_check.py` reading the SQLite schema).
- No DO-NOT-INDEX sources (Discord, etc.) appear in the index.
- The canonical-query gold set (≥5 queries) all pass: each query's expected source IDs appear in `odin-search --top 5` output.
- `odin-master lint` reports zero broken backlinks against the populated wiki.
- `odin-search --doctor` reports green: settings parsed, index exists, Ollama reachable, model pulled.
- The fixture-manifest CI smoke job runs end-to-end in under 5 min, asserting the full pipeline still works without depending on real network endpoints.
- `bootstrap-corpus` is idempotent: running it twice produces the same final state and the second run is dramatically faster (Plan 2's hash-based skip).
- A deliberate manifest typo (e.g., misspelled `fetcher`) fails fast with a useful error from Plan 2's manifest validator.

## Out of scope for this plan

- The Karpathy-style LLM-compiled wiki for the **whole** corpus — that's a manual ongoing effort using `odin-master summarize`, not a one-shot. Plan 8 only seeds + verifies; the wiki grows over time.
- Latency optimization beyond Plan 3's targets.
- Re-running the canonical-query gold set as a regression gate on every CI run (only the tiny-fixture smoke runs in CI; the full check is a manual gate the developer runs after corpus updates).
- Adding new sources beyond spec §4.7 — those go through `docs/adding-sources.md`.
- Any changes to ingestor logic — that's Plan 2's domain.

## Estimated decomposition when fully detailed

~7 tasks, ordered: write the populated `content/manifest.yaml` from spec §4.7 (and validate it parses with Plan 2's manifest validator) → write `content/quality-checks.yaml` with 5-10 canonical queries → write `quality_check.py` + unit tests against a fixture index → write `bootstrap_corpus.py` orchestrator + integration test against the fixture manifest → write the real default-corpus `docs/adding-sources.md` → run `bootstrap-corpus` end-to-end on the GPU desktop, time it, capture the wall-time number into `docs/daily-use.md` as the expected baseline → optionally add the CI corpus-smoke workflow.
