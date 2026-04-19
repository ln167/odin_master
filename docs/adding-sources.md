# Adding a new source

`content/manifest.yaml` is the source registry. Each entry maps to one ingestor.

## Fetcher kinds

| fetcher | required keys | what it does |
|---|---|---|
| `local_file`  | `source_path` | reads a single file or directory under `content/sources/...` |
| `pasted_text` | `source_path` | same as above but treats the text as authoritative markdown |
| `pdf`         | `source_path` | reads a PDF and converts to markdown via `pypdf` |
| `git_clone`   | `git_url`     | clones a repo into `content/sources/.../<destination>/` |
| `html_mirror` | `url`         | fetches an HTML page (or recursively mirrors) and converts to markdown |

Every entry also needs `id` (unique), `tier` (1, 2, or 3), `destination`
(directory under `content/sources/tier{N}-{name}/`), and ideally `processor`
and `last_updated`.

## Workflow

1. Add an entry to `content/manifest.yaml`:
   ```yaml
   - id: my-source
     tier: 2
     fetcher: html_mirror
     url: https://example.org/article
     destination: example
     processor: html-to-markdown
     last_updated: 2026-04-19
   ```
2. Run `odin-master update` (or `reindex` for a full rebuild).
3. Verify with `odin-search --json "<a query the new source should answer>"`.
4. Optionally add a row to `content/quality-checks.yaml` so future regressions
   are caught by `odin-master quality-check`.

## Tier guidance

- **Tier 1** — official Odin language docs, the standard library, gingerbill posts.
- **Tier 2** — Karl Zylinski blog, Bill's vendored libraries, well-curated talks.
- **Tier 3** — community examples, Discord summaries (only if licensed for reuse), forum threads.

## Forbidden sources

Do not index Discord transcripts, private support emails, or paywalled
material. The header in `content/manifest.yaml` keeps the explicit deny-list.
