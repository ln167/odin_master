---
type: domain-readme
domain: graphics
---

# Graphics Domain — Source

This domain is **populated**. It holds upstream-mirrored graphics-programming
material backing the CPU-to-GPU rendering curriculum (lessons 00–19, blessed in
`../vault/lessons/`). The LLM reads from here but never writes.

## Layout

- `raw/` — upstream-mirrored material (tier1/tier2 per the manifest)
- `notes/` — reserved for hand-written content (empty by default)
- `contradictions.md` — append-only log of source disagreements
- `README.md` — this file

## Tier semantics for Graphics

| Tier | What lives here | Trust |
|---|---|---|
| 1 | Curriculum-grade tutorials: tinyrenderer (CPU rasterizer), vkguide + jonathanfischer-sdl-gpu (GPU path), tenminutephysics (XPBD) | Authoritative — canonical for the lesson arc |
| 2 | Practitioner blogs: Sebastian Aaltonen, Inigo Quilez, Alex Tardif, Joren Joestar, Bart Wronski, Aras Pranckevičius | Curated — trusted but opinionated |
| 3 | Stack Overflow answers, ad-hoc blog tutorials | Community — treat with skepticism |

## Adding / refreshing sources

See `docs/adding-sources.md` for the manifest schema. New sources go into
`content/manifest.yaml` with `domain: graphics` and the appropriate tier; running
`just substrate-update graphics` fetches `html_mirror` entries into `raw/`.
Some declared sources may not be fetched yet — check `raw/` (or re-run the
update) before assuming a source's content is present.
