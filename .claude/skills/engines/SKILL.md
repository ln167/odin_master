---
name: engines
description: Use when the user asks about game-engine internals, source code, or architecture (godot, bevy, etc.). This domain is currently an empty shell — no sources ingested yet. Defer to `knowledge-substrate-core` for workflow orchestration once populated.
---

# Engines — Domain Skill (empty shell)

This domain is an **empty shell** at v1. Reserved for game-engine source code and documentation when learning extends to engine internals.

## Domain pointer

- Domain root: `content/domains/engines/`
- Tier semantics: `content/domains/engines/source/README.md`

## Source-type templates in scope

Once populated, engines domain will primarily produce:
- `code-symbol` pages (engine functions, structs, plugin APIs)
- `concept` pages (ECS, scene graphs, asset pipelines, render graph)
- `summary` pages (engine-team blog distillations, conference talk summaries)
- `blog-post` pages

## To populate this domain

1. Add manifest entries with `domain: engines`. Fetchers: `git_clone` for engine repos (godot, bevy), `html_mirror` for engine docs.
2. Run `odin-master update --domain engines`.
3. Compile via this skill.

## Workflow execution

Defer to `knowledge-substrate-core`. While the domain is empty, this skill exists to claim the namespace.

## What NOT to do

- Don't query while empty.
- Don't conflate "how this engine implements X" with "what's the right way to implement X" — engine concrete behavior belongs here; general principles belong in `graphics` or `papers`.
