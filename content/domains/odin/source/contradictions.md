---
type: contradictions
domain: odin
---

# Contradictions — Odin Domain

Append-only log of source disagreements. The LLM proposes new entries during Ingest and Lint workflows (with status `[pending]`); the user reviews and resolves.

Format:

```
## [YYYY-MM-DD] <topic>
- Source A: <claim> (source: <source-id>)
- Source B: <claim> (source: <source-id>)
- **Resolution**: <user's resolution, or TBD>
```

Pending entries below this line.

---
