---
type: domain-readme
domain: papers
---

# Papers Domain — Source

This domain is an **empty shell**. Reserved for ingestion of research papers (peer-reviewed venues, arxiv preprints, paper-summary blogs) when learning extends into research-paper territory.

## Tier semantics for Papers

| Tier | What lives here | Trust |
|---|---|---|
| 1 (`tier1-peer-reviewed`) | Peer-reviewed venues (SIGGRAPH, IEEE, ACM, journals) | Authoritative — peer review |
| 2 (`tier2-arxiv`) | arxiv preprints, technical reports | Trusted but unreviewed |
| 3 (`tier3-blog-summary`) | Blog summaries, reviews of papers | Community interpretation |

## To populate

1. Add manifest entries with `domain: papers`. The `arxiv-pdf` fetcher and `pdf-to-markdown` processor will likely need to be implemented at that point (see spec § Multi-domain pattern).
2. Run `odin-master update --domain papers`.
3. Compile via the `papers` skill.
