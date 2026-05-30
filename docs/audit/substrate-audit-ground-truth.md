# Substrate Doc-vs-Reality Audit — Raw Ground Truth

> Verbatim ground truth gathered by the audit subagents (tools, structure, spec/CLAUDE.md,
> core skill, domain skills). Preserved unedited as the evidentiary base for
> `substrate-doc-gap-report.md`. Date: 2026-05-29.

---

## Tools audit

I have everything I need. All five target files are fully read, plus I've confirmed: `templates/page-types/` and `templates/domain/` exist; all five domains have `compiled/INDEX.md` and `compiled/log.md`; the justfile recipes; and the quality-checks.yaml structure (top-level `structural`/`semantic` mapping). One key finding worth one more check: the `INDEX.md freshness` claim in the doctor docstring versus what the code actually does. I've already read the full file and confirmed there is no INDEX.md check at all. Report follows.

### Substrate Tooling Audit — `odin_master`

Five tools audited (all under `C:\Users\user1\dev\odin_master\tools\substrate\`). Two additional tools exist but were out of scope: `fetch.py` (the Ingest/`substrate-update` engine) and `verify_all.py`.

`REPO` in every tool = `Path(__file__).resolve().parents[2]` (the repo root). `DOMAINS_DIR = REPO/content/domains`.

#### 1. `doctor.py` (278 lines)

**(a) Invocation**
- `python tools/substrate/doctor.py [--provenance-check] [--domain D] [--json]`
- `--provenance-check` (flag): re-hash source files and flag SHA drift.
- `--domain D` (default None): restrict to one domain; otherwise iterates all subdirs of `content/domains/`.
- `--json` (flag): emit machine-readable report instead of human PASS/FAIL lines.
- Exit code: `0` if all checks pass, `1` otherwise.
- just recipes: `just doctor [domain]` and `just doctor-provenance [domain]`.

**(b) Purpose** Mechanical, no-LLM health check. Walks every compiled and vault `.md` page per domain and emits per-check PASS/FAIL.

**(c) Rules/invariants enforced (grounded in code):**
- Compiled pages (`check_compiled_page`, iterating `compiled/from-ingest/` and `compiled/from-query/`):
  - Frontmatter must parse and contain all of `REQUIRED_FRONTMATTER_COMPILED` = {title, type, domain, tier, provenance, source_ids, compiled_at, compiled_by, status} (line 27-30).
  - `provenance` ∈ {from-ingest, from-query} (line 117).
  - **Provenance/folder parity**: `fm["provenance"]` must equal the folder the file lives under (line 120-126). This is the parity check CLAUDE.md describes — it IS implemented.
  - `type` ∈ {article, paper, code-symbol, blog-post, concept, summary} (line 127).
  - Every `source_ids[].path` must resolve to an existing file under REPO (line 131-139).
  - **Sources-section parity**: every `source_ids[].path` must appear in the body as `[[path]]` or `[[path#...]]` (line 142-149).
- Vault pages (`check_vault_page`): validated only if frontmatter parses AND contains a `frozen` key. If `frozen` is absent it's treated as migrated/hand-curated content and **skipped** (line 161-163). When checked: must contain `REQUIRED_FRONTMATTER_VAULT` = {title, type, domain, frozen, promoted_from, promoted_at, original_provenance, original_source_ids} and `frozen is True` (strict identity, line 172).
- Wikilinks (`check_wikilinks`, run on both compiled and vault pages): every `[[target]]` (with `#anchor` stripped) must resolve to an existing path under REPO; `{{...}}` template tokens are skipped (line 184).
- `log.md` (`check_log`): must exist; every line starting with `## ` must match `^## \[\d{4}-\d{2}-\d{2}\] [a-z\-]+ \| `.
- `--provenance-check` only: re-hash each source and compare to `source_ids[].sha256`; flag drift.

**(d) Notable behaviors / latent issues:**
- **Short-circuit reporting**: every `check_*` function `return`s on the *first* failure for a page. So a page with multiple problems reports only one, and `check_compiled_page`/`provenance_check` stop early — but each *page* is still its own loop iteration, so the bug is per-page, not global.
- **`provenance_check` returns on the first drift across the whole domain** (line 233) — one drifted source masks all others in the same domain.
- A clean domain with zero compiled/vault pages still passes only via the `log.md` check; there is no "domain non-empty" assertion.
- `--domain` pointing at a nonexistent domain → one FAIL check "domain: D / directory missing".
- `TEMPLATES_DIR` (line 23) is **defined but never used** — dead constant. doctor does not validate pages against the page-type templates.

**(e) Paths/configs referenced & existence:**
- `content/domains/` — exists; 5 domains (engines, graphics, odin, papers, sdl3).
- `compiled/from-ingest`, `compiled/from-query`, `compiled/log.md` — all exist for all 5 domains.
- `vault/` — optional (guarded by `.exists()`).
- `templates/page-types/` — exists but **unreferenced by code**.
- `source_ids[].path` and `[].sha256` are expected dict keys; a malformed `source_ids` entry (e.g. a bare string) would raise `TypeError`/`KeyError` rather than producing a clean FAIL — no defensive handling.

**CLAUDE.md claim check:**
- "provenance parity" — **IMPLEMENTED** (line 120-126).
- "validator-at-compile-time" — **NOT in doctor**; doctor is a post-hoc linter. There is no Compile tool in this repo at all (Compile is an LLM skill workflow, not a Python tool). doctor enforces the *output* invariants but does not run "at compile time."
- **"INDEX.md freshness" — NOT IMPLEMENTED.** The module docstring (line 5) claims doctor "Validates ... INDEX.md freshness," but there is no INDEX.md check anywhere in the code. doctor never reads, stats, or regenerates `INDEX.md`. This is a docstring/behavior mismatch.
- "INDEX.md is regenerated every Compile" (CLAUDE.md) — **no tool regenerates INDEX.md.** Only `promote.py` does an in-place string replace on it (see below). Regeneration, if it happens, is the LLM skill's responsibility, not these tools'.

#### 2. `promote.py` (160 lines)

**(a) Invocation**
- `python tools/substrate/promote.py <path> [--note NOTE] [--dry-run]`
- `<path>` (positional, required): compiled page to promote; relative paths are resolved against REPO (line 153-155).
- `--note` (default None): becomes `blessed_because` in vault frontmatter.
- `--dry-run`: print intended create/delete + new frontmatter, change nothing.
- just recipe: `just substrate-promote <path>` (note: the recipe does **not** forward `--note`/`--dry-run`).
- Exit `0` on success, `1` on any validation failure.

**(b) Purpose** Implements `substrate-promote`: moves a compiled page into `vault/<type>/`, rewriting frontmatter to the vault schema, updating cross-links and INDEX.md, and appending a log entry.

**(c) Rules/invariants enforced:**
- Path must be a file (line 50), inside the repo (line 54-57), under a `compiled/` dir (line 59), and specifically under `from-ingest/` or `from-query/` (line 69-71).
- **Refuses to promote unless doctor passes** for the file's whole domain: runs `doctor.py --domain D --json` as a subprocess and checks `returncode == 0` (line 38-46, 73-76). This is the "doctor gate."
- Rewrites frontmatter to exactly: title, type, domain, frozen=True, promoted_from, promoted_at (UTC isoformat), original_compiled_at, original_provenance, original_source_ids (+ optional blessed_because). Original `source_ids` is preserved as `original_source_ids` (line 86-98).

**(d) Notable behaviors:**
- Destination = `content/domains/<fm.domain>/vault/<fm.type>/<filename>`. Uses `fm["domain"]` from frontmatter, not the path — a page whose frontmatter `domain` disagrees with its path would land in a different domain's vault (though doctor would normally have caught nothing here since doctor doesn't cross-check domain vs path either).
- Side effects on real run (line 109-139): creates vault file, **deletes** the compiled source (`compiled_path.unlink()`), then string-replaces the old repo-relative link with the new one across all remaining `from-ingest`/`from-query` `.md` files, then in `compiled/INDEX.md` (best-effort, guarded by `.exists()`), then appends `## [YYYY-MM-DD] promote | <old> → vault/` to `log.md`.
- Link rewriting is naive `str.replace` of the repo-relative path string — could over-match if one path is a prefix of another (e.g. `.../foo` vs `.../foo-bar`).
- INDEX.md update is explicitly "best-effort: replaces link in place; next Compile rewrites it cleanly" (line 125) — confirming the tool does **not** regenerate INDEX.md, only patches a link.
- `--dry-run` does NOT run doctor before the doctor gate — actually it does: the doctor gate (line 73) executes before the `if dry_run` branch (line 102), so `--dry-run` still fails if doctor fails.

**(e) Paths/configs referenced:** `tools/substrate/doctor.py` (exists), `compiled/INDEX.md` (exists for all domains), `compiled/log.md` (exists). `log.md` append assumes it already exists (`log_path.read_text()` line 136 — would `FileNotFoundError` if missing; but it always exists here).

**CLAUDE.md claim check:** "Only changes via substrate-promote" for vault — promote is the only tool that writes to `vault/`. Confirmed: `domain-scaffold.py` writes a `.gitkeep` placeholder into a *new* domain's vault via template copy, but never to existing domains.

#### 3. `test.py` (116 lines)

**(a) Invocation**
- `python tools/substrate/test.py [--structural] [--semantic] [--domain D]`
- Neither flag → runs **both** blocks (`do_structural = args.structural or not args.semantic`; `do_semantic = args.semantic or not args.structural`, line 78-79).
- `--structural` only / `--semantic` only mutually narrow.
- `--domain D` filters both blocks.
- just recipe: `just substrate-test [domain]` (forwards only `--domain`; cannot select structural/semantic from just).
- Exit `0`/`1` on overall pass/fail.

**(b) Purpose** Substrate regression harness. Structural block delegates to doctor; semantic block runs gold queries through the live `claude` CLI and checks citations.

**(c) Rules/invariants:**
- Structural (`run_structural`): runs `doctor.py --json [--domain D]`, parses stdout JSON, passes iff `data["passed"]` is truthy. If stdout isn't valid JSON → FAIL with diagnostic.
- Semantic (`run_semantic`): for each `quality-checks.yaml` entry, builds a prompt instructing use of the `<domain>` skill and `[[source/...]]` citations, then runs `claude -p <prompt>` (120s timeout). Extracts cited ids via regex `\[\[source/([^\]\#]+)`. Passes an entry iff any required id is a **substring** of any cited path (line 64). FileNotFoundError → "claude CLI not found"; TimeoutExpired → "timeout".

**(d) Notable behaviors:**
- Semantic block hard-depends on a `claude` binary on PATH and on real model calls — non-deterministic, slow, and effectively a no-op/fail in CI without the CLI.
- Substring matching is loose: required id `odin-core` matches any cited path containing that fragment.
- YAML shape handling (line 100): accepts either a top-level list, or a mapping with a `semantic:` key. Actual `quality-checks.yaml` is the mapping form → `data.get("semantic", [])` is used; the `structural:` list in the YAML is **ignored by the code** (structural is hardwired to run doctor; the YAML's `structural:` entries are documentation only).

**(e) Paths/configs referenced:**
- `content/quality-checks.yaml` — exists (2416 bytes). Contains `structural:` (4 descriptive strings, unused by code) and `semantic:` (15 odin gold queries). All semantic entries are `domain: odin`; other domains have no gold queries.
- `tools/substrate/doctor.py` — exists.
- `claude` CLI — external dependency, presence not guaranteed.

**CLAUDE.md claim check:** "two-outputs-per-task rule" — test.py's prompt *mentions* the two-outputs discipline as instruction text to the model, but the tool itself does **not** verify that a wiki page was created in `compiled/from-query/`. It only checks citations in the chat answer. The two-outputs rule is **not mechanically enforced by any tool** (not by doctor, not by test).

#### 4. `domain-scaffold.py` (126 lines)

**(a) Invocation**
- `python tools/substrate/domain-scaffold.py new domain <name>`
- Argparse requires subcommand `new`, then positional `kind` constrained to `choices=["domain"]`, then `name`. Any other shape errors out.
- just recipe: `just new-domain <name>`.

**(b) Purpose** Scaffold a new empty-shell domain: copy template tree, write a stub domain skill, append a commented manifest hint.

**(c) Rules/invariants:**
- Refuses if `content/domains/<name>` already exists (line 32).
- Refuses if `templates/domain/` is missing (line 35).

**(d) Notable behaviors:**
- Copies `templates/domain/` recursively into `content/domains/<name>/`, stripping a trailing `.template` from filenames (line 44-46), and running `render()` token substitution (`{{domain}}`, `{{scaffold-date}}`) on `.md`/`.template` files (line 52-54). Non-text files are `shutil.copy2`'d.
- Writes `.claude/skills/<name>/SKILL.md` with a generated empty-shell skill (line 61-84).
- Appends a **commented** example manifest block to `content/manifest.yaml` (line 87-98), guarded by `.exists()`.
- The generated skill text and printed "Next steps" tell the user to run `odin-master update --domain <name>` — that command form doesn't exist; the real recipe is `just substrate-update <name>`. This is stale guidance baked into the generator.

**(e) Paths/configs referenced & existence:**
- `templates/domain/` — **exists**, contains `source/` (raw/tier1-3 + notes `.gitkeep`s, `contradictions.md`, `README.md.template`), `compiled/` (from-ingest/from-query `.gitkeep`s, `INDEX.md`, `log.md`), and `vault/.gitkeep`. So a scaffolded domain gets a doctor-valid skeleton (INDEX.md + log.md present).
- `.claude/skills/` — assumed to exist (created via `mkdir(parents=True)` on the subdir, so fine).
- `content/manifest.yaml` — exists (8121 bytes).
- `.gitkeep` files have no suffix → fall to the `shutil.copy2` branch (line 55-56), copied verbatim. Fine.

#### 5. `search.py` (76 lines)

**(a) Invocation**
- `python tools/substrate/search.py [query...] [--bm25] [--limit/-l N]` plus arbitrary passthrough args.
- `query` = `nargs="*"`, joined with spaces.
- `--bm25`: use `qmd search` (BM25-only) instead of default `qmd query` (hybrid).
- `--limit/-l` (default 10) → forwarded as `--limit N`.
- `parse_known_args` (line 54): unrecognized args (`extra`) are appended raw to the qmd command.
- just recipe: `just substrate-search "<query>" [args]`.
- Exit code = qmd subprocess returncode (or `sys.exit(2)` if qmd not found).

**(b) Purpose** Thin wrapper forwarding to the `qmd` search backend, with Windows-specific launch handling.

**(c) Rules/invariants:** None substantive — it's a launcher. The only "rule" is backend resolution order.

**(d) Notable behaviors:**
- `find_qmd()`: on Windows (`os.name == "nt"`), if `QMD_JS_WIN` exists, invoke `node <qmd.js>` directly (line 34-36) — deliberately bypassing the npm `/bin/sh` shim that fails from cmd.exe (matches CLAUDE.md). Otherwise `shutil.which("qmd")`. If neither found → error to stderr + `sys.exit(2)`.
- Subprocess runs with `cwd=REPO` (line 72), so qmd resolves its collection/index relative to the repo root.
- On Windows + hybrid mode, if `QMD_LLAMA_GPU` is unset, it's forced to `vulkan` (line 68-70) to avoid qmd's CUDA-auto → CPU fallback. Overridable by env.

**(e) Paths/configs/binaries referenced & existence:**
- `QMD_JS_WIN = ~/AppData/Roaming/npm/node_modules/@tobilu/qmd/dist/cli/qmd.js` — existence **not verified** by this audit; the code itself guards with `.exists()` and falls back, so absence is handled gracefully (error + exit 2 if no qmd anywhere).
- `node` — resolved via `shutil.which("node") or "node"`.
- `qmd` global install — external, may or may not be present. No index/collection is created by this tool; that's a manual `qmd collection add` step (per docstring).

#### Cross-cutting findings (tools)

1. **No Compile/Ingest tool in this set.** "Compile" and the validator-at-compile / INDEX-regeneration / two-outputs behaviors described in CLAUDE.md are LLM-skill workflows (`.claude/skills/knowledge-substrate-core/SKILL.md`), **not** Python tools. The Python layer is: lint (doctor), promote, regression-test, scaffold, search — plus `fetch.py` for Ingest. The CLAUDE.md notation "odin-master <verb>" maps to `just <recipe>`; there is no `odin-master` binary (consistent with CLAUDE.md's own note).
2. **doctor docstring overstates capabilities.** It claims to validate "INDEX.md freshness" — **the code contains no INDEX.md check whatsoever.** This is the single clearest spec/code drift.
3. **INDEX.md regeneration is not done by any audited tool.** promote.py only string-patches a link in INDEX.md in place and explicitly defers clean regeneration to "next Compile" (the LLM). doctor never touches it. So the CLAUDE.md "INDEX.md is regenerated every Compile / mandatory" invariant is enforced only by skill-workflow discipline, with zero mechanical backstop in these tools.
4. **provenance/folder parity IS mechanically enforced** (doctor) and **gated at promote** (promote runs doctor). This is the most rigorously implemented invariant.
5. **two-outputs rule is not mechanically enforced** by doctor or test; test.py only injects it as prompt text.
6. **Path/config existence:** every hard path these five tools reference exists in the repo — `templates/page-types/` (6 templates), `templates/domain/` (full skeleton), `content/manifest.yaml`, `content/quality-checks.yaml`, all five domains' `compiled/INDEX.md` + `compiled/log.md`. The only nonexistent references are *string instructions inside generated output* (`odin-master update --domain ...` printed by domain-scaffold.py — should be `just substrate-update`) and the unused `TEMPLATES_DIR` constant in doctor.py. External binaries (`claude`, `qmd`, `node`) are runtime dependencies not vendored in-repo.

Relevant files (absolute):
- `C:\Users\user1\dev\odin_master\tools\substrate\doctor.py`
- `C:\Users\user1\dev\odin_master\tools\substrate\promote.py`
- `C:\Users\user1\dev\odin_master\tools\substrate\test.py`
- `C:\Users\user1\dev\odin_master\tools\substrate\domain-scaffold.py`
- `C:\Users\user1\dev\odin_master\tools\substrate\search.py`
- `C:\Users\user1\dev\odin_master\justfile`
- `C:\Users\user1\dev\odin_master\content\quality-checks.yaml`
- `C:\Users\user1\dev\odin_master\templates\` (page-types/ and domain/)
- Out-of-scope but present: `C:\Users\user1\dev\odin_master\tools\substrate\fetch.py`, `verify_all.py`

---

## Structure audit

I have all the data needed. Note the `comp=2` in one script counts only `INDEX.md` + `log.md` (the two `.gitkeep` files in from-ingest/from-query are excluded by `! -name .gitkeep`); every domain's `compiled/from-ingest/` and `from-query/` hold only `.gitkeep` — zero real compiled pages.

### odin_master — Actual Filesystem Inventory

#### 1. justfile
**EXISTS** at repo root: `C:\Users\user1\dev\odin_master\justfile` (also several non-substrate copies under `content/domains/odin/templates/{game,cli,lib}/`, `build/throwaway*/`, `lab/`).
Root recipe names: `default`, `bootstrap`, `bootstrap-lite`, `check-odin-version`, `update-odin`, `build`, `run`, `test`, `check`, `clean`, `format`, `bench`, `profile-run`, `verify`, `verify-all`, `tracy-build`, `imgui-build`, `asm`, `asm-file`, `debug`, `debug-dir`, `raddbg-install`, `lldb-fixup`, `raddbg`, `raddbg-dir`, `lab`, `lab-build`, `lab-clean`, `doctor`, `doctor-provenance`, `substrate-promote`, `substrate-test`, `substrate-update`, `substrate-fetch-id`, `substrate-refetch-id`, `new-domain`, `substrate-search`.
Note: justfile dispatches to `python tools/substrate/<tool>.py` — matches CLAUDE.md.

#### 2. templates/
**EXISTS** at `C:\Users\user1\dev\odin_master\templates`. Full recursive contents:
- `templates/page-types/` — `article.template.md`, `blog-post.template.md`, `code-symbol.template.md`, `concept.template.md`, `paper.template.md`, `summary.template.md`
- `templates/domain/source/` — `contradictions.md`, `README.md.template`; `raw/tier1/.gitkeep`, `raw/tier2/.gitkeep`, `raw/tier3/.gitkeep`; `notes/.gitkeep`
- `templates/domain/compiled/` — `INDEX.md`, `log.md`; `from-ingest/.gitkeep`, `from-query/.gitkeep`
- `templates/domain/vault/.gitkeep`

**`templates/page-types/*.template.md` DO exist** (6 files, listed above).

#### 3. content/manifest.yaml
Substrate corpus manifest (data-only; header notes the v1 update-fetcher pipeline is deferred, plus a DO-NOT-INDEX list). 16 source entries with `id/tier/domain/fetcher/destination/processor/last_updated`.
**Declared domains (per `domain:` field): odin, graphics.** (No manifest entries reference papers, sdl3, or engines.)
- odin: `odin-lang-org`, `odin-pkg-docs`, `odin-overview`, `odin-core`, `odin-vendor` (T1), `karl-zylinski-blog`, `gingerbill-blog`, `jakubtomsu-blog` (T2), `odin-examples` (T3)
- graphics: `tinyrenderer`, `vkguide-dev`, `jonathanfischer-sdl-gpu`, `matthias-research-tenminutephysics` (T1), `sebastianaaltonen-blog`, `iquilezles-articles`, `alextardif-bindless`, `jorenjoestar-bindless`, `bartwronski-articles`, `aras-p-blog` (T2)

#### 4. content/quality-checks.yaml
Substrate regression-test spec, run via `just substrate-test`. Two sections:
- **structural** (4 mechanical checks via doctor): doctor passes all domains; `--provenance-check` passes populated domains; every compiled page has provenance frontmatter under matching folder; Sources section matches frontmatter source_ids.
- **semantic** (15 query cases, all `domain: odin`): each has a `query` plus `must_include_source_ids_in_top_5` (e.g. "how do I read a file in Odin" → odin-lang-org, odin-overview; "hot reload pattern game" → karl-zylinski-blog). Asserts the relevant skill's answer cites required source_ids.

#### 5. Per-domain three-tier structure (`content/domains/<d>/`)
All 5 domains have **source/, compiled/, vault/** present, plus both **compiled/from-ingest/** and **compiled/from-query/** (each containing only `.gitkeep` — zero real compiled pages anywhere). Every domain has `compiled/INDEX.md`, `compiled/log.md`, `source/README.md`, `source/contradictions.md`.

| Domain | source files (excl .git) | from-ingest real | from-query real | vault files | Status |
|---|---|---|---|---|---|
| **odin** | 655 | 0 | 0 | 96 | **Populated** (raw tier1/2/3, incl. cloned odin-examples git repo; vault lessons + studies). Also has extra `odin/templates/`. |
| **graphics** | 152 | 0 | 0 | 36 | **Populated** (raw tier1 tinyrenderer/vkguide/jonathanfischer/tenminutephysics, tier2 blogs; vault lessons 00–19) |
| **engines** | 6 | 0 | 0 | 1 | **Empty shell** (only README/contradictions/gitkeeps) |
| **papers** | 6 | 0 | 0 | 1 | **Empty shell**; uses different tier names: `tier1-peer-reviewed`, `tier2-arxiv`, `tier3-blog-summary` |
| **sdl3** | 6 | 0 | 0 | 1 | **Empty shell** |

odin/graphics/engines/sdl3 use `raw/{tier1-authoritative,tier2-curated,tier3-community}`; papers uses the peer-reviewed/arxiv/blog-summary tier names above.

#### 6. package.json
**No `package.json` exists anywhere in the project** (only inside `.venv/Lib/site-packages/` third-party Python deps). There is therefore **no `@tobilu/qmd` reference as a dependency** — qmd is expected to be installed globally (`npm install -g @tobilu/qmd`) per CLAUDE.md, not vendored. (Project is Python-based: `pyproject.toml` present, no Node manifest.)

#### 7. agents/ dir
**Does NOT exist.** No top-level `agents/` directory.

#### 8. log.md / INDEX.md under content/domains
**All 5 domains have both.** Every `content/domains/<d>/compiled/` contains `INDEX.md` and `log.md`:
- odin, graphics, engines, papers, sdl3 → each has `compiled/INDEX.md` + `compiled/log.md`.
(odin's INDEX.md still reads "Last regenerated: (not yet compiled)" with no pages listed — consistent with zero compiled pages.)

#### 9. Other notable findings
- **NO duplicate skill tree.** `.claude/skills/domains/<d>/` does **not** exist. Skills live flat at `.claude/skills/{odin,papers,sdl3,engines,graphics,knowledge-substrate-core}/SKILL.md`. Extra: `.claude/skills/odin-workspace/` (eval/timing artifacts: `iteration-1/eval-arena-allocator/{no_skill,with_skill}/...`), and `.claude/skills/odin/references/`.
- **.obsidian/** exists at root (untracked): `app.json`, `appearance.json`, `core-plugins.json`, `workspace.json`.
- **Stray temp/junk files at repo root** (literal backslash-flattened Windows temp paths written as filenames):
  - `C:Usersuser1AppDataLocalTempzed_keymap_meta.json`, `...zed_vscode_keymap.json`, `...zed_vscode_keymap2.json`
  - `Usersuser1AppDataLocalTempzed-default-windows.json`, `...zed-vscode.json`
  - `Usersuser1devodin_master.zed-default-windows.json`, `...zed-vscode.json`
  - `bash.exe.stackdump` (root; another copy at `tools/runners/zrun/bash.exe.stackdump`) — corroborates the "shell is flaky" warning.
- Root also has: `CLAUDE.md`, `ENGINE.md`, `LEARNING.md`, `ONBOARDING.md`, `README.md`, `my_vim_setup.md`, `odinfmt.json`, `ols.json`, `pyproject.toml`, and dirs `bench/ build/ content/ docs/ lab/ lessons/ profiles/ scratch/ templates/ tests/ tools/ .claude/ .venv/ .zed/ .obsidian/ .odin-master/ .pytest_cache/`.
- **`.odin-master/`** directory exists at root (legacy/state dir; no CLI binary — matches CLAUDE.md note that there is no odin-master binary in v1).
- Substrate tooling confirmed present at `tools/substrate/` (referenced by justfile: doctor.py, promote.py, test.py, fetch.py, search.py, domain-scaffold.py, verify_all.py).
- odin domain has an extra non-standard tier dir `content/domains/odin/templates/` (game/cli/lib project scaffolds) alongside the standard source/compiled/vault.

---

## Spec + CLAUDE.md analysis

I have both files fully read. Here is the analysis.

### 1. Intended substrate design (per spec)

`odin_master` is being redesigned from an Odin-specific reference tool into a **multi-domain personal technical-knowledge substrate**, built on Karpathy's "LLM Wiki" pattern plus added rigor (tiers, provenance, validators). It is solo personal tooling — markdown templates, skill bodies, and ~4 small Python scripts — not a code base.

Core model is **build-system-like, not living-wiki**: immutable upstream `source/` compiles to regenerable `compiled/` artifacts; human-blessed snapshots are frozen in `vault/`. It is explicitly **category 1** (lookup-and-synthesis over the external technical world), never **category 2** (a model of the user's understanding); a category-2 system is a separate parallel project. The closest category-2 trace it offers is the verbatim question history in `log.md`.

Five domains scaffolded: `odin` populated; `papers`, `sdl3`, `engines`, `graphics` are empty shells. Each domain owns its own source/compiled/vault tree; cross-domain wikilinks allowed. The schema is split across three locations (CLAUDE.md, core skill, per-domain skills). Eight workflows/tools: Update, Ingest, Compile, Query, Lint (LLM/skill or shell) plus Promote, Doctor, Test (pure shell). Validation has three layers: mechanical (`doctor`), regression gold-set (`test` via `quality-checks.yaml`), and a one-time 14-step end-to-end smoke test.

### 2. Key concrete design decisions

- **Three-tier storage**: `source/` (immutable, upstream + user-maintained), `compiled/` (LLM-owned, idempotently regenerable), `vault/` (frozen, promote-only, one-way). Prime directive: LLM never writes `source/` or `vault/`.
- **Provenance split at frontmatter AND folder level**: `provenance: from-ingest | from-query`, with matching `compiled/from-ingest/` vs `compiled/from-query/` folders. `doctor` enforces parity.
- **Per-source-file SHA-256 provenance hashing** in `source_ids:`; `doctor --provenance-check` detects drift ("page may now be lying"). Vault preserves `original_source_ids:`/`original_provenance:` but is exempt (frozen).
- **Validator-at-compile-time**: rejects pages with missing required frontmatter (incl. `provenance:`), bad provenance value, non-existent `source_ids:` path, missing/empty required body section, empty/over-cap TLDR, unresolved body wikilink, or a `Sources` section not listing every `source_ids:` entry. Reject → retry.
- **Two-outputs-per-task rule**: non-trivial queries produce answer (chat) + page in `compiled/from-query/` + log entry; trivial queries skip both page and log. Default to writing when uncertain.
- **INDEX.md regenerated every Compile** (mandatory; grouped by provenance; load-bearing navigator).
- **Six page-type templates**, each with required body sections; `Sources` always last.
- **Promote** is one-file-at-a-time, rewrites frontmatter to frozen, updates INDEX, and rewrites inbound links to point at `vault/`.
- **Schema split** across CLAUDE.md / core skill / per-domain skills.
- **qmd as search backend, active in v1** (deviation from spec body's progression framing — see §4); INDEX.md remains primary navigator, qmd is fallback.
- **Independent reviewer + subagent-parallel execution** for implementation; "spec is the contract."
- **Reverted decision**: `odinfmt.json`/`ols.json` kept at repo root (the "domain owns its config" idea was reverted post-execution — per migration table).

### 3. CLAUDE.md concrete claims (tagged) — see full enumeration in source agent output

(Identity/framing, three-tier storage, provenance, two-outputs, validator, INDEX.md, log.md, wikilink convention, vault subfolder convention, tooling map, commands/CLI, git policy, search/qmd, scope v1 — all enumerated by the spec/CLAUDE.md agent. Key items reproduced in the gap report.)

### 4. Disagreements / aspirational-vs-current gaps (from spec/CLAUDE.md agent)

- **`odin-master` CLI binary**: SPEC writes commands as `odin-master update`/`doctor`/`promote`/`test`/`new domain` and shows `justfile` recipes literally calling `odin-master ...`. CLAUDE.md **corrects this**: there is no `odin-master` binary in v1; it's `just <verb>` / `python tools/substrate/<verb>.py`. CLAUDE.md explicitly flags the spec's notation as shorthand. (CLAUDE.md is authoritative.)
- **qmd timing — clearest disagreement**: The spec's deviations section says "INDEX.md at v1, qmd when scale demands it… Deferral is about scale." But the spec's "qmd (active in v1)" section says it is "Installed and wired in v1." CLAUDE.md resolves: qmd is **active in v1**. Spec is internally inconsistent. (The MEMORY.md entry "defer semantic search" reflects the older defer stance and is now stale relative to CLAUDE.md.)
- **`promote` command name**: SPEC uses `odin-master promote`; CLAUDE.md uses **`substrate-promote`** (the `just` recipe name). Same tool, naming-surface drift.
- **Schema-split scope of CLAUDE.md**: CLAUDE.md covers the spec's enumerated items plus wikilink convention, vault subfolder convention, tooling map, and qmd/search. Additive, not contradictory.
- **`odinfmt.json` / `ols.json` location**: SPEC migration table proposed moving configs into `content/domains/odin/config/` but contains an in-table note that this was **reverted** (configs kept at repo root). The spec's directory-layout tree still shows `content/domains/odin/config/...`, so the spec is internally inconsistent; the migration-table note is the corrected truth. CLAUDE.md is silent on this.

**Spec items explicitly marked aspirational / future (not in v1; CLAUDE.md does not claim them):** Obsidian niceties (Web Clipper, Marp, matplotlib, Dataview, graph view), image handling, batch ingest, wiki-as-living-document mode, multi-agent coordination, decay/lifecycle of compiled pages, executable validation layer, true category-2 system; `qmd mcp`/`--http` MCP mode flagged as future work. Spec **Status: "Approved (brainstorming phase, post-amendment)"** with implementation plan listed as "(next)".

**File integrity:** spec file is UTF-8 with em-dashes; only the raw `cat`+`xxd` rendering mangled the glyph — content intact (confirmed via Read).

---

## Core skill (knowledge-substrate-core SKILL.md) analysis

### File availability
- **READ:** `C:\Users\user1\dev\odin_master\.claude\skills\knowledge-substrate-core\SKILL.md` (163 lines, full).
- **NOT FOUND:** `.claude/skills/content/SKILL.md` — does not exist (no `content/` subdir under skills).
- **NOT FOUND:** `.claude/skills/README.md` — does not exist.
- Actual skills present: `engines/`, `graphics/`, `knowledge-substrate-core/`, `odin/`, `odin-workspace/`, `papers/`, `sdl3/`.

### Workflow summary
The skill is the authoritative workflow engine for a "knowledge substrate" spanning per-domain folders `content/domains/<d>/`. Per-domain skills (odin, papers, sdl3, engines, graphics) hold tier semantics but route execution here. Each domain has a three-tier store: `source/` (immutable, LLM never writes), `compiled/` (LLM-owned, regenerable, split into `from-ingest/` and `from-query/`), and `vault/` (frozen, only changed by the promote shell tool). It defines four workflows — Ingest, Compile, Query, Lint — plus a compile-time validator, a frontmatter schema, the two-outputs-per-task rule, provenance discipline, and wikilink conventions. Category 1 framing, explicitly not category 2.

### Concrete claims (selected)
- LLM never writes to `source/` or `vault/`; Compile produces only into `compiled/`.
- Promote is a shell tool; only way content moves into `vault/`.
- Compiled output split by provenance; frontmatter `provenance:` must match folder.
- INDEX.md regenerated on every Compile pass; Compile not marked complete without writing INDEX.md.
- Validator-at-compile-time rejects+retries pages with malformed frontmatter, broken citations, missing required sections, or empty TLDRs.
- `log.md` append-only, format `## [YYYY-MM-DD] <action> | <title>`; Query entries record verbatim user question.
- Category 1 in `source/raw/`, `compiled/`, `vault/`; category 2 traces in `source/notes/` + `compiled/log.md`.
- Compiled frontmatter schema: title, type (article|paper|code-symbol|blog-post|concept|summary), domain (odin|papers|sdl3|engines|graphics), tier (1|2|3), provenance (from-ingest|from-query), source_ids (path+sha256), compiled_at, compiled_by, status (draft|stable).
- Vault frontmatter: title, type, domain, frozen:true, promoted_from, promoted_at, original_compiled_at, original_provenance, original_source_ids, blessed_because (optional).
- Validator rejection rules: required FM field missing (incl. provenance); provenance not from-ingest/from-query; folder mismatch; source_ids path missing; required body section missing/empty; TLDR empty/over cap; unresolved [[wikilink]]; Sources section missing a source_ids entry.
- Two-outputs rule: non-trivial → chat answer + page in `compiled/from-query/<type>/` with `provenance: from-query`; trivial skips both wiki + log. Example trivial: signature of `os.read_entire_file`. Non-trivial: how `context.allocator` interacts with hot reload.
- Workflow steps for Ingest/Compile/Query/Lint enumerated (each ends with a `log.md` append). Query step 3: "if INDEX insufficient, shell to qmd". Lint proposes, never auto-fixes.
- What NOT to do: never write source/vault; don't auto-resolve contradictions; don't skip INDEX regen; don't conflate categories; don't add unspecced features; no git commits without authorization; don't use compiled-relative paths in wikilinks.

### Referenced shell commands (verbatim)
- `python tools/substrate/search.py --bm25 "<query>"`
- `python tools/substrate/search.py "<query>"`
- `qmd embed` (prerequisite for hybrid search)
- `doctor --provenance-check`
- qmd (via `search.py`, or "directly via the MCP server if configured")
- `doctor`, Promote (shell tools)

### Notes for the caller
- Domains enumerated by the skill: `odin`, `papers`, `sdl3`, `engines`, `graphics`.
- `.claude/skills/content/SKILL.md` and `.claude/skills/README.md` do not exist.

---

## Domain skills (SKILL.md) audit

### CRITICAL: the `domains/` variant does not exist
The task asked to compare `.claude/skills/<domain>/SKILL.md` vs `.claude/skills/domains/<domain>/SKILL.md`. **There is no `.claude/skills/domains/` directory.** `.claude/skills/domains/engines/SKILL.md` and `.claude/skills/domains/graphics/SKILL.md` do not exist.
- Full set of SKILL.md files is exactly six, all flat: `papers`, `sdl3`, `engines`, `graphics`, `odin`, `knowledge-substrate-core`.
- `.claude/skills/engines/` and `.claude/skills/graphics/` each contain a single `SKILL.md` and no subdirectory.
- So there are **no duplicates and no divergence** — the `domains/` layer is a phantom. Canonical location: `.claude/skills/<domain>/`. The confusion source is the separate `content/domains/<domain>/` content tree referenced inside the skills.

### Per-file reports (the 5 that exist)

**`.claude/skills/odin/SKILL.md`** — Thin per-domain skill for the populated Odin domain; defers workflow to `knowledge-substrate-core`. Page types: code-symbol, concept, summary, blog-post, cross-refs (excludes paper, article). Stdlib at `${ODIN_ROOT}/core/` mirrored under `tier1-authoritative/odin-core/`; vendor mirrored under `tier1-authoritative/odin-vendor/`. References vault content: lesson 18 and `vault/studies/arena-allocator.cited.md`. Names sources Karl Zylinski, gingerBill, jakubtomsu. References no commands directly. (Only substantive/populated domain skill; the canonical reference shape; does NOT use `odin-master update`.)

**`.claude/skills/papers/SKILL.md`** — Empty-shell placeholder. Primary type `paper` (+concept/summary/cross-refs). Notes `arxiv-pdf` fetcher and `pdf-to-markdown` processor "not implemented in v1." Referenced command: `odin-master update --domain papers`.

**`.claude/skills/sdl3/SKILL.md`** — Empty-shell. Types code-symbol/concept/summary/blog-post/cross-refs (incl. sdl3↔graphics). Fetchers html_mirror, local_dir. Boundary: API-agnostic concepts go to graphics. Referenced command: `odin-master update --domain sdl3`.

**`.claude/skills/engines/SKILL.md`** — Empty-shell. Types code-symbol/concept/summary/blog-post. Fetchers git_clone, html_mirror. Boundary: concrete engine behavior here; principles to graphics/papers. Referenced command: `odin-master update --domain engines`.

**`.claude/skills/graphics/SKILL.md`** — Empty-shell. Types concept/summary/blog-post (names Inigo Quilez, Bart Wronski, Aras P), paper, cross-refs (graphics↔sdl3). Fetcher html_mirror. Boundary: SDL3/Vulkan-specific to sdl3. Referenced command: `odin-master update --domain graphics`.

### Cross-cutting observations
- The four empty-shell skills are near-identical sibling templates (intentional, not accidental duplicates).
- All four empty shells reference `odin-master update --domain <d>`, which contradicts CLAUDE.md ("There is no `odin-master` CLI binary in v1"; real invocation `just substrate-update` / `python tools/substrate/...`). Stale shorthand across all four.
- The `odin` skill is the only populated/substantive one and does not use `odin-master update`.

**Bottom line:** `.claude/skills/<domain>/` is the sole, canonical location. `.claude/skills/domains/<domain>/` does not exist — no duplication/identity/divergence. Confusion stems from the unrelated `content/domains/<domain>/` content tree.
