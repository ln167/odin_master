# Substrate Redesign — Comprehensive Pre-Execution Review

**Reviewer:** general-purpose, read-only
**Date:** 2026-05-04
**Inputs:** conversation-context, design spec, implementation plan, prior plan-vs-spec review (PASS), memory files

---

## 1. Executive summary

**PROCEED WITH FIXES.** The plan is faithful in spirit to the conversation, the spec, and the memories. The four post-review fixes correctly address what the prior reviewer flagged. However, there are **two real blockers** (justfile recipe collisions, manifest entries that point at archived/old paths) and several IMPORTANT issues (smoke step 9 vault path mismatch with what migration actually produces, doctor's vault frontmatter rules don't match what `promote.py` writes, smoke test refers to `odin-master` CLI that no longer exists, lesson README files are currently dirty in git). These are mechanical fixes, mostly one-line, but execution will hit visible failures without them. No silent Karpathy deviations beyond what the spec already documents. Memory rules are respected.

---

## 2. Findings by category

### A. Conversation-to-spec faithfulness

| # | Item | Severity | Reference | Note / fix |
|---|---|---|---|---|
| A1 | Category-1/Category-2 framing | OK | spec § Category 1 vs 2; CLAUDE.md (T46) | Captured in spec, plan, CLAUDE.md, and core SKILL.md. |
| A2 | Three content categories (user-written / LLM-from-source / LLM-from-query) | OK | spec § Category 1 vs 2 framing, line 38 | `provenance:` field + folder split delivers categories 2 & 3; category 1 (user-written) parked in `source/notes/`. |
| A3 | Verbatim-question logging (Category-2 trace) | OK | spec § Query step 6; SKILL.md T36 | Correctly threaded. |
| A4 | KISS principle, suspicion of trending tools | OK | spec § Goals (line 18); CLAUDE.md T46 | "Stay light. This is solo personal tooling, not a code base." Honored. |
| A5 | v1 intent (Odin + game + graphics) | OK | spec lines 20, 117–118; CLAUDE.md (T46 "Initial scope") | Stated three times; plan respects it. |
| A6 | Studies/lessons "tip-top, untouched" | IMPORTANT | spec line 50; T11–T12 (moves only) | Plan moves them with `Move-Item` (preserves bytes); however, **`git status` shows lessons/06–19/README.md and studies content currently have uncommitted modifications**. If those mods are unintentional drift since "tip-top" was declared, the migration locks in that drift. Suggest user `git diff` those files before T11/T12 run; revert if unwanted. Plan should add a pre-Phase-2 sanity step. |
| A7 | "User doesn't hand-author wiki content" | OK | feedback_llm_authored_content.md; spec lines 62, 92 | Old `content/wiki/` is archived, not migrated to `notes/`. Correct. |
| A8 | "No git commits without authorization" | OK | feedback_no_git_unless_asked.md; plan Critical Execution Rule 1 | Stated front-and-center. |
| A9 | Deferred executable-validation as future-work note | OK | spec § Open questions / future work, line 728 | Present. |
| A10 | Deferred Category-2 system as future-work note | OK | spec § Open questions, line 729 | Present. |
| A11 | qmd is the deferred search backend | OK | spec § qmd; CLAUDE.md "Search" section | Memory `feedback_defer_semantic_search.md` reflects qmd-yes-when-needed; plan honors it. |
| A12 | Two-outputs-per-task softened to non-trivial | OK | spec § Two-outputs rule line 384; SKILL.md T36 | Trivial-query escape stated in spec, SKILL.md, CLAUDE.md, smoke step 7. |

### B. Spec-to-plan faithfulness (post-fix)

| # | Item | Severity | Reference | Note / fix |
|---|---|---|---|---|
| B1 | Phase 7 split (T42 alone, then P7-tools-rest) | OK | plan lines 79–81, 1568–1569 | Both the execution-model table and the Phase 7 narrative now state the split. The race the prior reviewer flagged is resolved. |
| B2 | Vault coexistence note | OK | CLAUDE.md T46 line 2376; doctor.py T42 | `doctor.py` has zero rules about vault subfolder names — it walks vault via `rglob("*.md")` and only checks wikilinks. The note is technically accurate. |
| B3 | T50 update stub | OK | plan T50 lines 2570–2573 | Now an echo-only stub explaining the deferral. No misleading shell-out. |
| B4 | T51 adding-sources update | OK (with caveat) | plan T51 Step 4 lines 2643–2657 | Documents the new `domain:` manifest field. **However**, T51 Step 2 instructs "add `domain: odin` after `id:`" but does not address the fact that `odin-wiki` entry has `source_path: content/wiki/concepts` (which Tasks 2/4 archive away), nor that `odin-overview`'s `source_path: tier1-authoritative/odin-overview` still references the old layout. See finding E5. |
| B5 | Plan task count vs spec target | OK | spec § Subagent execution line 696 (~50–80) | 0 + 68 = 69 tasks. ✅ |

### C. Memory-to-artifact consistency

| # | Item | Severity | Reference | Note / fix |
|---|---|---|---|---|
| C1 | Personal scope, drop "shipping-quality" | OK | feedback_personal_scope.md | Spec, plan, CLAUDE.md use no enterprise framing. |
| C2 | No git/VCS without authorization | OK | feedback_no_git_unless_asked.md; plan Critical Execution Rule 1; CLAUDE.md T46 | Threaded everywhere. |
| C3 | Vector/semantic search via qmd only (deferred) | OK | feedback_defer_semantic_search.md | Spec § qmd; CLAUDE.md "Search". No Ollama, no DIY embeddings proposed. |
| C4 | Multi-domain knowledge substrate, not Odin tool | OK | project_substrate_intent.md | Five-domain scaffold realizes this; Odin is one of N. |
| C5 | LLM authors all wiki content | OK | feedback_llm_authored_content.md | Old wiki archived, not migrated as user content. `source/notes/` is empty by default per spec line 112. |
| C6 | KISS + narrow scope + suspicious of unproven tools | OK | feedback_kiss_and_scope.md | Spec § Goals, CLAUDE.md "Initial scope (v1)". Tooling is markdown + ~4 small Python scripts (~60–150 lines each). No graph DB, no ontology layer. |

### D. Karpathy faithfulness check

| # | Item | Severity | Reference | Note / fix |
|---|---|---|---|---|
| D1 | All deviations listed in spec § Notes on deviations | OK (mostly) | spec lines 731–743 | Listed: three-tier, build-artifact wiki, mandatory two-outputs (with trivial escape), hard validators, tier 1/2/3, provenance split, qmd deferral. |
| D2 | Source-type templates per content type | OK | spec § Page templates per type; plan T29–T34 | Karpathy commenter dkushnikov suggested per-source-type templates — adopted, not silent. |
| D3 | SHA-256 source-hash provenance | OK | spec § Provenance hashing | Karpathy commenter Jwcjwc12; adopted. Listed as additive rigor, not as a "deviation," but it's not a deviation per se — it's strengthening "every claim cites resolvable source." Acceptable. |
| D4 | "Caveats / Common Misconceptions" forced section | OK | templates: article (Caveats/Edge Cases), concept (Common Misconceptions) | Karpathy commenter localwolfpackai. Captured in templates. |
| D5 | Multi-agent failure modes deferred | OK | spec § Open questions line 726 | Acknowledged as future. |
| D6 | INDEX.md scaling concern (mpazik etc.) | OK | spec § qmd | Deferred to qmd graduation. |
| D7 | "Reflect step" (bendetro) | NICE-TO-HAVE | not present | Lint workflow partially covers reflection (orphans, contradictions, gaps). No explicit "what did I learn this week" reflect step. Spec doesn't claim to include it; not a silent deviation. Optional future addition. |

No silent Karpathy deviations found. The deviations are all listed and reasoned about.

### E. Internal consistency

| # | Item | Severity | Reference | Note / fix |
|---|---|---|---|---|
| E1 | **Justfile recipe collisions** | **BLOCKER** | existing `justfile` lines 13, 29; plan T50 lines 2575–2589 | The current `justfile` already has `doctor:` (line 13, calls `odin-master doctor`) and `test profile="debug":` (line 29, calls `odin test`). T50 adds `doctor domain="":` and (already renamed) `substrate-test domain="":`. The new `doctor domain="":` will **replace or conflict with** the existing `doctor:` recipe — `just` can't have two recipes with the same name. **Fix:** rename to `substrate-doctor` (consistent with `substrate-test`) or delete the existing `doctor:` recipe (since it shells out to `odin-master doctor`, which is the same target). Same risk applies to the existing `test profile="debug":` — though plan already chose `substrate-test` to dodge that. T50 must explicitly delete or rename the existing `doctor:`. |
| E2 | **Manifest `odin-wiki` entry points at archived path** | **BLOCKER** | `content/manifest.yaml` lines 62–67; plan T2 archives `content/wiki/concepts/` | The `odin-wiki` manifest entry's `source_path: content/wiki/concepts` will be a dangling reference after T2 archives that directory. The plan T51 instructs adding `domain:` and updating destinations but doesn't tell the executor to **remove** or **redirect** this entry. **Fix:** T51 should explicitly handle `odin-wiki`: either delete the entry (since the wiki was archived, not preserved) or repoint to `content/_archive/old-wiki-concepts/` if the user wants it ingested as historical. |
| E3 | **Manifest `odin-overview` `source_path: tier1-authoritative/odin-overview` is now wrong** | IMPORTANT | manifest line 36; T10 moves `content/sources/tier1-*` to `content/domains/odin/source/raw/tier1-*` | Even with `domain: odin` added, the `source_path` was relative to `content/sources/`. Post-T10 the file is at `content/domains/odin/source/raw/tier1-authoritative/odin-overview/overview.md`. T51's Step 2 mumbles "destination values may not need changes" but glosses over `source_path`. **Fix:** T51 must explicitly resolve `source_path:` rewriting (either to a path relative to the new `source/raw/` root, or absolute from repo root). |
| E4 | Doctor's vault frontmatter required-fields list excludes `original_compiled_at` | IMPORTANT | doctor.py T42 lines 1608–1611 vs spec § Vault-page frontmatter line 261 and promote.py line 1935 | `REQUIRED_FRONTMATTER_VAULT` is defined but **never referenced anywhere in doctor.py** (the vault loop only calls `check_wikilinks`, never `check_compiled_page` or any vault frontmatter check). So vault-frontmatter validation is silently absent. Spec § Doctor lines 488–493 lists "Every compiled page has required frontmatter fields"; the spec is silent on whether vault is similarly checked, but the vault frontmatter section line 251–268 implies required fields. **Fix:** either add a vault-page check function in doctor.py, or remove the unused `REQUIRED_FRONTMATTER_VAULT` and document that vault frontmatter is unenforced. |
| E5 | Compile/Promote/INDEX section moves | NICE-TO-HAVE | spec § Promote step 5; promote.py T43 lines 1965–1968 | Promote does string-replace on INDEX.md rather than re-section the entry. Prior reviewer flagged; user accepted ("next Compile rewrites INDEX from scratch"). Documented behavior; acceptable given KISS. |
| E6 | INDEX entry move to "Vault" section is not actually performed | IMPORTANT | spec § Promote step 5 line 478; promote.py | promote.py replaces the old link with the new vault link in-place — but the line stays under whatever section it was in (From-Ingest or From-Query). Visually wrong until next Compile. Smoke test step 9 expectation says "INDEX.md updated (vault section)" — that won't be literally true until Compile rebuilds. **Fix:** either (a) update smoke test wording to match actual behavior, or (b) make promote.py move the entry between sections (more code, more bugs). Recommend (a). |
| E7 | Required body sections vs validator | OK | spec § File templates and § Validator-at-compile-time line 374 | Templates declare "Required" sections; validator enforces "required body section per template". Doctor (T42) actually only checks the `Sources` section parity — it does NOT enforce the per-type required sections (TLDR, Caveats, etc). This means the validator-at-compile-time is enforced **only inside the LLM's compile loop** (skill body), not at doctor time. Given KISS, acceptable; but spec § Doctor line 490 says "Every compiled page has body sections required by its template" — that promise is unkept by doctor.py. **Fix:** either add a per-template-section check to doctor.py, or amend spec to state doctor is structural-only and the body-sections check is an LLM-side concern. |
| E8 | `compiled_at`/`compiled_by` types | OK | doctor.py REQUIRED_FRONTMATTER_COMPILED | Required fields enumerated; values not type-checked. Acceptable for KISS. |
| E9 | INDEX format — promotion preserves "## Vault" header | OK | T22 INDEX.md content has `## Vault (blessed, never auto-edited)`; spec INDEX § line 358 | Consistent. |
| E10 | `tier:` field for vault frontmatter | OK | spec § Vault-page frontmatter (line 251) | Not listed in vault frontmatter; promote.py drops it. Spec doesn't require it. Acceptable — `original_*` fields preserve provenance archaeology. |
| E11 | Spec INDEX example shows `[Lessons 00–19]` but plan `T22` says `[Lessons]` | NICE-TO-HAVE | spec line 360 vs plan line 628 | Cosmetic. |

### F. Implementation pitfalls

| # | Item | Severity | Reference | Note / fix |
|---|---|---|---|---|
| F1 | **`odin-master` CLI is referenced everywhere but is being deleted/replaced** | IMPORTANT | spec lines 411, 472, 482, 496; CLAUDE.md/README/LEARNING; smoke test | Spec talks about `odin-master update`, `odin-master doctor`, `odin-master promote`, `odin-master test`, `odin-master new domain`. The plan's justfile recipes call `python tools/substrate/<tool>.py` — but spec/docs talk in `odin-master` terms. Existing `odin-master` CLI is a Python entry point (egg-info just got deleted in T5). **Fix needed:** either (a) keep `odin-master` as the user-facing CLI and have it dispatch to the substrate tools, or (b) globally rephrase docs to use `python tools/substrate/foo.py` / `just foo`. The plan currently does (b) inconsistently — README/LEARNING use `just <recipe>`, but smoke test runbook (T54) uses raw `odin-master update --domain odin` in step 1 then immediately `python tools/substrate/...` for steps 2+. Internally inconsistent. |
| F2 | Doctor.py's frontmatter regex/parsing on Windows line endings | NICE-TO-HAVE | doctor.py T42 lines 1647–1657 | `text.startswith("---\n")` will fail on CRLF files. Files written by python via `path.write_text` use `\n` (Python default). But files hand-edited on Windows could end up CRLF. Low risk for this repo. |
| F3 | `iter_vault_pages` returns None on no-vault | NICE-TO-HAVE | doctor.py T42 line 1675 | Function returns implicitly when vault doesn't exist; iterator semantics — works because callers use `for ... in iter_vault_pages(...)`. ✅ |
| F4 | `check_wikilinks` rejects all link types | IMPORTANT | doctor.py T42 lines 1730–1743 | Walks every `[[...]]` and checks `REPO / target`. But the spec § INDEX.md format example uses `[[from-ingest/concepts/...]]` (relative to compiled/), and the spec § Validator says links to `[[source/...]]`, `[[compiled/...]]`, `[[vault/...]]` — those are repo-relative. The smoke test promote step expects post-promote link rewriting to update `compiled/from-ingest/concepts/foo.md` → `vault/concepts/foo.md`. But `vault/concepts/foo.md` is **not a repo-relative path**; it lacks the `content/domains/odin/` prefix. The promote.py rewrite uses full repo-relative paths (`content/domains/odin/vault/...`). So the convention is "wikilinks are repo-relative paths." This needs to be **stated** somewhere — neither spec nor SKILL.md says "wikilinks are repo-relative." Without that contract, LLMs writing compiled pages may produce shorter `[[from-ingest/concepts/...]]` style links that doctor will reject. **Fix:** add to SKILL.md and CLAUDE.md: "Wikilinks in compiled and vault pages must be repo-relative paths (e.g., `[[content/domains/odin/source/raw/tier1-authoritative/odin-lang-org/foo.md]]`)." Then update the spec's INDEX example accordingly (currently uses `from-ingest/concepts/...` which is relative-to-compiled). |
| F5 | `promote.py` doctor invocation is whole-domain, not per-page | NICE-TO-HAVE | promote.py T43 lines 1892–1902 | `run_doctor` runs doctor on the whole domain. If any *unrelated* page is broken, promote refuses. KISS; but if a user has noisy in-progress pages they may be unable to promote a clean one. Acceptable; documented in the docstring. |
| F6 | `promote.py` `relative_to(REPO)` failure when path is outside repo | NICE-TO-HAVE | promote.py line 1909 | Will raise ValueError with confusing trace. Easy to handle. |
| F7 | `promote.py` `rel.parts[-3] not in ("from-ingest","from-query")` index assumption | IMPORTANT | promote.py T43 line 1910 | Assumes the path is `content/domains/<d>/compiled/from-ingest/<type>/<page>.md` (parts[-3] = `from-ingest`). Works for that exact shape, but breaks if user promotes `compiled/from-ingest/concepts/sub/foo.md` (one extra dir). Edge case; ok in v1 since templates don't generate sub-folders. Document in promote.py docstring. |
| F8 | `promote.py` Append to log uses `dt.date.today()` (local TZ); `promoted_at` uses UTC | NICE-TO-HAVE | promote.py lines 1934, 1972 | Mild inconsistency. Two-line fix or ignore. |
| F9 | `domain-scaffold.py` substitutes `{{domain}}` and `{{scaffold-date}}` only | IMPORTANT | domain-scaffold.py T45 line 2190; templates/domain README.md.template lines 1199–1217 | Template README.md.template includes `{{tier1 description}}`, `{{tier2 description}}`, `{{tier3 description}}`, `{{one-paragraph description}}`. The renderer does NOT substitute these — they'll leak through to the new domain's README. Acceptable if the user is expected to fill them in by hand (and the next-steps message says so). But the placeholder syntax mixes truly-mechanical subs (`{{domain}}`) with user-fill placeholders (`{{tier1 description}}`) — confusing. **Fix:** either (a) leave them as `<TODO: tier1 description>` to make the human-fill nature obvious, or (b) accept and note explicitly in the scaffold's printed next-steps that those tokens need hand-edit. |
| F10 | `domain-scaffold.py` fails to substitute in `contradictions.md` and `compiled/log.md` | IMPORTANT | template/domain/source/contradictions.md, compiled/log.md (T35 Steps 2, 5) | T35 Step 2 contradictions.md uses `domain: {{domain}}` and heading `# Contradictions — {{domain}} Domain`. T35 Step 5 log.md uses `## [{{scaffold-date}}] init | empty shell`. The renderer DOES substitute these (because they end in `.md` and renderer covers `.md`). ✅ Verify: code at line 2218 reads `if src.suffix in (".md", ".template"):` — `.md` is included. ✅ |
| F11 | `domain-scaffold.py` `dst_name = str(rel).replace(".template", "")` is overzealous | IMPORTANT | T45 line 2212 | If a real filename contains the substring `.template` (e.g., `contradictions.md.template` doesn't, but a future filename like `foo.template-test.md` would), `.replace` would clip it. For the current files (only `README.md.template`), works correctly. Low risk. |
| F12 | `test.py` semantic check matches required IDs by `req in c` substring on cited paths | NICE-TO-HAVE | test.py T44 line 2089 | E.g., required `odin-lang-org` matches any path containing `odin-lang-org`. Reasonable. |
| F13 | `test.py` invokes `claude -p` with no domain skill activation guarantee | IMPORTANT | test.py T44 lines 2069–2078 | The prompt says "Use the {domain} skill" but Claude Code doesn't always honor that. Failures may be due to wrong skill, not missing knowledge. Personal-tooling acceptable; user may want to relax pass criteria for first run (smoke step 8 already says "some failures acceptable"). |
| F14 | Move-Item doesn't error if source missing (with `-ErrorAction SilentlyContinue` in delete tasks) | NICE-TO-HAVE | T6, T7, T9 | T1–T9 tasks use `-ErrorAction SilentlyContinue` for deletes, then check `Test-Path` for verification. Move-Item tasks (T11, T12, T13, T14, T15, T16, T17) do NOT use SilentlyContinue and will hard-error if source is missing — desired behavior, since the moves must succeed. ✅ |
| F15 | Plan's `T13` Step 3 verification: "only `page-types` and `domain`" | NICE-TO-HAVE | T13 lines 391–394 | Could fail if any other top-level `templates/` content existed pre-migration. Worth running `Get-ChildItem templates/` once before T13 to confirm only `cli/`, `game/`, `lib/` are siblings. |
| F16 | `Test-Path` returns `True` for empty dirs after `Move-Item` | NICE-TO-HAVE | various | OK because moves are full-tree; just being aware. |
| F17 | nvim files with `odin-search` references | OK | T49 explicitly handles | `pickers.lua`, `health.lua`, `init.lua` all reference `odin-search`. T49's grep verification will catch all of them. |
| F18 | `pickers.lua` constructs paths from `content/sources/tier%d-%s` | IMPORTANT | line 62 of pickers.lua | This is currently used inside the search-result picker. Old path. T49 must rewrite this to `content/domains/odin/source/raw/tier...` AND/OR remove the picker entirely (since search itself is gone). T49's text mentions replacing odin-search invocations and lessons paths but doesn't list the `content/sources/` path inside `pickers.lua`. **Fix:** explicitly call out pickers.lua's source-path construction in T49. |
| F19 | `health.lua` checks for `odin-search` executable | NICE-TO-HAVE | T49 will catch via grep | Will be removed/stubbed. |

### G. Things explicitly out-of-scope but worth verifying

| # | Item | Severity | Reference | Note / fix |
|---|---|---|---|---|
| G1 | Update workflow deferred — substrate still works post-migration? | OK | spec § Open questions; plan T50 stub | Yes: T10 puts source/raw/ in place via filesystem move. doctor/compile/query/promote all work without `update`. Smoke step 1 explicitly accommodates this. |
| G2 | qmd deferred — consistency? | OK | spec § qmd; CLAUDE.md, LEARNING.md | Mentioned consistently as the planned graduation. No half-wired qmd code lurking. |
| G3 | Category-2 system out-of-scope | OK | spec § Open questions line 729; CLAUDE.md, SKILL.md core | Marked as parallel project, not v1 deliverable. |

### H. Anything else

| # | Item | Severity | Reference | Note / fix |
|---|---|---|---|---|
| H1 | **Smoke test step 1 invokes `odin-master update`** | IMPORTANT | docs/smoke-test.md (T54) lines 2810–2817 | The runbook references `odin-master update --domain odin` while the rest uses `python tools/substrate/...`. The PowerShell sanity in T55 falls back to "skip". Smoke test should drop `odin-master` from step 1 since the CLI doesn't really exist post-migration. **Fix:** rewrite step 1 to `# Update fetcher pipeline deferred; source/raw/ already populated by migration. Verify: ls content/domains/odin/source/raw/`. |
| H2 | **`pyyaml` dependency** | IMPORTANT | doctor.py, promote.py, test.py, domain-scaffold.py all `import yaml` | Spec § Shell tools line 533 says "stdlib + `pyyaml`". Plan does not include a step to verify `pyyaml` is installed (or add to `pyproject.toml`). Sanity checks in T42–T45 will fail with `ModuleNotFoundError` if pyyaml isn't present. **Fix:** add a Phase-7 pre-step or T42-Step-0 to `pip install pyyaml` (or check `python -c "import yaml"`); also add to `pyproject.toml` dependencies. |
| H3 | `another/` directory in git status — what is it? | NICE-TO-HAVE | git status, spec line 204 | Spec § Directory layout includes `another/` as "existing scratch dir, untouched." Confirms scope. |
| H4 | `studies/` and `lessons/06–19/README.md` modifications uncommitted | IMPORTANT | git status (head) | The user's "tip-top, untouched" claim conflicts with active uncommitted modifications to those files. Either the modifications are intentional polish (then they're tip-top NOW post-edit), or they're accidental edits the migration would entomb. **Fix:** before T11–T12, the executor should `git diff studies/ lessons/` and surface any non-trivial diffs to the user for confirm/revert. |
| H5 | `tools/nvim/lua/odin_master/format.lua` is also modified in git status | NICE-TO-HAVE | git status | Not a substrate concern; flag for user awareness. |
| H6 | T10 sources move — what about `content/sources/README.md` if any? | NICE-TO-HAVE | T10 only moves three tier subfolders | If `content/sources/` contains other files (READMEs, manifests), they'd be orphaned by Step 3's `Remove-Item` (which only removes empty dir). PowerShell's `Remove-Item` on a non-empty dir errors without `-Recurse`. So if there ARE other files, Step 3 fails loudly — good. |
| H7 | T6 `content/outputs/` "stop and ask" gate | OK | plan T6 line 234 | Correctly defers to user when uncertain. |
| H8 | Templates `notes/` semantics | OK | spec line 112 says "reserved for hand-written content (empty by default)" | Both odin domain (T18) and shells use `.gitkeep`. Empty-by-default honored. |
| H9 | `domain:` enum vs free-form domain names | NICE-TO-HAVE | doctor.py iterates `DOMAINS_DIR.iterdir()`; templates have `domain: <odin|papers|sdl3|engines|graphics>` | If a user adds a 6th domain, frontmatter `domain:` is free-form; doctor doesn't validate enumeration. Acceptable; comment-level docs only. |
| H10 | Spec's tier semantics for sdl3 says "Khronos specs (Vulkan/OpenGL)" but graphics also includes Khronos specs | NICE-TO-HAVE | spec line 587 vs 589 | Possible double-listing; not an architectural problem. User can decide where Vulkan spec lives when ingest happens. |
| H11 | `T44` (test.py) sanity-check shells out to doctor.py — race condition with T42? | OK | plan lines 79–81 (Phase 7 split) | The split puts T42 alone first, T43–T45 in P7-tools-rest after. Race resolved. ✅ |

---

## 3. Verdict

**PROCEED WITH FIXES.**

Two BLOCKERs and a handful of IMPORTANT fixes need to be addressed, but they are all small and mechanical. Recommend a brief plan revision before Phase 1 launches:

**Must-fix (BLOCKER) before execution:**

1. **E1** — Resolve justfile recipe collisions. Either delete the existing top-level `doctor:` recipe in T50, or rename the new recipe to `substrate-doctor` to match `substrate-test`. Update README.md / LEARNING.md / smoke-test.md commands to match the chosen names.
2. **E2** — In T51, explicitly handle the `odin-wiki` manifest entry whose `source_path: content/wiki/concepts` will be archived. Decide: delete the entry or repoint to `content/_archive/`.

**Should-fix (IMPORTANT) before execution:**

3. **E3** — In T51, add a step to rewrite manifest `source_path:` values that referenced the old `tier1-authoritative/...` paths.
4. **E4** — In doctor.py (T42), either wire up the unused `REQUIRED_FRONTMATTER_VAULT` check or delete it and document vault frontmatter as unenforced.
5. **F1 / H1** — Resolve `odin-master` CLI vs `python tools/substrate/...` inconsistency in spec, smoke-test, README, LEARNING. Pick one user-facing surface and stick to it.
6. **F4** — Document the wikilink convention (repo-relative) in CLAUDE.md and the core SKILL.md, and update the spec's INDEX example accordingly.
7. **F18** — Add `pickers.lua`'s `content/sources/tier%d-%s` path-construction to T49's explicit rewrite list.
8. **H2** — Add a `pyyaml` install/verify step before Phase 7 sanity checks; update `pyproject.toml`.
9. **H4** — Pre-Phase-2 git-diff on `studies/` and `lessons/` to confirm the uncommitted changes are intentional before the migration entombs them.

**Nice-to-have:**

10. **E6** — Soften smoke-test step 9 wording to match what `promote.py` actually does to INDEX.md.
11. **E7** — Reconcile spec § Doctor's "body sections" claim with doctor.py's actual structural scope.
12. **F9** — Use clearer placeholder syntax in the new-domain README template.
13. **A6** — Smoke step before T11/T12 that surfaces the dirty-file warning to user.

After these changes the plan is ready for Phase 1. The conversation requirements, memories, Karpathy faithfulness, and KISS bar are all met. Solo-personal-tooling rigor — not enterprise rigor — but solid.
