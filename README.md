# odin_master

Personal master template for Odin programming work.

- `docs/superpowers/specs/2026-04-19-odin-master-template-design.md` — design spec
- `docs/superpowers/plans/INDEX.md` — implementation plans
- `docs/adding-sources.md` — extend the corpus

## Quick start
1. Bootstrap: `pwsh tools/install/install.ps1` (Windows) or `bash tools/install/install.sh` (Linux/macOS).
2. Verify: `odin-master doctor`.
3. Index the corpus: `odin-master bootstrap-corpus`.
4. Search: `odin-search "context.allocator"`.
5. New game project: `odin-master new game my_game --target ./my_game`.
6. Hot reload: `cd my_game && python build.py hot`.
7. New cli/lib: `odin-master new cli foo` / `odin-master new lib bar`.

Cold-path tasks (`summarize`, `publish`, `vendor add`, `docs build`, `scratch …`) are subcommands of `odin-master`. Hot-path search is `odin-search`.
