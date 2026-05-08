---
name: odin
description: Use whenever the user asks ANY question about the Odin programming language — syntax, stdlib (`core:*`), vendored libraries (`vendor:*` like raylib, sdl3, glfw), hot reload, allocators, tagged unions, slices, the `context` system. This domain skill points at `content/domains/odin/` and defers to `knowledge-substrate-core` for workflow orchestration. The detailed canonical-source map lives in `content/domains/odin/source/README.md`.
---

# Odin — Domain Skill

This is a thin per-domain skill. It points at the Odin domain's content and tier semantics, then defers to `knowledge-substrate-core` for the actual workflow execution (Ingest, Compile, Query, Lint).

## Domain pointer

- Domain root: `content/domains/odin/`
- Source: `content/domains/odin/source/raw/{tier1-authoritative,tier2-curated,tier3-community}/`
- Compiled: `content/domains/odin/compiled/{from-ingest,from-query}/`
- Vault: `content/domains/odin/vault/{studies,lessons}/`
- Tier semantics: `content/domains/odin/source/README.md`

## Source-type templates in scope for Odin

This domain produces:
- `code-symbol` pages (stdlib functions, types, vendor APIs)
- `concept` pages (allocators, context, tagged unions, hot reload)
- `summary` pages (per-source distillations of tier-1 docs)
- `blog-post` pages (Karl Zylinski, gingerBill, jakubtomsu)
- `cross-refs` between concepts and code-symbols

Odin pages do NOT use:
- `paper` template (papers domain only)
- `article` template (rare; use `blog-post` for opinionated, `concept` for definitional)

## Domain quirks

- Stdlib code lives at `${ODIN_ROOT}/core/` (mirrored under `tier1-authoritative/odin-core/`). Vendor at `${ODIN_ROOT}/vendor/` (mirrored under `tier1-authoritative/odin-vendor/`).
- The `context` system is implicit and easy to misexplain — concept pages must call out the difference between "default context" and "explicit `context.allocator = X` swap" (see `source/contradictions.md`).
- Hot reload requires careful state management. Vault holds the canonical lessons (lesson 18) and a study (`vault/studies/arena-allocator.cited.md`); cite these heavily.

## Workflow execution

Defer to `knowledge-substrate-core`. When the user asks an Odin question:
1. Activate the workflow per `knowledge-substrate-core` § Query.
2. Use `content/domains/odin/compiled/INDEX.md` as the navigation primitive.
3. Apply the two-outputs rule with Odin-specific judgment (e.g., "what's the signature of X" is trivial; "why does X work this way" is non-trivial).

## What NOT to do

- Don't answer Odin questions from training-data memory. Pull from the actual sources under `content/domains/odin/source/raw/`.
- Don't write to `content/domains/odin/source/` or `content/domains/odin/vault/` (per core skill).
- Don't break the source/compiled/vault discipline.
