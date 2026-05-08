---
type: domain-readme
domain: graphics
---

# Graphics Domain — Source

This domain is an **empty shell**. Reserved for graphics-programming material — Khronos specs, GPU vendor docs, practitioner blogs — when learning crosses into rendering and GPU work.

## Tier semantics for Graphics

| Tier | What lives here | Trust |
|---|---|---|
| 1 | Khronos specs, GPU vendor docs (AMD GPUOpen, NVIDIA Dev) | Authoritative |
| 2 | Practitioner blogs (Inigo Quilez, Bart Wronski, Aras P) | Curated |
| 3 | Stack Overflow answers, blog tutorials | Community |

## To populate

1. Add manifest entries with `domain: graphics`. Fetchers: `html_mirror` for vendor docs and practitioner blogs.
2. Run `odin-master update --domain graphics`.
3. Compile via the `graphics` skill.
