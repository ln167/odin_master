# Research archive — odin_master template design

This folder contains **raw, unedited output from research subagents** that informed the design decisions in `docs/superpowers/specs/2026-04-19-odin-master-template-design.md`.

The purpose of this archive is to preserve the underlying evidence (citations, version numbers, ecosystem state at a point in time) so future revisions can re-evaluate decisions without re-running the same research.

| File | Topic | Date generated |
|---|---|---|
| [2026-04-19-embedding-model-selection.md](2026-04-19-embedding-model-selection.md) | SOTA local embedding models, RTX 4080 / 16GB VRAM, technical-doc corpus | 2026-04-19 |
| [2026-04-19-search-cli-architecture.md](2026-04-19-search-cli-architecture.md) | Sub-100ms hybrid search CLI architecture (Rust + USearch + SQLite FTS5) | 2026-04-19 |
| [2026-04-19-odin-toolchain-inventory.md](2026-04-19-odin-toolchain-inventory.md) | Official Odin toolchain, LSP, editor integrations, what ships with the compiler | 2026-04-19 |
| [2026-04-19-odin-community-workflows.md](2026-04-19-odin-community-workflows.md) | Community patterns: project starts, hot-reload, build wrappers, CI, profiling, dependency management | 2026-04-19 |

## Archive policy

- **Verbatim**: each file preserves the agent output as produced. Minor preambles ("I now have enough data") are kept rather than edited, so the archive is honest about what was generated.
- **Cited URLs**: every quantitative claim links to its source. URLs may rot — re-verify before relying on numbers more than ~6 months old.
- **Snapshots in time**: dated filenames. Re-research, don't overwrite. New research → new dated file.
