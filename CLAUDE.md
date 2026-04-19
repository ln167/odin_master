# Notes for LLM agents working in this repo

This is the `odin_master` template. The design spec is at
`docs/superpowers/specs/2026-04-19-odin-master-template-design.md`.

To search the corpus, use the `odin-search` CLI:

    odin-search "<query>" --json

The `odin-master` Python CLI handles cold-path tasks (index, summarize, scaffold,
template self-update, doctor, etc.). See `odin-master --help`.
