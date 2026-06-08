# from_old_repo_references

Conceptual design docs imported from `../projects/ultimate-flat/` — the abandoned C++ research repo for the destructible-world game. The C++ implementation is dead; these *ideas* are not. They are the language-agnostic architectural truth the Odin game work (`lab/`, `GAME.md`) draws on.

**Frozen import** (copied 2026-06-06). Not maintained here — edit the live design here, treat `../projects/ultimate-flat/` as a read-only archive.

- `PIVOT.md` — the vision: 2D "Engineer's Cave" dig prototype → 3D Kenshi-scale destructible-world game. Central thesis: promote/demote bridge between mesh / pixel-grid / rigid-body, material ratios, bond-network fracture.
- `world-operations-and-representations.md` — deterministic-vs-emergent operation split; how it drives representation choice. (PIVOT's "most valuable doc.")
- `world-material-philosophy.md` — material **ratios** (`{granite: 0.73, quartz: 0.20, copper: 0.07}`), not labels; composition propagates through every operation.
- `2026-05-06-odin-pivot-session.md` — the conversation that produced the pivot from C++ to Odin.
- `solver-theory.md` — 6-axis optimization framework, material architecture, physics-paper references.
- `one-frame.md` — the frame-phases / world-model contract.
- `mfd-prototype-design.md` — the MFD physics-system design.

Still in the old repo, to port later: `papers/` (XPBD, IPC, shape-matching, Nanite, mesh-shaders, …) → `content/domains/papers/`.
