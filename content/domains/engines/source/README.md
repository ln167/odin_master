---
type: domain-readme
domain: engines
---

# Engines Domain — Source

This domain is an **empty shell**. Reserved for ingestion of game-engine source code and documentation when learning extends to engine internals.

## Tier semantics for Engines

| Tier | What lives here | Trust |
|---|---|---|
| 1 | Engine source code (godot, bevy, etc.), official engine docs | Authoritative |
| 2 | Engine-team blogs, conference talks | Curated |
| 3 | Community guides, plugins | Community |

## To populate

1. Add manifest entries with `domain: engines`. Fetchers: `git_clone` for engine repos, `html_mirror` for engine docs.
2. Run `odin-master update --domain engines`.
3. Compile via the `engines` skill.
