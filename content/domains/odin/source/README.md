---
type: domain-readme
domain: odin
---

# Odin Domain — Source

This directory holds the immutable source material for the Odin domain. The LLM reads from here but never writes.

## Layout

- `raw/` — upstream-mirrored material, refetched by `odin-master update`
  - `tier1-authoritative/` — odin-lang.org docs, stdlib source (`core:*`), vendor source (`vendor:*`)
  - `tier2-curated/` — Karl Zylinski, gingerBill, jakubtomsu blogs (handpicked curators)
  - `tier3-community/` — odin-examples repo, community gists
- `notes/` — reserved for hand-written content (currently empty by default)
- `contradictions.md` — append-only log of source disagreements (user-maintained)
- `README.md` — this file

## Tier semantics for Odin

| Tier | What lives here | Trust |
|---|---|---|
| 1 | Official Odin docs, stdlib source code, vendor source code | Authoritative — canonical |
| 2 | Curator blogs (Karl Zylinski, gingerBill, jakubtomsu) | Curated — trusted but opinionated |
| 3 | Community gists, example repos, third-party tutorials | Community — treat with skepticism |

## Adding a new source

See `docs/adding-sources.md` for the manifest schema. New sources go into `manifest.yaml` with `domain: odin` and the appropriate tier; running `odin-master update` fetches them into `raw/`.
