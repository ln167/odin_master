# Stale-references audit (post substrate redesign)

Date: 2026-05-06
Scope: every file referencing artifacts deleted/moved by the 2026-05-04 substrate redesign.
Method: targeted grep + per-file Read; the spec/plan/comprehensive-review files under `docs/superpowers/` are intentionally excluded as historical record (their stale refs are accurate descriptions of past state).

---

## BROKEN — file or recipe no longer works

### B1. `tools/install/install.sh:96`
`./.venv/bin/python -m pip install -e ".[dev]" -e "tools/indexer[test]"` — `tools/indexer/` was deleted. `pip install` will fail.
Fix: drop the `-e "tools/indexer[test]"` arg; just `-e ".[dev]"`.

### B2. `tools/install/install.sh:112`
`./.venv/bin/python -m odin_master.cli doctor` — the `odin_master` Python package was deleted.
Fix: replace with `python tools/substrate/doctor.py` (or `just doctor`).

### B3. `tools/install/install.ps1:106`
Same as B1: `pip install -e ".[dev]" -e "tools/indexer[test]"`.

### B4. `tools/install/install.ps1:127`
Same as B2: `& .\.venv\Scripts\python.exe -m odin_master.cli doctor`.

### B5. `.github/workflows/ci.yml`
Lines 23, 25, 39, 41, 44, 70, 72, 89, 104, 107 reference deleted infra:
- `pip install -e tools/indexer` (multiple)
- `pytest tools/indexer/tests/`
- `working-directory: tools/search` (Rust build/test)
- `odin build tools/odin_lib/instrument` (path moved to `tools/domains/odin/odin_lib/instrument`)
- `odin-master new gametest`, `odin-master doctor`
Fix: rewrite (or delete) the workflow against the substrate tools (`python tools/substrate/{doctor,test}.py`, `tools/domains/odin/odin_lib/...`). Many jobs have no replacement and should be dropped.

### B6. `.github/workflows/cron-nightly.yml:28,30`
`pip install -e tools/indexer` and `odin-master new gametest`.
Fix: same as B5; likely delete this workflow.

### B7. `.github/workflows/docs.yml:18`
`pip install -e tools/indexer`.
Fix: drop the install step or the workflow.

### B8. `tests/test_repo_structure.py` (whole file)
Asserts the deleted layout — every test below is broken: `content/index/` in `.gitignore` (line 39, still asserted), `content/sources/tier{1,2,3}-*` (94–96), `content/wiki/{concepts,summaries}` (97–99), `content/wiki/INDEX.md` (112), `templates/{game,lib,cli}/` at top level (135–139), `tools/odin_lib/{instrument,bench,scratch}/` (146–156), `tools/nvim/.../pickers.lua` (197 — file deleted), `tools/indexer/{pyproject.toml,odin_master/}` (205–213), `tools/search/Cargo.toml` + `src/main.rs` (219–246).
Fix: this file is a Plan-1 artifact, now meaningless. Delete it or replace with substrate-layout assertions.

### B9. `pyproject.toml`
File OK (testpaths is just `["tests"]`, deps include `pyyaml>=6`). However, since `tests/test_repo_structure.py` (the only file in `tests/`) is broken (B8), `pytest` will fail wholesale until that test is removed/rewritten.

### B10. Lesson READMEs — `cd lessons/...` instructions
Every numbered lesson README starts with `cd lessons/<n>-<slug>`, but the lessons live at `content/domains/odin/vault/lessons/<n>-<slug>/`. Files affected (line is the `cd` step):
- `01-hellope/README.md:8`
- `02-types-and-printing/README.md:8`
- `03-procedures-and-multiple-returns/README.md:9`
- `04-strings-and-runes/README.md:9`
- `05-arrays-fixed/README.md:10`
- `06-slices/README.md:10`
- `07-dynamic-arrays/README.md:9`
- `08-context-and-allocators/README.md:11`
- `09-arena-allocator/README.md:10`
- `10-tagged-unions/README.md:10`
- `11-error-handling-or-return/README.md:14` and `:15` (sibling-file path)
- `12-structs-and-soa/README.md:11`
- `13-procedures-as-values/README.md:9`
- `14-parametric-polymorphism/README.md:13`
- `15-foreign-and-bindings/README.md:10`
- `16-when-and-build-flags/README.md:13`
- `17-testing-with-core-testing/README.md:10` and `:56`
- `18-hot-reload-tour/README.md` (last line `Next: lessons/19-...`)
- `19-search-driven-learning/README.md:13`
Plus `Next: lessons/<n>-...` footers in all of the above.
Fix: rewrite paths to `content/domains/odin/vault/lessons/<slug>/`. Since the paths are bare (no leading `content/...`), simplest is to leave them as relative-to-vault — but document that at the top of `lessons/README.md`.

### B11. Lesson READMEs — `odin-search` invocations
Every "see also" block invokes the deleted `odin-search` CLI. Files (count of references):
`00-setup-check` (4), `01-hellope` (1), `02-types-and-printing` (2), `03-...` (2), `04-...` (3), `05-...` (2), `06-slices` (2), `07-...` (2), `08-...` (3), `09-...` (3), `10-...` (3), `11-...` (3), `12-...` (3), `13-...` (3), `14-...` (3), `15-...` (3), `16-...` (3), `17-...` (3), `18-...` (3), `19-search-driven-learning` (entire lesson is built around `odin-search` — title, body, exercises).
Fix: convert to `<leader>oq` / odin-skill query prompts, or strip. Lesson 19 needs a full rewrite.

### B12. `lessons/00-setup-check/README.md:5,15,19,27,34`
Doctor steps reference `odin-search --doctor` and `odin-master doctor` as required environment checks.
Fix: replace with `just doctor odin` or `python tools/substrate/doctor.py`.

### B13. `lessons/19-search-driven-learning/README.md:56`
Cites `content/wiki/concepts/tagged-unions.md:1` as the example output — the wiki was archived.

### B14. `lessons/README.md:18,37`
Index columns describe lessons 00 + 19 in terms of `odin-search`.

### B15. `tools/domains/odin/lessons-check/README.md` (lines 10, 14, 21, 22) and `main.odin` (lines 10, 11)
Usage/help text says `odin run tools/lessons-check`, `odin build tools/lessons-check ...`. The folder moved to `tools/domains/odin/lessons-check/`.
Fix: update paths in both files.

### B16. `.gitignore:39,49–51`
- Line 39: `content/sources/tier3-community/odin-examples/` — path moved to `content/domains/odin/source/raw/tier3-community/odin-examples/`.
- Lines 49–50: `tools/lessons-check/lessons-check{.exe,}` — moved to `tools/domains/odin/lessons-check/`.
- Line 51: `lessons/**/.lessons-check.odin` — `lessons/` is now `content/domains/odin/vault/lessons/`.
Fix: repath all four lines. Also consider removing `content/index/` (line 2) and `content/outputs/` (line 36) ignore entries since those dirs are gone.

### B17. `tools/nvim/lua/odin_master/lsp.lua:9`
`root_markers = { "ols.json", "odinfmt.json", ".git" }` — those configs moved to `content/domains/odin/config/`. OLS will no longer detect the project root by them at the repo root.
Fix: either symlink/copy the configs back to repo root, or update root_markers (probably keep `.git` and add the new locations; OLS needs them adjacent to the source though, so symlinking is the safer call). Worth a user decision rather than a blind edit.

---

## MISLEADING — works but doc lies

### M1. `LEARNING.md:10,18`
Step 4 of the daily loop and the hotkey table both describe `<leader>oq` as if it queries the odin skill. `tools/nvim/lua/odin_master/init.lua:22-28` shows `<leader>oq` is a stub that only emits a "not wired" `vim.notify`.
Fix: either say "stub — see init.lua:22" in LEARNING.md, or wire the keymap.

### M2. `ONBOARDING.md:180,326`
Documents `just substrate-update` as deferred and notes the indexer's deletion. Accurate, but the `update` recipe in `justfile` (if present) should be checked to make sure it actually no-ops cleanly.

### M3. Workflow files (B5–B7) appear functional in `gh actions list` but every job will fail on first run — counts as misleading-to-CI as well as broken.

---

## OUTDATED — references valid, content stale

### O1. `docs/superpowers/plans/INDEX.md`
Lists only the eight 2026-04-19 plans (lines 13–52), all marked `SHIPPED`. Does not mention `2026-05-04-substrate-redesign-plan.md` or `...-comprehensive-review.md` or `...-plan.review.md` even though those files sit beside it in the same dir.
Fix: add a "Substrate redesign (2026-05-04)" row + suggest marking the eight 2026-04-19 plans as SUPERSEDED (see O2).

### O2. `docs/superpowers/plans/2026-04-19-plan-{1..8}-*.md`
All eight reference `tools/indexer/`, `tools/search/`, `odin-search`, `content/wiki/`, `content/index/`, `odin-master <verb>` invocations as their primary deliverables. Per the comprehensive-review and the spec, these are now superseded.
Suggested fix: prepend a one-line `> **SUPERSEDED** by docs/superpowers/plans/2026-05-04-substrate-redesign-plan.md (2026-05-04).` to each.

### O3. `docs/superpowers/specs/2026-04-19-odin-master-template-design.md`
The successor spec at `2026-05-04-substrate-redesign-design.md:5` says "Supersedes (in part)". The original spec has no reciprocal "superseded by" pointer.
Fix: add a frontmatter or top-of-file `> **Superseded (in part) by** [2026-05-04-substrate-redesign-design.md](2026-05-04-substrate-redesign-design.md).`

### O4. `content/_archive/old-wiki-concepts/*.md` — every file's HTML-comment provenance points at `content/sources/...` (12 files: arena-allocator, cache-friendly-programming, custom-allocators, data-oriented-design, designated-initializers, file-i-o, file-reading, odin-overview, parametric-polymorphism, reading-a-file, simplicity, switch-statement, tagged-unions, temporary-allocators, tracking-allocators, zero-initialization).
The dir is `_archive` — by convention frozen — so probably leave it. Note only.

### O5. `content/domains/odin/vault/studies/arena-allocator.cited.md:129,144,145,147,148`
Citations point at `content/wiki/concepts/arena-allocator.md` and `content/sources/tier{1,3}-...`. Both paths moved/deleted.
Fix: repath sources to `content/domains/odin/source/raw/tier{1,3}-...`. Drop the `content/wiki/concepts/arena-allocator.md` citation (file is now in `_archive/`).

### O6. `content/domains/odin/vault/studies/arena-allocator.quick.md`
Clean — no stale path references.

### O7. `tools/git-hooks/pre-commit:7`
Runs `odin check . -vet -strict-style` from repo root. `.odin` files now live under `content/domains/odin/vault/lessons/...`, `content/domains/odin/templates/...`, `playground/`, etc. The check still works (it walks recursively) but may surface more files than before.
Fix: optional. Worth confirming `odin check .` doesn't trip on the templates' `{{name}}` placeholders.

### O8. `tools/nvim/lua/odin_master/format.lua` and `dap.lua`
Both clean. No path references; format.lua just shells out to `odinfmt -stdin`, dap.lua just uses `codelldb`.

---

## COSMETIC

### C1. `content/manifest.yaml`
Every entry has `last_updated: 2026-04-19` (lines 21, 33, 42, 54, 66, 83, 95, 107, 117). Optional bump to today's date to reflect the migration; not required since the source-of-truth files were only moved, not re-fetched.

### C2. `README.md`, `CLAUDE.md`, `pyproject.toml`
Spot-checked clean.

---

## Summary of files needing edits (by severity)

**BROKEN (17):** `tools/install/install.sh`, `tools/install/install.ps1`, `.github/workflows/ci.yml`, `.github/workflows/cron-nightly.yml`, `.github/workflows/docs.yml`, `tests/test_repo_structure.py`, all 20 lesson READMEs under `content/domains/odin/vault/lessons/`, `lessons-check/{README.md,main.odin}`, `.gitignore`, `tools/nvim/lua/odin_master/lsp.lua` (root_markers).

**MISLEADING (1):** `LEARNING.md` (the `<leader>oq` step + hotkey row).

**OUTDATED (4):** `docs/superpowers/plans/INDEX.md`, the eight `2026-04-19-plan-*.md` files (add SUPERSEDED header), `docs/superpowers/specs/2026-04-19-odin-master-template-design.md` (add reciprocal pointer), `content/domains/odin/vault/studies/arena-allocator.cited.md` (repath citations).

**COSMETIC (1):** `content/manifest.yaml` last_updated dates.

Recommendation: fix in this order — `.gitignore` and `lsp.lua` (quick wins), then `LEARNING.md` (user-facing daily flow), then lesson READMEs (large but mostly mechanical sed of `odin-search ...` → `<leader>oq` and `cd lessons/...` → relative-to-vault), then `tests/test_repo_structure.py` (delete or replace), then the install scripts, then CI workflows (largest scope, may want to delete-and-rewrite). Old plan/spec markers are last; they're documentation hygiene.
