---
title: {{title}}
type: paper
domain: papers
tier: {{tier}}
provenance: from-ingest
source_ids:
  - path: {{source-path}}
    sha256: {{hex}}
compiled_at: {{ISO-8601 timestamp}}
compiled_by: {{model-id}}
status: draft
---

# {{title}}

## TLDR

{{≤3 sentences. The paper's central claim and result.}}

## Methodology

{{What the authors did. Datasets, instruments, controls, procedure. Required.}}

## Claims

{{Each significant claim with span anchor. Required.

Format:
- **{{claim}}** ([[{{source-path}}#p{{page}}]])
}}

## Datasets

{{Datasets, benchmarks, or experimental subjects used. Note availability and reproducibility constraints. Required.}}

## Limitations

{{What the paper itself acknowledges as limits, plus any limits the LLM identifies. Required.}}

## Sources

- [[{{source-path}}]]
