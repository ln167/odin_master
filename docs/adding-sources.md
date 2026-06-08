# Adding a new source

`content/manifest.yaml` is the source registry. Each entry maps to one ingestor.

## Required fields

Every entry needs:
- `id` (unique slug)
- `tier` (1, 2, or 3)
- `domain` (one of: `odin`, `papers`, `sdl3`, `engines`, `graphics`, or any new domain created via `just new-domain <name>`)
- `destination` (directory name under `content/domains/<domain>/source/raw/tier{N}-<tier-name>/`)
- `fetcher` (see below)
- `processor` (typically `markdown`, `html-to-markdown`, or `source-code`)
- `last_updated` (ISO date)

## Fetcher kinds

| fetcher | required keys | what it does |
|---|---|---|
| `html_mirror` | `url`         | fetches an HTML page (or recursively mirrors with `mirror: true`) and converts to markdown — **the only automated fetcher** |
| `pasted_text` | `source_path` | treats an existing hand-placed file/dir as authoritative markdown |
| `local_dir`   | `source_path` | reads a local source tree (e.g. `${ODIN_ROOT}/core`) |
| `git_clone`   | `git_url`     | clones a repo into the destination |

## Workflow

1. Add an entry to `content/manifest.yaml`:
   ```yaml
   - id: my-source
     tier: 2
     domain: odin
     fetcher: html_mirror
     url: https://example.org/article
     destination: example
     processor: html-to-markdown
     last_updated: 2026-05-04
   ```
2. For `html_mirror` entries, run `just substrate-update odin`. Other fetcher kinds (`pasted_text`, `local_dir`, `git_clone`) are not automated — populate `source/raw/` by hand.
3. Trigger a focused Compile pass via the relevant per-domain skill (e.g., the `odin` skill).
4. Verify with `just doctor odin`.
5. Optionally add a query to `content/quality-checks.yaml` (semantic block) so future regressions are caught by `just substrate-test odin`.

## Tier guidance per domain

Each domain's `source/README.md` defines its own tier semantics. Examples:

- **Odin** — tier 1: odin-lang.org docs + stdlib source; tier 2: Karl Zylinski / gingerBill / jakubtomsu; tier 3: odin-examples + community gists.
- **Papers** (when populated) — tier 1: peer-reviewed venues; tier 2: arxiv preprints; tier 3: blog summaries.
- See `content/domains/<domain>/source/README.md` for each domain's specific tiers.

## Domain field (added 2026-05-04 substrate redesign)

Every manifest entry must specify a `domain:` field. Valid values are the directory names under `content/domains/`. New domains created via `just new-domain <name>` become valid values. The fetched content is placed under `content/domains/<domain>/source/raw/<destination>/`, where `<destination>` is the entry's `destination:` field.

## Forbidden sources

Do not index Discord transcripts, private support emails, or paywalled material. The header comment in `content/manifest.yaml` keeps the explicit deny-list.
