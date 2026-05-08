---
name: graphics
description: Use when the user asks about graphics programming concepts that aren't tied to a specific API — rendering pipelines, shading models, math, GPU architecture. This domain is currently an empty shell — no sources ingested yet. Defer to `knowledge-substrate-core` for workflow orchestration once populated.
---

# Graphics — Domain Skill (empty shell)

This domain is an **empty shell** at v1. Reserved for graphics-programming material — Khronos specs, GPU vendor docs, practitioner blogs — when learning crosses into rendering and GPU work.

## Domain pointer

- Domain root: `content/domains/graphics/`
- Tier semantics: `content/domains/graphics/source/README.md`

## Source-type templates in scope

Once populated, graphics domain will primarily produce:
- `concept` pages (shading models, color spaces, anti-aliasing, BRDFs, GI techniques)
- `summary` pages (vendor docs, practitioner blog distillations)
- `blog-post` pages (Inigo Quilez, Bart Wronski, Aras P, etc.)
- `paper` pages (graphics research papers — though purely peer-reviewed work also fits in `papers/`)
- `cross-refs` (graphics ↔ sdl3 when API maps to general concept)

## To populate this domain

1. Add manifest entries with `domain: graphics`. Fetchers: `html_mirror` for vendor docs (AMD GPUOpen, NVIDIA Dev) and practitioner blogs.
2. Run `odin-master update --domain graphics`.
3. Compile via this skill.

## Workflow execution

Defer to `knowledge-substrate-core`. While the domain is empty, this skill exists to claim the namespace.

## What NOT to do

- Don't query while empty.
- Don't dump SDL3-specific or Vulkan-API-specific material here — that goes to `sdl3`. Graphics is for API-agnostic concepts.
