---
title: {{title}}
type: code-symbol
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

{{Signature + one-line purpose. Required.}}

## Signature

```{{language}}
{{full signature, including parameters, return type, generics}}
```

## Examples

{{One or more usage examples. Each should compile/run as-is. Required.}}

## Gotchas / Footguns

{{Common mistakes, undefined-behavior cases, surprising defaults. Required — at least one.}}

## Related Symbols

{{Wikilinks to related code-symbol pages, peer functions/types in the same module. Wikilinks repo-relative.}}

## Sources

- [[{{source-path}}#L{{line-number}}]]
