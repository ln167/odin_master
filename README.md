# odin_master

Personal multi-domain technical-knowledge substrate. v1 is for learning Odin + game programming + graphics programming.

- `docs/superpowers/specs/2026-05-04-substrate-redesign-design.md` — current design spec
- `docs/superpowers/plans/INDEX.md` — implementation plans
- `docs/adding-sources.md` — extend the corpus
- `docs/smoke-test.md` — end-to-end runbook

## Layout

- `content/domains/<d>/` — per-domain knowledge (source/compiled/vault three-tier)
- `templates/page-types/` — page templates per source type (article, paper, code-symbol, blog-post, concept, summary)
- `templates/domain/` — scaffold for adding a new domain
- `tools/substrate/` — shell tools (doctor, promote, test, domain-scaffold)
- `.claude/skills/knowledge-substrate-core/` — workflow orchestration
- `.claude/skills/<domain>/` — thin per-domain skills

## Domains

| Domain | Status |
|---|---|
| `odin` | populated |
| `papers` | empty shell |
| `sdl3` | empty shell |
| `engines` | empty shell |
| `graphics` | empty shell |

## Common operations

```sh
# Mechanical health check
just doctor odin
just doctor-provenance odin

# Run regression gold-set
just substrate-test odin

# qmd-backed search over indexed sources
just substrate-search "context allocator"            # hybrid (needs `qmd embed`)
just substrate-search "context allocator" --bm25     # BM25-only

# Add a new domain (scaffolded empty)
just new-domain my-new-domain

# Promote a compiled page to vault (frozen, blessed)
just substrate-promote content/domains/odin/compiled/from-query/concepts/some-page.md
```

## Workflows (LLM-driven, via skill)

- **Ingest** — integrate a new/changed source. Updates affected `from-ingest/` pages.
- **Compile** — regenerate `compiled/` from `source/`. Idempotent.
- **Query** — answer a question using the wiki + sources. Non-trivial queries produce a `from-query/` page (two-outputs rule).
- **Lint** — wiki health check. Proposes; never auto-fixes.

Invoke via the relevant per-domain skill (`odin`, etc.) in Claude Code; the skill orchestrates through `knowledge-substrate-core`.

## End-to-end smoke test

See `docs/smoke-test.md`.
