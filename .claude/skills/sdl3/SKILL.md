---
name: sdl3
description: Use when the user asks about SDL3 APIs, the Khronos Vulkan/OpenGL specs, or related graphics-API questions. This domain is currently an empty shell — no sources ingested yet. Defer to `knowledge-substrate-core` for workflow orchestration once populated.
---

# SDL3 — Domain Skill (empty shell)

This domain is an **empty shell** at v1. Reserved for SDL3 documentation, headers, and Khronos specs (Vulkan/OpenGL) when learning extends into graphics-API programming.

## Domain pointer

- Domain root: `content/domains/sdl3/`
- Tier semantics: `content/domains/sdl3/source/README.md`

## Source-type templates in scope

Once populated, sdl3 domain will primarily produce:
- `code-symbol` pages (SDL3 functions, structs, enums)
- `concept` pages (swap chains, command buffers, synchronization, pipelines)
- `summary` pages (per-source distillations)
- `blog-post` pages (SDL maintainers, graphics practitioners)
- `cross-refs` (concept ↔ code-symbol, sdl3 ↔ graphics)

## To populate this domain

1. Add manifest entries with `domain: sdl3`. Fetchers: `html_mirror` for libsdl.org and Khronos docs; `local_dir` if cloning SDL3 headers.
2. Run `odin-master update --domain sdl3`.
3. Compile via this skill.

## Workflow execution

Defer to `knowledge-substrate-core`. While the domain is empty, this skill exists to claim the namespace.

## What NOT to do

- Don't query while empty — answer is "no sources ingested yet."
- Don't put pure-graphics-concept material here (use `graphics` domain); SDL3-specific API material belongs here.
