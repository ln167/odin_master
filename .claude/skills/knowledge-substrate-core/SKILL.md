---
name: knowledge-substrate-core
description: Use when running any of the substrate workflows — Ingest, Compile, Query, Lint — on a knowledge-substrate domain. Per-domain skills (odin, papers, sdl3, engines, graphics) defer to this skill for workflow orchestration. Holds the authoritative workflow definitions, validator rules, frontmatter schema, two-outputs rule, and source/compiled/vault discipline.
---

# Knowledge Substrate Core

This skill defines the workflows that operate on every domain in `content/domains/<d>/`. Per-domain skills (`odin`, `papers`, `sdl3`, `engines`, `graphics`) hold tier semantics and quirks but route workflow execution through here.

## Prime directives (non-negotiable)

1. **The LLM never writes to `source/` or `vault/`.** Compile produces only into `compiled/`. Promote (a shell tool) is the only way content moves into `vault/`.
2. **Compiled output is split by provenance.** Pages produced by Ingest go to `compiled/from-ingest/`. Pages produced by Query (under the two-outputs rule) go to `compiled/from-query/`. The frontmatter `provenance:` field must match the folder.
3. **INDEX.md is regenerated on every Compile pass.** No exceptions. The workflow does not mark Compile complete without writing INDEX.md.
4. **Validator-at-compile-time is non-negotiable.** Pages with malformed frontmatter, broken citations, missing required sections, or empty TLDRs are rejected and retried.
5. **Two-outputs rule** applies to Query (see Query workflow below).
6. **`log.md` is append-only**, format `## [YYYY-MM-DD] <action> | <title>`. Query entries record the verbatim user question.

## Category 1 vs Category 2 framing

This substrate is **category 1**: a lookup-and-synthesis layer over external technical sources. It is *not* a model of the user's understanding (category 2). A wiki ≠ understanding. Don't conflate.

- Category 1 content lives in `source/raw/`, `compiled/`, `vault/`.
- Category 2 traces live in `source/notes/` (hand-written, currently empty by default) and `compiled/log.md` (verbatim question history).

## Wikilink convention

Two link styles, used in different contexts:

- **Markdown links** `[text](relative/path.md)` — relative to the current file's directory. Used inside `INDEX.md` to link to neighboring compiled pages.
- **Wikilinks** `[[repo-relative/path/to/file.md]]` — always **repo-relative**, full path from repo root (e.g., `[[content/domains/odin/source/raw/tier1-authoritative/odin-lang-org/foo.md]]`). Used for citations in body content. `doctor` validates these.

When writing a `Sources` section or any in-body citation, use the repo-relative `[[...]]` form. When generating INDEX entries, use relative `[text](path)` markdown form.

## Frontmatter schema (compiled pages)

```yaml
---
title: <human-readable title>
type: <article | paper | code-symbol | blog-post | concept | summary>
domain: <odin | papers | sdl3 | engines | graphics>
tier: <1 | 2 | 3>
provenance: <from-ingest | from-query>
source_ids:
  - path: source/raw/.../foo.md
    sha256: <hex>
compiled_at: <ISO-8601 timestamp>
compiled_by: <model-id>
status: <draft | stable>
---
```

Vault frontmatter (after `promote`):

```yaml
---
title: ...
type: ...
domain: ...
frozen: true
promoted_from: compiled/from-ingest/concepts/foo.md
promoted_at: <ISO timestamp>
original_compiled_at: <ISO>
original_provenance: from-ingest
original_source_ids: [...]
blessed_because: <optional note>
---
```

## Validator-at-compile-time (rejection rules)

Reject the write and retry if:
- Required frontmatter field missing (including `provenance:`)
- `provenance:` not one of `from-ingest`, `from-query`
- Page is being written under a folder that doesn't match `provenance:`
- Any `source_ids:` path doesn't exist
- A required body section per template is missing or empty
- TLDR empty or longer than its template-defined cap
- Any `[[wikilink]]` in body doesn't resolve
- The `Sources` section doesn't list every entry from `source_ids:`

## Two-outputs-per-task rule

**Non-trivial queries** produce two outputs:
1. The answer to the user (in chat)
2. A wiki update — new page in `compiled/from-query/<type>/` or edit to existing — with `provenance: from-query`

**Trivial queries** (single-fact recall, signature lookups, restating known facts) skip both the wiki update and the log entry. The skill exercises judgment; default to writing if uncertain.

Examples:
- "What's the signature of `os.read_entire_file`?" — trivial; no update, no log.
- "How does Odin's `context.allocator` interact with hot reload?" — non-trivial; write update + log entry.

## Workflows

### Ingest

Triggered when a new or changed source needs integrating.

1. Read the new/changed source file in full.
2. Summarize key takeaways in chat.
3. Identify which existing compiled pages are affected (by topic, source-id reference, concept overlap). Pages produced by Ingest live under `compiled/from-ingest/`.
4. Check for contradictions vs existing `compiled/` and `vault/`. Propose new entries to `source/contradictions.md` with status `[pending]`.
5. Trigger a focused Compile pass on the affected pages.
6. Append to `log.md`: `## [YYYY-MM-DD] ingest | <source-name>`.

### Compile

Regenerate `compiled/` from `source/`. Idempotent.

1. Determine scope (one source, one concept, one source-type, or full domain).
2. For each affected output page:
   1. Pick the right page-type template from `templates/page-types/`.
   2. Read all `source_ids:` to be referenced; SHA-256 each.
   3. Draft the page following the template.
   4. Run validator-at-compile-time. Reject + retry on failure.
   5. Write to `compiled/from-ingest/<type>/` (when triggered by Ingest) or `compiled/from-query/<type>/` (when triggered by Query). Set `provenance:` accordingly.
3. Regenerate `compiled/INDEX.md` (mandatory). Group entries under "From ingest" / "From query" / "Vault" headers.
4. Append to `log.md`: `## [YYYY-MM-DD] compile | <scope>` with stats.

### Query

User asks a question.

1. Read the domain's `compiled/INDEX.md` first.
2. Drill into relevant `compiled/` pages (both `from-ingest/` and `from-query/`), then `vault/` if applicable.
3. If INDEX.md doesn't reveal the right page (or to find specific phrases in raw sources), shell out to qmd:
   - `python tools/substrate/search.py --bm25 "<query>"` for keyword/BM25 search (no embeddings needed).
   - `python tools/substrate/search.py "<query>"` for hybrid (BM25 + vector + LLM rerank); requires `qmd embed` to have been run.
   - Or invoke qmd directly via the MCP server if configured.
4. If exact API/code detail needed, read `source/raw/` directly.
5. Answer in chat — every factual claim cites `[[source/...]]`, `[[vault/...]]`, or `[[compiled/...]]` (repo-relative).
6. **Two-outputs rule:**
   - Non-trivial: write a new page to `compiled/from-query/<type>/` (with `provenance: from-query`) or edit existing. Routes through Compile validator.
   - Trivial: skip both wiki update and log entry.
7. If a wiki update was written: append to `log.md`: `## [YYYY-MM-DD] query | "<verbatim user question>"` plus what was written.

### Lint

Wiki health check. Proposes; never auto-fixes.

1. Scan `compiled/` (both `from-ingest/` and `from-query/`) for:
   - Orphan pages (no inbound links from INDEX.md or other pages)
   - Contradictions between pages
   - Stale pages (run `doctor --provenance-check`)
   - Concepts mentioned but lacking their own page
   - Missing cross-references
   - Required-section gaps per template
2. Append contradiction proposals to `source/contradictions.md` as `[pending]`.
3. Print a lint report.
4. Append to `log.md`: `## [YYYY-MM-DD] lint | wiki-health` with counts.

## What NOT to do

- Don't write to `source/` ever (except by user-driven manifest update or hand-editing notes/contradictions, which the LLM doesn't do).
- Don't write to `vault/` ever. Promotion is the shell tool's job.
- Don't auto-resolve contradictions. Propose; let user decide.
- Don't skip INDEX.md regen. Compile isn't complete without it.
- Don't conflate categories 1 and 2. The wiki is not your understanding.
- Don't add features the spec doesn't describe. Surface to the user.
- Don't run git commits without explicit authorization.
- Don't use compiled-relative paths in `[[wikilinks]]`. They must be repo-relative.
