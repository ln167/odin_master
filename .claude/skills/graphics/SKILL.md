---
name: graphics
description: Use when the user asks about graphics programming concepts that aren't tied to a specific API — rendering pipelines, shading models, math, GPU architecture. Defer to `knowledge-substrate-core` for workflow orchestration.
---

# Graphics — Domain Skill

This domain is **populated and actively being built out**. It backs a CPU-to-GPU
rendering curriculum: tinyrenderer for the CPU-rasterizer spine, then SDL3-GPU +
vkguide for the GPU port, plus iquilezles (SDFs) and matthias-research (XPBD
physics). Material is API-agnostic rendering/GPU knowledge — Khronos-spec or
SDL3-specific API detail belongs in the `sdl3` domain instead.

## Domain pointer

- Domain root: `content/domains/graphics/`
- Tier semantics: `content/domains/graphics/source/README.md`
- Curriculum: the 00–19 CPU-to-GPU arc (plus sub-lessons like 02b/09b/11b) is blessed in `vault/lessons/`; see `docs/superpowers/specs/2026-05-09-graphics-curriculum-research.md`. New material lands in `compiled/` first and is promoted from there.

## Sources

Declared in `content/manifest.yaml` (`domain: graphics`); some fetched, the rest pending an `html_mirror` run:

- **Tier 1:** `tinyrenderer` (CPU rasterizer spine), `vkguide-dev` + `jonathanfischer-sdl-gpu` (GPU port), `matthias-research-tenminutephysics` (XPBD).
- **Tier 2:** `sebastianaaltonen`, `iquilezles-articles`, `alextardif-bindless`, `jorenjoestar-bindless`, `bartwronski-articles`, `aras-p-blog`.

To ingest declared-but-unfetched sources: `just substrate-update graphics`. To add a new source, append a `domain: graphics` entry to the manifest first.

## Source-type templates in scope

This domain primarily produces:
- `concept` pages (shading models, color spaces, anti-aliasing, BRDFs, GI techniques)
- `summary` pages (vendor docs, practitioner blog distillations)
- `blog-post` pages (Inigo Quilez, Bart Wronski, Aras P, etc.)
- `paper` pages (graphics research papers — though purely peer-reviewed work also fits in `papers/`)
- `cross-refs` (graphics ↔ sdl3 when an API maps to a general concept)

## Workflow execution

Defer to `knowledge-substrate-core` for the Compile/Query/Promote mechanics. This skill covers graphics-specific source routing and the curriculum framing above.

## What NOT to do

- Don't dump SDL3-specific or Vulkan-API-specific material here — that goes to `sdl3`. Graphics is for API-agnostic concepts.
- Don't treat unfetched manifest sources as if their content is present — run `just substrate-update graphics` (or check `source/raw/`) first.
