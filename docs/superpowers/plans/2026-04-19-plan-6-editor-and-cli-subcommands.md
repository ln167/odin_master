# Plan 6 — Editor wiring + remaining `odin-master` subcommands

> **Status:** OUTLINE — full task-by-task plan to be written when Plans 1 and 5 are implemented and verified working.
>
> **Why outline only:** per the user's incremental-commitment strategy, we don't draft detailed plans for downstream work that may shift once foundation work surfaces real constraints.

**Goal:** Wire a working editor experience (Neovim primary; OLS + odinfmt + tree-sitter + DAP), implement `bootstrap` / `bootstrap-lite` / `setup` (machine class detection + settings.toml writing), implement `update-template` (three-way merge), implement `format` / `check` / `doctor` / `test-summary`, install the pre-commit hook from spec §11.6. End state: a fresh clone runs `just bootstrap` and the developer is editing Odin in Neovim with LSP, format-on-save, tree-sitter highlighting, breakpoint debugging, the `<leader>od` search picker, and `:OdinDoctor` health-check, all working.

**Depends on:** Plan 1 (CLI shells + editor config files exist as stubs); Plan 5 (instrumentation library is real, since some doctor checks reference it); Plans 2 + 3 are nice-to-have but not strictly required (the picker stub from Plan 1 is fine; real picker behavior just shells out to `odin-search` once Plan 3 lands).

**Architecture:** Two distinct chunks here — the install/setup chunk (Bash + PowerShell + Python `setup` command + `update-template` three-way merge) and the editor chunk (Neovim Lua plugin + DAP + tree-sitter + format-on-save). They're bundled in one plan because both are about "polish + developer ergonomics" and finish the user-facing surface.

**Tech Stack:** Bash + PowerShell (install scripts); Python 3.12 (setup, update-template via `git-merge-file -p` for three-way merging); Lua 5.1 / LuaJIT (Neovim plugin spec, lazy.nvim format); `nvim-lspconfig`, `nvim-dap`, `nvim-dap-odin`, `codelldb`; Telescope (or fzf-lua / Snacks — pick one, document the others as alternates).

## Files this plan will touch

- Replace: `tools/install/install.sh` (real bootstrap on Linux/WSL/macOS — Odin compiler build, OLS build, odinfmt build, ripgrep + fd via package manager, ollama install on GPU machines, hook install via `git config core.hooksPath`)
- Replace: `tools/install/install.ps1` (Windows-native fallback; smaller scope)
- Modify: `tools/indexer/odin_master/cli.py` (replace `setup`, `update-template`, `doctor`, `test-summary` stubs with real impls)
- Create: `tools/indexer/odin_master/setup_machine.py` (detect GPU + Ollama; write settings.toml)
- Create: `tools/indexer/odin_master/template_update.py` (three-way merge per spec §9.3)
- Create: `tools/indexer/odin_master/doctor.py` (env check; called from `just doctor` and from Neovim `:OdinDoctor`)
- Create: `tools/indexer/odin_master/test_summary.py` (read `build/test-report.json` → markdown)
- Create: `tools/indexer/odin_master/format_check.py` (or extend existing module — wraps `odinfmt -stdin -overwrite` and `odin check . -vet -strict-style`)
- Modify: `justfile` (replace `bootstrap`, `bootstrap-lite`, `check-odin-version`, `update-odin`, `build`, `run`, `test`, `check`, `clean`, `format`, `install-cli` stubs with real recipes)
- Replace: `tools/nvim/lua/odin_master/init.lua` (real `setup({...})`)
- Replace: `tools/nvim/lua/odin_master/lsp.lua` (real OLS configuration via nvim-lspconfig)
- Replace: `tools/nvim/lua/odin_master/pickers.lua` (real Telescope/Snacks picker shelling out to `odin-search --json`)
- Replace: `tools/nvim/lua/odin_master/health.lua` (real `:checkhealth` impl shelling out to `odin-master doctor`)
- Create: `tools/nvim/lua/odin_master/dap.lua` (nvim-dap-odin + codelldb wiring)
- Create: `tools/nvim/lua/odin_master/format.lua` (BufWritePre autocmd → `odinfmt -stdin`)
- Create: `tools/nvim/lazy.lua` (lazy.nvim plugin spec users can drop into their config)
- Create / replace: `docs/getting-started.md`, `docs/daily-use.md`, `docs/multi-machine.md` (real content, not stubs)
- Create: `tools/indexer/tests/test_setup_machine.py`, `test_template_update.py`, `test_doctor.py`, `test_test_summary.py`
- Create: `tests/test_pre_commit_hook.sh` or a Python wrapper that invokes the hook with a fixture and asserts it formats + checks correctly.

## Components (rough)

1. **`setup`** — auto-detect: GPU present? (probe `nvidia-smi`, `rocminfo`, or just check VRAM via Ollama when present). Ollama reachable on `127.0.0.1:11434`? Pick `enable_vector_search = true|false`. Write `~/.config/odin_master/settings.toml` (or `%APPDATA%\odin_master\settings.toml` on Windows). Idempotent. Called from `just bootstrap` / `bootstrap-lite`.
2. **`bootstrap`** — install Odin (build from source, pin per `.odin-version`), OLS, odinfmt (in OLS repo), ripgrep + fd, codelldb, Ollama (skip on `bootstrap-lite`), then run `setup`, install the git hook. Validates with `doctor`.
3. **`update-template`** — implements spec §9.3: walk template files; for each, read recorded version (`.odin-master/template-sha.txt` → archived blob in master repo), current template version, user's current copy; run `git merge-file -p` (three-way); silently update untouched, conflict-mark touched-and-changed, add new files, update `template-sha.txt` on success.
4. **`doctor`** — checks: Odin matches `.odin-version`; `ols` and `odinfmt` on PATH; tree-sitter-odin parser installed; codelldb present; on GPU machines: `ollama serve` reachable + Qwen3 model pulled. Returns structured output that Neovim's `:checkhealth` can consume.
5. **`test-summary`** — reads `build/test-report.json` (per spec §11.4), produces a markdown digest (pass/fail counts, failing tests with file:line links).
6. **`format` / `check`** — wrappers around `odinfmt -stdin -overwrite` and `odin check . -vet -strict-style` (Bucket B convenience layer per spec §6.2).
7. **Pre-commit hook** — content already shipped in Plan 1; this plan installs it via `git config core.hooksPath tools/git-hooks/` in `bootstrap` and adds the test that proves it blocks unformatted commits.
8. **Neovim plugin** — `setup({})` wires LSP (OLS via nvim-lspconfig), tree-sitter (built-in 0.12+), DAP (nvim-dap + nvim-dap-odin + codelldb), format-on-save (BufWritePre → odinfmt -stdin), the picker (Telescope/Snacks → `odin-search --json`), and `:OdinDoctor` (`:checkhealth` → `odin-master doctor`).

## Test gates (acceptance criteria)

- `odinfmt -stdin -overwrite` formats a fixture deterministically (snapshot test).
- Pre-commit hook blocks an unformatted commit on a fixture repo and unblocks it after running.
- `odin-master setup` on a machine with simulated "no GPU / no Ollama" writes `enable_vector_search=false`; on a simulated GPU+Ollama machine writes `=true`.
- `odin-master update-template` against a fixture scaffolded project resolves: untouched-file upgrade silently, touched-but-unchanged-in-template no-op, touched-and-changed conflict-marker correct (`<<<<<<<` blocks present and resolvable), new-template-file added, `template-sha.txt` advanced.
- `odin-master doctor` lists missing tools by name (not just "fail").
- `odin-master test-summary build/test-report.json` produces a markdown digest containing total pass/fail and each failing test's name + location.
- `nvim --headless +lua require('odin_master').setup({}) +qall` exits 0 without errors against a fixture init.
- Neovim picker test (manual or via `nvim --headless`): `<leader>od` opens picker; selecting a result jumps to the source.
- `just bootstrap` on a clean Linux container yields a working environment (CI-gated; this is the integration test for Plan 6).
- `:OdinDoctor` in Neovim shows the same content as CLI `odin-master doctor`.

## Out of scope for this plan

- VS Code or JetBrains plugins (Neovim only — spec §1 non-goals).
- Web UI consumer (out of scope per spec §15).
- Any non-Neovim editor wiring beyond documenting that the OLS configs work universally.
- Persistent Neovim helper for Windows cold-start mitigation (deferred per spec §14).

## Estimated decomposition when fully detailed

~16 tasks, ordered: setup_machine.py + tests (with mocked GPU/Ollama probes) → real install.sh + Linux container test → real install.ps1 (smaller; Windows test deferred to Plan 7) → template_update.py + tests with fixture scaffolded project → doctor.py + tests → test_summary.py + tests → format/check wrappers + tests → wire `just bootstrap` and friends → install pre-commit hook in bootstrap + test it blocks bad commit → Neovim plugin: lsp.lua + headless test → format.lua + headless test → dap.lua + manual verify → pickers.lua + headless test against `odin-search --json` mock → health.lua + `:checkhealth` test → write real docs/getting-started.md, daily-use.md, multi-machine.md → integration: clean container → `just bootstrap` → `just doctor` all green.
