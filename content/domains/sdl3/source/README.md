---
type: domain-readme
domain: sdl3
---

# SDL3 Domain — Source

This domain is an **empty shell**. Reserved for ingestion of SDL3 documentation, headers, and the Khronos specs (Vulkan/OpenGL) when learning extends into graphics-API programming.

## Tier semantics for SDL3

| Tier | What lives here | Trust |
|---|---|---|
| 1 | libsdl.org docs, SDL3 headers, Khronos specs (Vulkan/OpenGL) | Authoritative — canonical |
| 2 | SDL maintainer blogs, sample code | Curated |
| 3 | Community wiki, third-party tutorials | Community |

## To populate

1. Add manifest entries with `domain: sdl3`. Fetchers: `html_mirror` for libsdl.org/khronos.org docs, `local_dir` if cloning SDL3 headers locally.
2. Run `odin-master update --domain sdl3`.
3. Compile via the `sdl3` skill.
