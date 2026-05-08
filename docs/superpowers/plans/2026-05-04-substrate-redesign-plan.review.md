# Conformance Review — 2026-05-04 Substrate Redesign Plan

**Reviewer:** independent general-purpose pass
**Spec:** `docs/superpowers/specs/2026-05-04-substrate-redesign-design.md`
**Plan:** `docs/superpowers/plans/2026-05-04-substrate-redesign-plan.md`

---

## 1. Spec coverage

### Directory layout / migrations

| Spec deliverable | Plan task(s) |
|---|---|
| `content/_archive/` (+ old-wiki-concepts, old-wiki-summaries) | T1, T2, T3 |
| Delete `content/wiki/INDEX.md` and dir | T4 |
| Delete `content/index/` | T7 |
| Delete `tools/indexer/` | T8 |
| Delete `tools/search/` | T9 |
| Delete debug artifacts (stackdump, bootstrap-out.log, egg-info) | T5 |
| `content/outputs/` decision | T6 (with stop-and-ask if uncertain) |
| `content/sources/tier*` → `content/domains/odin/source/raw/tier*` | T10 |
| Top-level `studies/` → `vault/studies/` | T11 |
| Top-level `lessons/` → `vault/lessons/` | T12 |
| Top-level `templates/{cli,game,lib}` → odin/templates/ | T13 |
| `odinfmt.json` / `ols.json` → odin/config/ | T14, T15 |
| `tools/lessons-check/` → `tools/domains/odin/lessons-check/` | T16 |
| `tools/odin_lib/` → `tools/domains/odin/odin_lib/` | T17 |
| `source/notes/`, `contradictions.md`, source `README.md` (odin) | T18, T19, T20 |
| `compiled/{from-ingest,from-query}/`, `INDEX.md`, `log.md` (odin) | T21, T22, T23 |
| Empty-shell domains: papers, sdl3, engines, graphics | T25, T26, T27, T28 |
| Six page-type templates | T29–T34 |
| `templates/domain/` scaffold | T35 |

### Skill layer

| Spec | Plan |
|---|---|
| `knowledge-substrate-core/SKILL.md` (~300–400 lines) | T36 |
| Rewritten `odin` skill (thin) | T37 |
| Empty-shell skills for papers/sdl3/engines/graphics | T38, T39, T40, T41 |

### Shell tools

| Spec | Plan |
|---|---|
| `tools/substrate/doctor.py` (incl. `--provenance-check`, `--domain`, `--json`) | T42 |
| `tools/substrate/promote.py` (incl. `--note`, `--dry-run`) | T43 |
| `tools/substrate/test.py` (structural + semantic) | T44 |
| `tools/substrate/domain-scaffold.py` | T45 |

### Doc / config rewrites

| Spec | Plan |
|---|---|
| `CLAUDE.md` extended | T46 |
| `README.md` rewritten | T47 |
| `LEARNING.md` rewritten | T48 |
| `tools/nvim/` hotkey rewiring | T49 |
| `justfile` recipes (update/doctor/doctor-provenance/promote/test/new-domain) | T50 |
| `content/manifest.yaml` gains `domain:` per entry | T51 |
| `content/quality-checks.yaml` extended (structural + semantic) | T52 |

### Validation / smoke test

| Spec | Plan |
|---|---|
| Smoke runbook at `docs/smoke-test.md` | T54 |
| 14-step smoke execution | T55–T68 |
| Independent reviewer gate | T0 (Phase 0) |

### Spec deliverables with no plan task

- **Update workflow runtime** — Spec § Workflows defines `odin-master update [--domain]` as a shell tool with fetcher dispatch (`html_mirror`, `git_clone`, `local_dir`, `pasted_text`), diff-vs-existing, and provenance-check chaining. No plan task implements this. The plan acknowledges the deferral in Self-review notes and in T50's NOTE block; the `update` justfile recipe is a stub. Per user instruction, this deferral is explicitly accepted — see Sequencing/Risk discussion below.
- **`compiled/from-ingest/{summaries,concepts,cross-refs}` subfolders** — Spec layout shows three subfolders under `from-ingest/`. Plan only creates `from-ingest/` (with `.gitkeep`); page-type subfolders will be created at first-Compile-time by the LLM. This is reasonable (subfolders are emergent from page types), not a real gap.
- **`promote.py` walks BOTH `from-ingest/` and `from-query/` for link rewriting** — covered (T43 implementation does both).
- **Vault page-type subfolders** (`vault/<type>/`) — Spec § Promote step 2 says "vault/<type>/". T43's `promote.py` writes to `vault_dir = domain_dir / "vault" / page_type`. Covered.
- **Two-outputs trivial-query escape** — covered in T36 SKILL.md and T7 of smoke test (T61).
- **Cross-domain wikilink validation by doctor** — T42 doctor walks all wikilinks; resolution is path-based, so cross-domain links work the same. Implicit but covered.
- **`docs/adding-sources.md` update** — Spec leaves this file in place but the manifest schema gained a `domain:` field. Plan references the file in T20 README content but does not modify the file itself. Minor gap; flagged in Risk Flags.

---

## 2. Plan justification

Every plan task traces to spec content:

- **T0** → Spec § Meta-process / Independent reviewer.
- **T1–T9** → Spec § Migration table (archive/delete rows).
- **T10–T17** → Spec § Migration table (move rows).
- **T18–T24** → Spec § Directory layout (Odin domain auxiliary files).
- **T25–T28** → Spec § Multi-domain layout (four empty shells) and § Empty-shell content.
- **T29–T34** → Spec § Page templates per type.
- **T35** → Spec § `templates/domain/` (new-domain scaffold).
- **T36** → Spec § Tooling / Skills / `knowledge-substrate-core`.
- **T37** → Spec § Tooling / Per-domain skills (rewritten odin).
- **T38–T41** → Spec § Tooling / Per-domain skills (empty shells).
- **T42–T45** → Spec § Tooling / Shell tools.
- **T46** → Spec § Schema layer (CLAUDE.md role).
- **T47, T48** → Spec § Directory layout (README, LEARNING rewrites).
- **T49** → Spec § Tooling / `tools/nvim/` rewritten.
- **T50** → Spec § `justfile` recipes.
- **T51** → Spec § Compiled-page frontmatter (`domain:` field) and Migration table notes.
- **T52** → Spec § Validation strategy / `quality-checks.yaml` structural + semantic.
- **T53** → Implicit verification gate before smoke (reasonable scaffolding task).
- **T54** → Spec § End-to-end smoke test runbook.
- **T55–T68** → Spec § smoke test 14 steps.

**No tasks lack spec basis.** A few are pure verification scaffolding (T53, T55) which is appropriate for execution-time gating; the spec's "trust but verify" framing covers them.

---

## 3. Sequencing sanity

Order is largely correct. Notes:

- **T1 (top-level dirs) precedes T2/T3 (archives into _archive/)** ✅
- **T10 (source/raw move) precedes T18–T24 (auxiliary files in same domain)** ✅
- **T25–T28 (empty shells) come after T1 created `content/domains/`** ✅
- **T35 (templates/domain/) precedes T45 (domain-scaffold.py which consumes it)** — Phase 5 (T35) finishes before Phase 7 (T45). ✅
- **T42 (doctor.py) is referenced by T43 (promote.py shells out to doctor) and T44 (test.py shells out to doctor)** — All in Phase 7 P7-tools "parallel group." This is technically a soft dependency (promote and test invoke doctor as a subprocess at runtime, not at write-time). Since these are file authoring tasks and the subprocess only runs in sanity-check Step 2, the parallel grouping is fine **provided** the per-task sanity checks for T43 and T44 don't run before T42's file is written. The plan's sanity check for T43 only does a `--dry-run` on a nonexistent path (which exits before invoking doctor), and T44's sanity check passes `--structural` which does invoke doctor. **Risk:** if T44 sanity-check runs in parallel with T42 authoring, doctor.py may not yet exist. Mitigation is light (re-running T44 sanity is cheap), but worth flagging.
- **T51 (manifest schema with `domain:` field)** runs in P8-docs (parallel) but **T42 doctor.py reads manifest only via `domains_dir.iterdir()`** — doctor doesn't parse the manifest, so T51's ordering vs T42 is not a hard dependency. ✅
- **T53 (substrate-wide doctor pass) is serial after Phase 8** ✅ — must follow all writes.
- **T54 (smoke runbook) precedes T55–T68 (executions)** ✅
- **Phase 0 reviewer gate before Phase 1** is enforced by Critical Execution Rule 4. ✅

**One real concern:** within Phase 7 P7-tools, T44's sanity-check step (`test.py --structural`) and T43's import check both implicitly assume `doctor.py` exists. If subagents truly run in parallel, T44's step 2 may race T42. Recommend either: (a) sequence T42 before T43/T44 within the phase, or (b) rely on the user re-running sanity checks once the group settles. Low severity; flagged not blocked.

---

## 4. Risk flags (silent ambiguity resolutions)

The plan made reasonable choices on the following silent decisions:

1. **Empty-shell `compiled/from-ingest/` subfolders** — Spec layout shows `summaries/`, `concepts/`, `cross-refs/`. Plan creates only `from-ingest/` + `.gitkeep`, deferring page-type subfolders to first Compile. **Confirm this is fine.** (Reasonable: subfolders are derived from page types and will be created lazily.)

2. **Vault page-type subfolders** — Spec says "Move file to corresponding `vault/<type>/`". Plan's `promote.py` writes to `vault/<type>/`. Existing migrated content (`vault/studies/`, `vault/lessons/`) does not match this scheme — `studies` and `lessons` are not page-types from the six-template list. Plan does not reconcile. **Confirm:** existing vault content keeps its custom subfolder scheme; new promotions land under `vault/<type>/`. They coexist.

3. **`update` recipe is a stub** — T50's justfile recipe shells out to `domain-scaffold.py` (not actually update logic). The NOTE explains the deferral but the recipe's body is misleading. **Suggest:** make the recipe a clear no-op or echo-only message, not a misdirected shell-out. Low severity.

4. **`tools/nvim/` rewiring leaves `<leader>oq` as a TODO stub** — T49 explicitly leaves the skill-query wiring as a comment for the user to wire later. **Confirm acceptable**; spec says "rewritten: hotkey rewiring" but doesn't dictate the new mechanism. Reasonable deferral to user preference.

5. **`docs/adding-sources.md`** is referenced from T20 README content but never updated. The manifest schema changed (`domain:` field added). **Suggest:** small update of `docs/adding-sources.md` to mention the `domain:` field. Could be folded into T51 or T46.

6. **Doctor's frontmatter parser** uses a manual `text.find("\n---\n", 4)` split. If a vault frontmatter contains `---` inside a multiline string value, the parser breaks. **Acceptable** for personal tooling, but worth knowing.

7. **`promote.py`'s INDEX update** is a string replace (best-effort). The plan's NOTE at T43 says "caller should re-run Compile to fully regen." Spec § Promote step 5 says "Update `compiled/INDEX.md` (move entry from From-Ingest or From-Query section to Vault section)." Plan does not move the entry between sections — only rewrites the link. **Confirm acceptable** — the next Compile pass will rewrite INDEX from scratch and place it in the right section. Mild divergence from spec letter, fine in spirit.

8. **Semantic test's `must_include_source_ids_in_top_5` matching** uses substring on cited paths. Required IDs (e.g., `odin-lang-org`) are matched against full paths via `req in c`. **Reasonable** — this is fuzzy-match by manifest source-id, which is how the existing semantic checks were structured.

9. **Plan task count: 0 + 68 = 69 tasks total** with parallel-group tags throughout. Spec said "~50–80 small tasks tagged with parallel-group identifiers." ✅ honored.

---

## 5. Verdict

**PASS.**

The plan is comprehensive, traceable, and well-sequenced. Every spec deliverable maps to one or more tasks; every task traces back to spec content. Parallel-group tagging is honored (~69 tasks). The deliberate omissions (git commits, `update` fetcher pipeline) match the conditions the user pre-cleared.

The deferred `update` workflow is **structurally survivable**: at v1, `source/raw/` is already populated by the migration moves (T10), so doctor/compile/query/promote all work without a functional `update`. The Update workflow's role (refetch + diff + provenance-check) is genuinely follow-up scope, not a blocker. The smoke test (T55) explicitly works around the deferral by treating "source/raw/ already populated by migration" as PASS for step 1.

Minor items the user may want to confirm before execution:

- The Phase 7 internal ordering risk (T42 vs T43/T44 sanity-check race). If running subagents truly in parallel, consider splitting T42 to run alone first, then T43/T44/T45 in parallel.
- The vault subfolder coexistence (`vault/studies/` + `vault/lessons/` alongside future `vault/<type>/`) — confirm this is the intended end state.
- T50's misleading `update` recipe body (shells out to scaffold, not update). Replace with an echo-only stub.

None of these block execution. Recommend proceeding.
