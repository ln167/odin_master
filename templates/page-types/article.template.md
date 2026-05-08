---
title: {{title}}
type: article
domain: {{domain}}
tier: {{tier}}
provenance: {{from-ingest | from-query}}
source_ids:
  - path: {{source-path}}
    sha256: {{hex}}
compiled_at: {{ISO-8601 timestamp}}
compiled_by: {{model-id}}
status: draft
---

# {{title}}

## TLDR

{{≤3 sentences capturing the page's core takeaway. Required.}}

## Body

{{The synthesized content, prose form. Required.}}

## Caveats / Edge Cases

{{Conditions where the article's claims don't hold, footguns, exceptions. Required — at least one entry.}}

## Sources

{{Each source_ids entry from frontmatter as an explicit wikilink. Required. Wikilinks must be repo-relative.}}

- [[{{source-path}}]]
