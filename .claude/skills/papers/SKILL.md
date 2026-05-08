---
name: papers
description: Use when the user asks about a research paper or wants to ingest one (peer-reviewed venues, arxiv preprints, paper-summary blogs). This domain is currently an empty shell — no sources ingested yet. Defer to `knowledge-substrate-core` for workflow orchestration once the domain is populated.
---

# Papers — Domain Skill (empty shell)

This domain is an **empty shell** at v1. Reserved for research-paper ingestion when learning extends into research territory (graphics papers, ML, etc.).

## Domain pointer

- Domain root: `content/domains/papers/`
- Tier semantics: `content/domains/papers/source/README.md`

## Source-type templates in scope

Once populated, papers domain will primarily produce:
- `paper` pages (the canonical type for this domain)
- `concept` pages (synthesizing across multiple papers on the same topic)
- `summary` pages (per-paper distillations)
- `cross-refs` (papers that cite or build on each other)

## To populate this domain

1. Add manifest entries with `domain: papers`. Likely needs an `arxiv-pdf` fetcher and `pdf-to-markdown` processor (not implemented in v1).
2. Run `odin-master update --domain papers`.
3. Compile via this skill (which routes to `knowledge-substrate-core` § Compile).

## Workflow execution

Defer to `knowledge-substrate-core`. While the domain is empty, this skill primarily exists to claim the namespace and document the planned shape.

## What NOT to do

- Don't try to query the domain while it's empty — the answer is "no sources ingested yet."
- Don't conflate paper claims with concept-level Odin/SDL3 knowledge — papers belong here, code/API knowledge belongs in the relevant code domain.
