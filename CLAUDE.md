# Notes for LLM agents working in this repo

This is `odin_master` — a multi-domain technical-knowledge substrate. Spec: `docs/superpowers/specs/2026-05-04-substrate-redesign-design.md`.

## Substrate discipline (non-negotiable)

The substrate is **category 1**: a lookup-and-synthesis layer over external technical sources. It is *not* a model of the user's understanding. Don't conflate.

### Three-tier storage per domain

Each domain (`content/domains/<d>/`) has three tiers:

- `source/` — immutable, upstream-mirrored + user-maintained (`manifest.yaml`, `contradictions.md`, optional `notes/`). LLM never writes here.
- `compiled/` — LLM-owned, regenerable. Split by provenance: `from-ingest/` (Compile triggered by Ingest) and `from-query/` (Compile triggered by Query under the two-outputs rule).
- `vault/` — blessed, frozen. Only changes via `substrate-promote`.

**Prime directive:** the LLM never writes to `source/` or `vault/`.

### Provenance is a hard requirement

Every compiled page has `provenance: from-ingest` or `provenance: from-query` in frontmatter, and lives under the matching folder. `doctor` enforces parity.

### Two-outputs-per-task rule

Non-trivial queries produce both an answer (in chat) and a wiki update (page in `compiled/from-query/`). Trivial queries (single-fact lookups, signature recall) skip both — no log entry, no page. This is an **LLM-workflow discipline**: no shell tool verifies that a `from-query` page was actually written.

### Validator-at-compile-time

Compile and its validator are **LLM skill-workflow steps** — there is no compile/validator binary. Compile rejects pages with malformed frontmatter, broken citations, missing required sections, or empty TLDRs, and the LLM retries. The mechanical backstop is `doctor` (a post-hoc linter), which enforces a *subset*: frontmatter schema, provenance/folder parity, `source_ids` existence, Sources-section parity, wikilink resolution, and `log.md` format. `doctor` does **not** check TLDR length or per-template required sections.

### INDEX.md is regenerated every Compile

Mandatory — but enforced by **LLM skill-workflow discipline only**. No shell tool regenerates or staleness-checks INDEX.md: `doctor` does not look at INDEX.md, and `promote` only patches a single link in place (leaving a clean rebuild to the next Compile).

### `log.md` format

Append-only, `## [YYYY-MM-DD] <action> | <title>`. Query entries record the verbatim user question.

### Wikilink convention

In compiled and vault page bodies, `[[wikilinks]]` always use **repo-relative paths** (e.g., `[[content/domains/odin/source/raw/tier1-authoritative/odin-lang-org/foo.md]]`). Markdown links `[text](path)` inside INDEX.md are relative to INDEX.md's directory. `doctor` validates wikilinks; markdown links are not validated.

### Vault subfolder convention

`vault/` subfolders are free-form. New `substrate-promote` writes to `vault/<page-type>/`. Existing migrated content (`vault/studies/`, `vault/lessons/`) keeps its custom names. Both schemes coexist; `doctor` does not enforce vault subfolder names.

## Tooling map

- Skill orchestrator: `.claude/skills/knowledge-substrate-core/SKILL.md`
- Per-domain skills: `.claude/skills/{odin,papers,sdl3,engines,graphics}/SKILL.md`
- Shell tools (`tools/substrate/*.py`): `doctor.py` (lint + provenance/folder parity), `promote.py` (vault promotion), `test.py` (regression harness), `domain-scaffold.py` (new-domain generator), `fetch.py` (Ingest engine; run via `substrate-update`), `search.py` (qmd wrapper), `verify_all.py` (executable-verification runner)
- Page templates: `templates/page-types/*.template.md`
- Manifest: `content/manifest.yaml`
- Quality checks: `content/quality-checks.yaml`

User-facing commands are `just` recipes (see the root `justfile`), which dispatch to `python tools/substrate/<tool>.py`. There is no `odin-master` CLI binary in v1 — the spec's "odin-master <verb>" notation is shorthand. **Recipe names are not 1:1 with the script filenames.** The real substrate recipes are: `just doctor [domain]` and `just doctor-provenance [domain]` (→ doctor.py), `just substrate-promote <path>` (→ promote.py), `just substrate-test [domain]` (→ test.py), `just substrate-update [domain]` / `just substrate-fetch-id <id>` / `just substrate-refetch-id <id>` (→ fetch.py, the Ingest engine), `just new-domain <name>` (→ domain-scaffold.py), `just substrate-search "<query>" [--bm25]` (→ search.py), and `just verify` / `just verify-all` (executable verifications).

## Git / VCS policy

Never run `git commit`, `git push`, `git merge`, `git rebase`, `git reset`, branch/tag mutations, PR creation, or any other VCS-mutating action unless the user has explicitly told you to in this conversation. Read-only inspection (`git status`, `git diff`, `git log`) is fine.

## Search

Search backend is **qmd** (Karpathy's recommended local-only hybrid search). Active in v1.

- Install: `npm install -g @tobilu/qmd`. Index a corpus: `qmd collection add <path> --name <name>`. For embedding-backed hybrid query: `qmd embed`.
- From the substrate: `just substrate-search "<query>"` (hybrid) or `just substrate-search "<query>" --bm25` (BM25-only, no embeddings needed). The wrapper at `tools/substrate/search.py` invokes qmd directly via node on Windows (the npm shim's `/bin/sh` shebang doesn't work from cmd.exe).
- Workflow: INDEX.md is still the primary navigator. qmd is the fallback when INDEX doesn't reveal the right page or when you need to find a phrase across raw sources.
- Do not propose Ollama, custom embeddings, or DIY vector infrastructure — qmd handles all of it on-device.
- **Index setup is manual and not wired into any recipe.** `search.py` only *queries* qmd; nothing in the substrate creates or refreshes the index. Run `qmd collection add <path> --name <name>` once, then `qmd embed` before using hybrid mode. Without `qmd embed`, only `--bm25` works.

The old `odin-search` BM25 CLI has been deleted; qmd replaces it.

## Testing & verification

- `just substrate-test [domain]` — regression harness: `doctor` (structural) plus a **semantic gold-set** (`content/quality-checks.yaml` `semantic:` block) that shells out to the `claude` CLI and makes real model calls. It is slow and non-hermetic (needs `claude` on PATH), not a CI-style check. The `quality-checks.yaml` `structural:` list is descriptive only — the code hardwires structural checks to `doctor`.
- `just verify <name>` / `just verify-all` — **executable verification**: each `tests/<name>/` is a reference Odin program whose deterministic stdout fingerprint is diffed against `expected.txt` (`tools/substrate/verify_all.py` runs them all). Background: `docs/superpowers/specs/2026-05-08-executable-verification-idea.md`.

## Initial scope (v1)

The substrate's primary intent is to support learning Odin + game programming + graphics programming. Odin and graphics are populated; papers/sdl3/engines are empty shells reserved for extending into those areas. Don't over-build for hypothetical future domains.
