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

Non-trivial queries produce both an answer (in chat) and a wiki update (page in `compiled/from-query/`). Trivial queries (single-fact lookups, signature recall) skip both — no log entry, no page.

### Validator-at-compile-time

Compile rejects pages with malformed frontmatter, broken citations, missing required sections, or empty TLDRs. The LLM retries.

### INDEX.md is regenerated every Compile

Mandatory. The skill workflow refuses to mark Compile complete without it.

### `log.md` format

Append-only, `## [YYYY-MM-DD] <action> | <title>`. Query entries record the verbatim user question.

### Wikilink convention

In compiled and vault page bodies, `[[wikilinks]]` always use **repo-relative paths** (e.g., `[[content/domains/odin/source/raw/tier1-authoritative/odin-lang-org/foo.md]]`). Markdown links `[text](path)` inside INDEX.md are relative to INDEX.md's directory. `doctor` validates wikilinks; markdown links are not validated.

### Vault subfolder convention

`vault/` subfolders are free-form. New `substrate-promote` writes to `vault/<page-type>/`. Existing migrated content (`vault/studies/`, `vault/lessons/`) keeps its custom names. Both schemes coexist; `doctor` does not enforce vault subfolder names.

## Tooling map

- Skill orchestrator: `.claude/skills/knowledge-substrate-core/SKILL.md`
- Per-domain skills: `.claude/skills/{odin,papers,sdl3,engines,graphics}/SKILL.md`
- Shell tools: `tools/substrate/{doctor,promote,test,domain-scaffold}.py`
- Page templates: `templates/page-types/*.template.md`
- Manifest: `content/manifest.yaml`
- Quality checks: `content/quality-checks.yaml`

User-facing commands are `just` recipes. The justfile dispatches to `python tools/substrate/<tool>.py`. There is no `odin-master` CLI binary in v1 — the spec's "odin-master <verb>" notation is shorthand for "the substrate command" (currently invoked as `just <verb>` or `python tools/substrate/<verb>.py`).

## Git / VCS policy

Never run `git commit`, `git push`, `git merge`, `git rebase`, `git reset`, branch/tag mutations, PR creation, or any other VCS-mutating action unless the user has explicitly told you to in this conversation. Read-only inspection (`git status`, `git diff`, `git log`) is fine.

## Search

Search backend is **qmd** (Karpathy's recommended local-only hybrid search). Active in v1.

- Install: `npm install -g @tobilu/qmd`. Index a corpus: `qmd collection add <path> --name <name>`. For embedding-backed hybrid query: `qmd embed`.
- From the substrate: `just substrate-search "<query>"` (hybrid) or `just substrate-search "<query>" --bm25` (BM25-only, no embeddings needed). The wrapper at `tools/substrate/search.py` invokes qmd directly via node on Windows (the npm shim's `/bin/sh` shebang doesn't work from cmd.exe).
- Workflow: INDEX.md is still the primary navigator. qmd is the fallback when INDEX doesn't reveal the right page or when you need to find a phrase across raw sources.
- Do not propose Ollama, custom embeddings, or DIY vector infrastructure — qmd handles all of it on-device.

The old `odin-search` BM25 CLI has been deleted; qmd replaces it.

## Initial scope (v1)

The substrate's primary intent is to support learning Odin + game programming + graphics programming. Odin is populated; papers/sdl3/engines/graphics are empty shells reserved for that learning extending. Don't over-build for hypothetical future domains.
