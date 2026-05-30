# Substrate Docs-vs-Reality Gap Report

> Audit of the `odin_master` knowledge-substrate docs (CLAUDE.md, `.claude/skills/*/SKILL.md`,
> the spec at `docs/superpowers/specs/2026-05-04-substrate-redesign-design.md`) against the
> actual filesystem and Python tooling. Date: 2026-05-29.
> Raw evidence: [`substrate-audit-ground-truth.md`](./substrate-audit-ground-truth.md).
>
> Authority order used for classification: **CLAUDE.md > core skill > per-domain skills > spec.**
> The spec is a brainstorming-phase design doc ("Approved (brainstorming phase, post-amendment)");
> CLAUDE.md explicitly corrects parts of it and is treated as the live contract.

## Executive summary

- **The justfile is real and the `just <verb>` instructions are correct.** A root `justfile` exists with every substrate recipe CLAUDE.md and the skills reference (`doctor`, `doctor-provenance`, `substrate-promote`, `substrate-test`, `substrate-update`, `substrate-fetch-id`, `substrate-refetch-id`, `new-domain`, `substrate-search`) and dispatches to `python tools/substrate/<tool>.py` exactly as documented. This hotspot is a confirmed-accurate area, not a gap.
- **The single clearest code/doc drift is `doctor.py`'s own docstring claiming it validates "INDEX.md freshness."** The code contains no INDEX.md check whatsoever — doctor never reads, stats, or regenerates INDEX.md. (undocumented-behavior / wrong-description, high confidence.)
- **`odin-master <verb>` command notation is stale in four shipped skill files and in `domain-scaffold.py`'s generated output**, directly contradicting CLAUDE.md's explicit statement that no `odin-master` binary exists in v1. The empty-shell skills tell users to run `odin-master update --domain <d>`; the scaffolder bakes the same stale string into every new domain it creates.
- **Three "enforced" invariants are doc-only with no mechanical backstop in the tools:** INDEX.md regeneration, the two-outputs-per-task rule, and validator-at-compile-time. These are real skill-workflow disciplines, but CLAUDE.md/core-skill wording can read as if a tool enforces them. Only provenance/folder parity is genuinely mechanically enforced (by doctor, gated at promote).
- **The "duplicate skill tree" hotspot is a non-issue:** `.claude/skills/domains/<d>/` does not exist. Skills are flat under `.claude/skills/<d>/`. No duplication or divergence. The likely confusion source is the unrelated `content/domains/<d>/` content tree.
- **qmd is wired in code but not vendored, and that matches the docs:** `search.py` implements the Windows node-shim bypass and GPU/Vulkan handling CLAUDE.md describes; there is intentionally no `package.json`/`@tobilu/qmd` dependency (global install per CLAUDE.md). One soft gap: nothing creates the qmd collection/index — that is a manual, undocumented-in-CLAUDE.md prerequisite step.
- **Domain population claims are accurate:** odin (655 source files, 96 vault) and graphics (152 source, 36 vault) are populated; engines/papers/sdl3 are true empty shells. One nuance: CLAUDE.md groups graphics with the "empty shells," but graphics is in fact substantially populated — a wrong-description.
- **`templates/page-types/*.template.md` exist** (all six page types), so that tooling-map claim is accurate; but no tool consumes them — doctor's `TEMPLATES_DIR` constant is dead code and the validator that "picks a template" is an LLM step only.
- **Manifest covers only odin + graphics** (16 entries); papers/sdl3/engines have zero manifest entries, consistent with their empty-shell status but worth noting against the "five domains" framing.
- **Several internal spec inconsistencies survive** (qmd defer-vs-active; `odinfmt.json`/`ols.json` config location reverted but still shown in the layout tree; `odin-master` notation). CLAUDE.md already resolves most; the spec text itself remains contradictory.

## Gaps

### 1. `doctor.py` docstring claims an INDEX.md freshness check that does not exist
- **Location:** `tools/substrate/doctor.py` (module docstring, ~line 5).
- **Claim:** The docstring states doctor "Validates ... INDEX.md freshness."
- **Reality:** There is no INDEX.md check anywhere in the file. doctor never reads, stats, or regenerates INDEX.md. It checks compiled/vault frontmatter, provenance/folder parity, source_ids existence, Sources-section parity, wikilinks, and log.md format only.
- **Category:** wrong-description.
- **Confidence:** high.
- **Evidence:** Tools agent read the full 278-line file; confirmed no `INDEX` token appears in any check function; `TEMPLATES_DIR`/INDEX are not referenced by logic. Promote is the only tool that touches INDEX.md (in-place string patch, line ~125), and it explicitly defers clean regeneration to "next Compile."
- **Recommended action:** fix-text. Edit the doctor.py docstring to remove "INDEX.md freshness" and replace with the checks it actually performs (frontmatter schema, provenance/folder parity, source_ids existence, Sources parity, wikilink resolution, log.md format). Optionally note "INDEX.md regeneration is an LLM-skill responsibility, not validated here."

### 2. Four shipped skill files instruct users to run a nonexistent `odin-master` command
- **Location:** `.claude/skills/papers/SKILL.md`, `.claude/skills/sdl3/SKILL.md`, `.claude/skills/engines/SKILL.md`, `.claude/skills/graphics/SKILL.md` (each "Workflow execution" / populate section: `odin-master update --domain <d>`).
- **Claim:** Users should run `odin-master update --domain <d>` to ingest sources.
- **Reality:** No `odin-master` binary exists in v1 (CLAUDE.md states this explicitly). The real recipe is `just substrate-update <d>` → `python tools/substrate/fetch.py`.
- **Category:** internal-inconsistency (skill text contradicts CLAUDE.md).
- **Confidence:** high.
- **Evidence:** Domain-skills agent confirmed all four empty-shell skills carry `odin-master update --domain <d>`; CLAUDE.md "Commands / CLI" section: "There is no `odin-master` CLI binary in v1"; justfile has a real `substrate-update` recipe; structure agent confirmed the justfile recipe list.
- **Recommended action:** fix-text. Replace `odin-master update --domain <d>` with `just substrate-update <d>` (or `python tools/substrate/fetch.py --domain <d>`) in all four files.

### 3. `domain-scaffold.py` bakes the stale `odin-master update` command into every generated skill and its "Next steps" output
- **Location:** `tools/substrate/domain-scaffold.py` (generated skill body, line ~61-84; printed "Next steps").
- **Claim:** Generated guidance tells the user to run `odin-master update --domain <name>`.
- **Reality:** Same as Gap 2 — that command does not exist; correct form is `just substrate-update <name>`. This is the *root cause* of Gap 2: the scaffolder will keep reproducing the stale string for every new domain.
- **Category:** internal-inconsistency.
- **Confidence:** high.
- **Evidence:** Tools agent: "generated skill text and printed 'Next steps' tell the user to run `odin-master update --domain <name>` — that command form doesn't exist; the real recipe is `just substrate-update <name>`. This is stale guidance baked into the generator."
- **Recommended action:** fix-text. Update the generated skill template string and the "Next steps" print in domain-scaffold.py to use `just substrate-update <name>`. (Fixing this prevents future recurrences; Gap 2 fixes the already-emitted instances.)

### 4. "INDEX.md is regenerated every Compile" is enforced only by skill discipline, with zero tool backstop
- **Location:** CLAUDE.md "INDEX.md" section ("regenerated every Compile; mandatory; the skill workflow refuses to mark Compile complete without it"); core skill `knowledge-substrate-core/SKILL.md` (Compile step 3, "What NOT to do: don't skip INDEX.md regen").
- **Claim:** INDEX.md is regenerated on every Compile; this is mandatory.
- **Reality:** No Python tool regenerates INDEX.md. There is no Compile tool at all (Compile is an LLM skill workflow). promote.py only string-patches a single link in INDEX.md and explicitly comments that "next Compile rewrites it cleanly." doctor does not check INDEX.md at all. So the invariant rests entirely on LLM-workflow discipline. Corroborating reality: odin's INDEX.md currently reads "Last regenerated: (not yet compiled)" with no pages — consistent with zero compiled pages, but also showing nothing mechanically keeps it current.
- **Category:** undocumented-behavior (the *mechanism* — "LLM-only, no tool enforcement" — is not stated; a reader may assume a tool guarantees it).
- **Confidence:** high.
- **Evidence:** Tools agent cross-cutting findings #2/#3; structure agent #8 (odin INDEX.md placeholder text).
- **Recommended action:** add-doc. The claim itself is valid (it is a real rule). Add one clarifying clause in CLAUDE.md/core skill: "Regeneration is an LLM-skill step; no shell tool enforces it (doctor does not check INDEX.md)." Keep the rule as-is. (Optional, separate, user-decision: build an INDEX regeneration/staleness check — see Open Questions.)

### 5. The two-outputs-per-task rule is documented as a hard rule but not mechanically enforced
- **Location:** CLAUDE.md "Two-outputs-per-task rule"; core skill two-outputs section; spec.
- **Claim:** Non-trivial queries must produce both a chat answer and a page in `compiled/from-query/` (+ log entry).
- **Reality:** No tool verifies a from-query page was written. `test.py`'s semantic block only injects the two-outputs discipline as prompt text to the model and then checks citations in the chat answer; it never asserts a file landed in `compiled/from-query/`. doctor does not check it either. (Reality check: all five domains have zero real pages in `compiled/from-query/` — only `.gitkeep`.)
- **Category:** undocumented-behavior (enforcement boundary unstated).
- **Confidence:** high.
- **Evidence:** Tools agent test.py "CLAUDE.md claim check"; structure agent table (from-query real = 0 for all domains).
- **Recommended action:** keep-as-aspirational-marked / add-doc. The rule is valid and should stay. Add a note that it is an LLM-discipline rule with no mechanical enforcement, so the reader does not assume `test`/`doctor` guards it.

### 6. "Validator-at-compile-time" reads like a tool but is an LLM-skill step
- **Location:** CLAUDE.md "Validator-at-compile-time" section; core skill Compile step + "Validator rejection rules."
- **Claim:** "Compile rejects pages with malformed frontmatter, broken citations, missing required sections, or empty TLDRs. The LLM retries."
- **Reality:** There is no Compile tool and no compile-time validator binary. The reject/retry loop is performed by the LLM during the Compile skill workflow. doctor enforces a *superset overlap* of these checks (frontmatter schema, source_ids existence, Sources parity, wikilinks) but as a *post-hoc* linter, not "at compile time," and doctor does not check TLDR emptiness or template-defined required sections (it has no template awareness — `TEMPLATES_DIR` is dead code).
- **Category:** undocumented-behavior (the "who enforces, and when" is ambiguous; partly internal-inconsistency vs the doctor docstring's template aspirations).
- **Confidence:** high.
- **Evidence:** Tools agent doctor "CLAUDE.md claim check" + dead `TEMPLATES_DIR`; core skill enumerates the rejection rules as skill behavior.
- **Recommended action:** add-doc. Clarify that the validator is an LLM Compile-step behavior; doctor is the mechanical post-hoc subset (and does not validate TLDR caps or per-template required sections). Keep the rule. (Building a real template-aware validator is a separate user-decision.)

### 7. CLAUDE.md scope sentence miscategorizes graphics as an "empty shell"
- **Location:** CLAUDE.md "Initial scope (v1)": "Odin is populated; papers/sdl3/engines/graphics are empty shells reserved for that learning extending." Also the CLAUDE.md header sentence in `project_substrate_intent` framing.
- **Claim:** graphics is an empty shell.
- **Reality:** graphics is substantially populated: 152 source files (tinyrenderer, vkguide, jonathanfischer-sdl-gpu, tenminutephysics in tier1; multiple tier2 blogs), 36 vault files (lessons 00–19), and 6 manifest entries... actually 10 graphics manifest source entries. Only engines/papers/sdl3 are true empty shells (6 source files each, 1 vault file).
- **Category:** wrong-description.
- **Confidence:** high.
- **Evidence:** Structure agent per-domain table (graphics: 152 source / 36 vault, "Populated"); manifest declares domains odin + graphics with 10 graphics source entries.
- **Recommended action:** fix-text. Change to "Odin and graphics are populated; papers/sdl3/engines are empty shells reserved for extending into those areas." (Note: graphics population is also relevant to the MEMORY.md framing that lists graphics among "planned domains.")

### 8. qmd collection/index creation is an undocumented manual prerequisite
- **Location:** CLAUDE.md "Search" section; core skill Query step 3 ("shell to qmd"); `tools/substrate/search.py`.
- **Claim:** CLAUDE.md says "Index a corpus: `qmd collection add <path> --name <name>`. For embedding-backed hybrid query: `qmd embed`." `search.py` forwards queries to qmd.
- **Reality:** `search.py` only *queries* qmd; it never creates a collection or runs `qmd embed`. There is no recipe or tool that builds/refreshes the qmd index — the user must run `qmd collection add` and `qmd embed` manually, and there is no documented "which path / what name / when to re-embed" runbook beyond the one-line install note. Hybrid mode silently requires a prior `qmd embed`; without it, `--bm25` is the only working mode. The `QMD_JS_WIN` path is also unverified on this machine (code falls back gracefully).
- **Category:** undocumented-behavior (partial; the commands are mentioned but the operational wiring/runbook is absent).
- **Confidence:** medium.
- **Evidence:** Tools agent search.py "(e)" ("No index/collection is created by this tool; that's a manual `qmd collection add` step per docstring"); structure agent #6 (no package.json, global install expected).
- **Recommended action:** add-doc. Add a short qmd setup runbook (collection name/path convention, when to re-run `qmd embed`, BM25-only fallback). Optionally add a `just substrate-index` recipe (separate user-decision).

### 9. Spec internal inconsistency: qmd "deferred" vs "active in v1"
- **Location:** `docs/superpowers/specs/2026-05-04-substrate-redesign-design.md` — "Notes on deviations" ("INDEX.md at v1, qmd when scale demands it… Deferral is about scale") vs the "qmd (active in v1)" section ("Installed and wired in v1").
- **Claim:** Spec simultaneously defers qmd and activates it in v1.
- **Reality:** qmd is wired in v1 (`search.py` exists and implements the documented behavior). CLAUDE.md resolves this to "active in v1." The spec text itself remains self-contradictory, and MEMORY.md's "defer semantic search" note reflects the older, now-stale stance.
- **Category:** internal-inconsistency.
- **Confidence:** high.
- **Evidence:** Spec/CLAUDE.md agent §4; tools agent search.py implementation present.
- **Recommended action:** fix-text (spec) + needs-user-decision (MEMORY.md). CLAUDE.md is already correct (no change). Optionally annotate the spec's deferral note as superseded by "active in v1." The stale MEMORY.md entry ("defer semantic search") should be reconciled by the user since it is user-owned memory.

### 10. Spec internal inconsistency: `odinfmt.json` / `ols.json` location reverted but still shown in layout tree
- **Location:** spec migration table (in-table note: configs kept at repo root, "domain owns its config" reverted) vs spec directory-layout tree (still shows `content/domains/odin/config/{odinfmt.json,ols.json}`).
- **Claim:** Layout tree implies configs live under `content/domains/odin/config/`.
- **Reality:** `odinfmt.json` and `ols.json` are at the repo root (structure agent confirms both at root). The migration-table note (reverted) is the correct truth; the layout tree is stale. CLAUDE.md is silent on this.
- **Category:** internal-inconsistency.
- **Confidence:** high.
- **Evidence:** Spec/CLAUDE.md agent §4; structure agent #9 (root has `odinfmt.json`, `ols.json`).
- **Recommended action:** fix-text (spec). Update the spec's layout tree to show configs at repo root. Low priority (spec is a design doc); no CLAUDE.md change needed.

### 11. `odin-master <verb>` command notation throughout the spec
- **Location:** spec command examples (`odin-master update`/`doctor`/`promote`/`test`/`new domain`) and spec justfile snippets calling `odin-master ...`.
- **Claim:** Commands are invoked as `odin-master <verb>`.
- **Reality:** No `odin-master` binary; invocation is `just <verb>` / `python tools/substrate/<verb>.py`. CLAUDE.md already flags the spec notation as shorthand and corrects it.
- **Category:** internal-inconsistency (already reconciled by CLAUDE.md).
- **Confidence:** high.
- **Evidence:** Spec/CLAUDE.md agent §4; CLAUDE.md "Commands / CLI" note.
- **Recommended action:** keep-as-aspirational-marked. CLAUDE.md already neutralizes this; no action required beyond the skill/scaffolder fixes in Gaps 2-3. Optionally add a one-line banner to the spec pointing readers to CLAUDE.md for command syntax.

### 12. `promote` surface-name drift (`odin-master promote` vs `substrate-promote`)
- **Location:** spec ("odin-master promote") vs CLAUDE.md / vault rules / justfile ("substrate-promote").
- **Claim:** Two different names for the same tool.
- **Reality:** Same tool (`tools/substrate/promote.py`); the live name is the `just substrate-promote` recipe. Purely a naming-surface drift, not a logical conflict.
- **Category:** internal-inconsistency.
- **Confidence:** high.
- **Evidence:** Spec/CLAUDE.md agent §4; structure agent justfile recipe list includes `substrate-promote`.
- **Recommended action:** keep-as-aspirational-marked / no action. CLAUDE.md and justfile are consistent; spec is the only place using the old name.

### 13. `just substrate-promote` recipe does not forward `--note` / `--dry-run`
- **Location:** `justfile` (`substrate-promote` recipe) vs `tools/substrate/promote.py` (supports `--note`, `--dry-run`).
- **Claim:** (Implicit) `just substrate-promote` is the user-facing way to promote.
- **Reality:** The recipe forwards only the positional path; `--note` (becomes `blessed_because`) and `--dry-run` are unreachable via `just`. Same shape for `just substrate-test` (forwards only `--domain`, cannot select `--structural`/`--semantic`).
- **Category:** undocumented-behavior (a capability gap between tool and recipe).
- **Confidence:** high.
- **Evidence:** Tools agent promote.py "(a)" and test.py "(a)" recipe notes.
- **Recommended action:** fix-text (justfile) — make the recipes pass through extra args (e.g. `python tools/substrate/promote.py {{path}} {{args}}`), or add-doc noting the flags require the direct `python` invocation. Low priority; user-decision on whether to widen the recipes.

### 14. `templates/page-types/` exists and is documented, but no tool consumes it (dead `TEMPLATES_DIR`)
- **Location:** CLAUDE.md tooling map ("Page templates: `templates/page-types/*.template.md`"); `tools/substrate/doctor.py` (`TEMPLATES_DIR`, line ~23).
- **Claim:** Page templates are part of the tooling map; doctor (per its docstring aspirations) and Compile use them.
- **Reality:** The six templates exist and are real, and the Compile *skill* references `templates/page-types/`. But `doctor.py` defines `TEMPLATES_DIR` and never uses it — doctor does not validate pages against templates (no required-section-by-template check). So the only consumer is the LLM Compile workflow, not any tool.
- **Category:** undocumented-behavior (dead constant) + confirms Gap 6's "no template-aware validation."
- **Confidence:** high.
- **Evidence:** Tools agent doctor "(d)" (TEMPLATES_DIR dead) and "(e)" (templates/page-types unreferenced by code); structure agent #2 (six templates exist).
- **Recommended action:** remove-claim (code) — delete the unused `TEMPLATES_DIR` constant from doctor.py, or implement the template-aware check it implies (user-decision). The CLAUDE.md tooling-map line is accurate (templates do exist) — keep it.

### 15. `claude` CLI is a hard, undocumented dependency of `test.py`'s semantic block
- **Location:** `tools/substrate/test.py` (semantic block); CLAUDE.md/quality-checks docs.
- **Claim:** `just substrate-test` runs the regression harness (structural + semantic gold-set).
- **Reality:** The semantic block shells out to a `claude` binary on PATH and makes real model calls (120s timeout each, 15 odin gold queries). Without the `claude` CLI it fails ("claude CLI not found"); it is non-deterministic and slow. This external dependency is not called out in CLAUDE.md or quality-checks docs. Citation matching is also loose (substring match, so `odin-core` matches any path containing that fragment). Note the structural-vs-semantic split: `quality-checks.yaml`'s `structural:` list is documentation only — the code hardwires structural to doctor and ignores those YAML entries.
- **Category:** undocumented-behavior.
- **Confidence:** high.
- **Evidence:** Tools agent test.py "(c)/(d)/(e)"; quality-checks.yaml has `structural` (4 strings, unused) + `semantic` (15 odin queries).
- **Recommended action:** add-doc. Note in CLAUDE.md/quality-checks that `substrate-test`'s semantic block requires the `claude` CLI and real model calls (so it is not a hermetic CI check), and that the YAML `structural:` entries are descriptive only. Keep as-is otherwise.

### 16. Manifest declares only odin + graphics; "five domains" framing has no manifest coverage for three
- **Location:** `content/manifest.yaml`; CLAUDE.md scope ("five domains") and per-domain skills.
- **Claim:** Five domains exist (odin, papers, sdl3, engines, graphics).
- **Reality:** True that five domain *trees* exist, but the manifest has source entries only for odin (9) and graphics (10) — zero entries for papers/sdl3/engines. Consistent with their empty-shell status, but it means `substrate-update` has nothing to fetch for those three, and the per-domain skills' fetcher claims (e.g. papers' `arxiv-pdf` "not implemented in v1") are aspirational.
- **Category:** missing-not-built (the three empty domains have no ingest sources yet — intended, not a defect).
- **Confidence:** high.
- **Evidence:** Structure agent #3 (manifest declares odin, graphics only); domain-skills agent (papers notes fetcher not implemented in v1).
- **Recommended action:** keep-as-aspirational-marked. No fix needed; this is the intended empty-shell state. Optionally note in the empty-shell skills that no manifest sources exist yet.

### 17. Spec lists eight workflows/tools incl. "Update" and "Ingest"; the doctor-set audit found no Compile/Ingest *tool*
- **Location:** spec workflow list (Update, Ingest, Compile, Query, Lint + Promote, Doctor, Test); CLAUDE.md tooling map ("Shell tools: `tools/substrate/{doctor,promote,test,domain-scaffold}.py`").
- **Claim:** Update/Ingest/Compile/Query/Lint are workflows; CLAUDE.md's shell-tools list names only doctor/promote/test/domain-scaffold.
- **Reality:** Update/Ingest are partially a *tool* (`fetch.py`, exposed as `just substrate-update` / `substrate-fetch-id` / `substrate-refetch-id`); Compile/Query/Lint are LLM-skill workflows with no Python tool. CLAUDE.md's tooling-map list omits `fetch.py`, `search.py`, and `verify_all.py` even though they exist and have recipes.
- **Category:** wrong-description (CLAUDE.md tooling map is incomplete).
- **Confidence:** high.
- **Evidence:** Tools agent cross-cutting #1 (fetch.py is the Ingest engine; search.py exists; verify_all.py present); CLAUDE.md tooling map lists only four scripts.
- **Recommended action:** fix-text. Update CLAUDE.md's "Shell tools" line to include `fetch.py` (Ingest/`substrate-update`) and `search.py` (qmd wrapper); optionally `verify_all.py`. Keep the workflow framing.

### 18. Manifest header says the v1 update-fetcher pipeline is "deferred," but `fetch.py` + recipes exist
- **Location:** `content/manifest.yaml` header note ("v1 update-fetcher pipeline is deferred") vs `tools/substrate/fetch.py` + `just substrate-update`/`substrate-fetch-id`/`substrate-refetch-id`.
- **Claim:** The fetcher pipeline is deferred.
- **Reality:** A `fetch.py` Ingest engine exists and is wired to three recipes. Whether it is fully functional was out of scope for the tools audit, but it is not absent. The manifest header note appears stale relative to the shipped recipes.
- **Category:** internal-inconsistency.
- **Confidence:** medium.
- **Evidence:** Structure agent #3 (manifest header "v1 update-fetcher pipeline is deferred"); tools agent (fetch.py is the Ingest/`substrate-update` engine, out of scope but present); structure agent justfile recipe list.
- **Recommended action:** needs-user-decision. Confirm whether `fetch.py` is the live fetcher (then fix the manifest header) or a stub (then keep "deferred" but note the recipes are placeholders). Requires the maintainer to state intent.

## Confirmed-accurate claims

- **justfile exists and dispatches as documented.** Root `justfile` with all substrate recipes (`doctor`, `doctor-provenance`, `substrate-promote`, `substrate-test`, `substrate-update`, `substrate-fetch-id`, `substrate-refetch-id`, `new-domain`, `substrate-search`) → `python tools/substrate/<tool>.py`. CLAUDE.md's "User-facing commands are `just` recipes" is correct. (Hotspot a: PASS.)
- **`templates/page-types/*.template.md` exist** — all six (article, blog-post, code-symbol, concept, paper, summary). (Hotspot b: PASS.)
- **The verbs the skills tell users to run map to real tools.** `substrate-promote`→promote.py, `doctor`/`doctor-provenance`→doctor.py, `substrate-search`→search.py, `substrate-test`→test.py, `new-domain`→domain-scaffold.py all exist and implement the named behavior. (Hotspot c: PASS, modulo the `odin-master` skill-text drift in Gaps 2-3.)
- **qmd is genuinely wired in code, matching CLAUDE.md.** `search.py` implements the Windows `node <qmd.js>` bypass of the npm `/bin/sh` shim, forces `QMD_LLAMA_GPU=vulkan` when unset, runs with `cwd=REPO`, supports `--bm25` (qmd search) vs hybrid (qmd query), exits 2 when qmd absent. No `package.json`/vendored dependency — correct, since CLAUDE.md says global install. (Hotspot d: PASS, with the index-creation caveat in Gap 8.)
- **No duplicate skill tree.** `.claude/skills/domains/<d>/` does not exist; skills are flat under `.claude/skills/<d>/` (six SKILL.md total). No divergence to reconcile. (Hotspot e: PASS — phantom concern.)
- **provenance/folder parity IS mechanically enforced.** doctor checks `fm["provenance"] ∈ {from-ingest, from-query}` and that it equals the containing folder; promote gates on `doctor --domain D --json` returncode 0. This is the most rigorously implemented invariant and CLAUDE.md describes it accurately. (Hotspot f, the one enforced item: PASS.)
- **`from-ingest/` and `from-query/` folders exist for all five domains** and are the real provenance split. (Currently empty of real pages — `.gitkeep` only — which is consistent, not a contradiction.)
- **Domain population: odin and graphics are populated; engines/papers/sdl3 are empty shells.** Matches reality (modulo Gap 7's mislabeling of graphics in one CLAUDE.md sentence). (Hotspot g: substantially PASS.)
- **Vault is promote-only.** promote.py is the only tool that writes to existing domains' `vault/`. CLAUDE.md "Only changes via `substrate-promote`" is accurate.
- **`log.md` format** `## [YYYY-MM-DD] <action> | <title>` is real and enforced by doctor's regex (`^## \[\d{4}-\d{2}-\d{2}\] [a-z\-]+ \| `). CLAUDE.md and core skill match the code.
- **Vault subfolder convention** (free-form; new promotes go to `vault/<type>/`; migrated `vault/studies`+`vault/lessons` coexist; doctor does not enforce vault subfolder names) is accurate — promote writes to `vault/<fm.type>/` and doctor skips vault pages lacking a `frozen` key.
- **Compiled frontmatter schema** in CLAUDE.md/core skill matches doctor's `REQUIRED_FRONTMATTER_COMPILED` exactly (title, type, domain, tier, provenance, source_ids, compiled_at, compiled_by, status), and the `type` enum {article, paper, code-symbol, blog-post, concept, summary} matches.
- **Wikilink convention** (repo-relative `[[...]]`, validated by doctor; markdown links in INDEX.md relative to file dir, not validated) matches doctor's `check_wikilinks` behavior (resolves `[[target]]` minus `#anchor` against REPO; skips `{{...}}` template tokens).
- **`.claude/skills/content/SKILL.md` and `.claude/skills/README.md` were never claimed by CLAUDE.md** — their absence is not a doc gap (they were only probe targets). CLAUDE.md's tooling-map skill paths (`knowledge-substrate-core`, `{odin,papers,sdl3,engines,graphics}`) all exist.

## Open questions for the maintainer

1. **INDEX.md regeneration — build a mechanical backstop, or keep LLM-only?** The rule is real but unenforced by any tool (Gap 4). Do you want a `doctor` staleness check or an `INDEX` regen tool, or is LLM-workflow discipline sufficient for solo use? (KISS suggests possibly leaving it; your call.)
2. **Two-outputs rule and validator-at-compile — mechanize or leave as discipline?** (Gaps 5, 6.) A template-aware validator + a from-query-page check would close the doc/reality gap, but adds tooling. Worth it, or annotate as LLM-discipline and move on?
3. **`fetch.py` status: live fetcher or stub?** The manifest header says the update-fetcher pipeline is "deferred," yet `fetch.py` and three recipes exist (Gap 18). Which is true? This determines whether the empty-shell skills' fetcher claims and the manifest header need editing.
4. **MEMORY.md "defer semantic search" entry is stale** relative to CLAUDE.md's "qmd active in v1" (Gap 9). Since this is your user-owned memory, do you want it reconciled/removed?
5. **Should the `just substrate-promote` / `substrate-test` recipes pass through flags** (`--note`, `--dry-run`, `--structural`, `--semantic`), or is the direct `python` invocation acceptable for those advanced cases? (Gap 13.)
6. **Spec hygiene:** do you want the spec's stale bits (qmd defer note, `content/domains/odin/config/` layout tree, `odin-master` notation, `odin-master promote`) corrected in place, or left as historical brainstorming with CLAUDE.md as the single source of truth? (Gaps 9-12.) The spec's own Status is "brainstorming phase," so leaving it may be fine.
7. **Should the qmd index be created/refreshed by a recipe** (e.g. `just substrate-index` wrapping `qmd collection add` + `qmd embed`), or is manual setup acceptable? (Gap 8.)

## Resolution status (applied 2026-05-29)

Edits applied in this pass (doc/skill/template/docstring text only — no tool logic changed; all `tools/substrate/*.py` still `py_compile` clean):

- **Gap 1 — FIXED.** `doctor.py` docstring no longer claims "INDEX.md freshness"; added a note that INDEX.md is an LLM Compile-step responsibility, not validated by doctor. Also dropped the stale `odin-master` name from the docstring.
- **Gap 2 — FIXED.** `odin-master update --domain <d>` → `just substrate-update <d>` in `papers`, `sdl3`, `engines`, and (via rewrite) `graphics` skills.
- **Gap 3 — FIXED.** `domain-scaffold.py` no longer emits `odin-master` commands (docstring, generated skill body, and printed "Next steps" now use `just new-domain` / `just substrate-update`). Also fixed the scaffold **template** the generator copies: `templates/domain/compiled/log.md` ("Created by `just new-domain`"). (`templates/domain/source/README.md.template` had no command reference to fix.)
- **Gaps 4, 5, 6 — FIXED (doc-clarity).** CLAUDE.md now states explicitly that the two-outputs rule, validator-at-compile, and INDEX.md regeneration are **LLM skill-workflow disciplines with no shell-tool backstop**, and that `doctor` is the mechanical post-hoc subset (and does not check TLDR length or per-template required sections). The core skill already said this; no change needed there.
- **Gap 7 — FIXED.** CLAUDE.md scope sentence corrected ("Odin and graphics are populated; papers/sdl3/engines are empty shells"). `graphics/SKILL.md` rewritten from a false "empty shell" stub into an accurate populated-domain skill (curriculum + sources).
- **Gap 8 — DOCUMENTED.** CLAUDE.md Search section now states qmd index setup is manual (`qmd collection add` + `qmd embed`) and not wired into any recipe; `--bm25` works without embeddings.
- **Gap 17 — FIXED.** CLAUDE.md "Shell tools" line now lists all seven scripts (added `fetch.py`, `search.py`, `verify_all.py`) and the commands paragraph lists the real recipe names (not 1:1 with filenames). A new "## Testing & verification" section documents `substrate-test` (incl. its `claude`-CLI/real-model-call dependency) and `verify`/`verify-all`.
- **Gap 18 — RESOLVED + partially fixed.** Investigation confirmed `fetch.py` is a **live `html_mirror` fetcher** (337 lines, no stubs), wired to `substrate-update`/`substrate-fetch-id`/`substrate-refetch-id`; only `html_mirror` is automated (`pasted_text`/`local_dir`/`git_clone` fall through and are populated manually). `ONBOARDING.md`'s false "Currently an echo stub" line was corrected. The `content/manifest.yaml` header still says "deferred" — left for the maintainer (see below).
- **Gap 14 — NOT changed.** `TEMPLATES_DIR` in `doctor.py` is dead code; left in place (removing vs. implementing template-aware validation is a user-decision). CLAUDE.md tooling-map line is accurate (templates exist).
- **Gaps 9–12 (spec internal inconsistencies) — NOT changed.** The spec is a brainstorming-phase doc; CLAUDE.md is the live contract and already neutralizes these. Left as historical record per the report's own recommendation.
- **Gap 13, 15, 16 — DOCUMENTED, not mechanized.** Recipe flag pass-through (13) and the `claude`-CLI test dependency (15) are now documented in CLAUDE.md; empty-domain manifest coverage (16) is the intended empty-shell state.
- **Bonus:** stale `odin-master` name prefixes dropped from the `test.py` / `search.py` / `promote.py` / `fetch.py` docstrings for internal consistency.

### Still requires the maintainer (cannot be fixed by the LLM under substrate discipline)

- **Five `source/`-tier domain READMEs** (`content/domains/{odin,papers,sdl3,engines,graphics}/source/README.md`) and the `odin-overview` raw mirror still contain `odin-master update`. These live under `source/`, which the prime directive forbids the LLM from editing. The **template** that generates them is now fixed, so *new* domains will be correct; the existing five need a human edit (or explicit authorization). **Root-cause note:** the scaffold template baked the stale command into a tier the LLM may never repair — a structural trap worth keeping in mind.
- **`content/manifest.yaml` header** ("v1 update fetcher pipeline is deferred — manifest is data-only for now") is now stale for `html_mirror` (Gap 18). Suggested precise replacement: *"Fetcher pipeline is PARTIAL — only `fetcher: html_mirror` is automated (`tools/substrate/fetch.py`, via `just substrate-update`/`substrate-fetch-id`/`substrate-refetch-id`). `pasted_text`/`local_dir`/`git_clone` entries are populated manually."* Left untouched because the manifest is user-curated corpus config.
- **`content/domains/odin/templates/{lib,game,cli}/README.md`** reference an old `odin-master new lib/cli` project-scaffolding CLI (a separate legacy system, not the substrate). Out of scope for this pass; flagged for a future cleanup decision.
