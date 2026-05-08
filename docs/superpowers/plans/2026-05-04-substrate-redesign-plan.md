# Substrate Redesign Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Restructure `odin_master` from an Odin-specific reference into a multi-domain technical-knowledge substrate per the spec at `docs/superpowers/specs/2026-05-04-substrate-redesign-design.md`.

**Architecture:** Three-tier-per-domain storage (`source/` immutable, `compiled/` LLM-owned with `from-ingest/` and `from-query/` provenance subfolders, `vault/` blessed and frozen). Five domains scaffolded (odin populated, papers/sdl3/engines/graphics empty shells). Workflows live in skill bodies; mechanical ops live in four small Python scripts under `tools/substrate/`.

**Tech Stack:** Markdown for content/skills/templates. Python 3 (stdlib + `pyyaml`) for shell tools. Justfile recipes. PowerShell shell on Windows (Bash also available).

---

## Critical execution rules

1. **No git commits during execution** unless explicitly authorized by the user. Per `CLAUDE.md` ("Never run `git commit`, `git push`, `git merge`, `git rebase`, `git reset`… unless the user has explicitly told you to in this conversation"). The user will commit at checkpoints of their choosing. Do not include `git commit` steps in any task.

2. **The spec is the contract.** Any task that doesn't trace to spec content should not be executed; surface it for user decision.

3. **Trust but verify.** Each task ends with a verification step before marking complete. The dispatching agent re-checks file state against the subagent's report.

4. **Pre-execution gate is mandatory.** Phase 0 (reviewer pass) must complete with verdict PASS before Phase 1 begins.

---

## Pre-execution gate (Phase 0 — serial)

### Task 0: Independent reviewer pass

**Files:**
- Read: `docs/superpowers/specs/2026-05-04-substrate-redesign-design.md`
- Read: `docs/superpowers/plans/2026-05-04-substrate-redesign-plan.md` (this file)
- Create: `docs/superpowers/plans/2026-05-04-substrate-redesign-plan.review.md`

- [ ] **Step 1: Dispatch a `general-purpose` subagent with the reviewer prompt below**

Use the `Agent` tool, `subagent_type: general-purpose`, prompt:

```
You are reviewing an implementation plan against a design spec.

Read these two files in full:
- C:\Users\user1\dev\odin_master\docs\superpowers\specs\2026-05-04-substrate-redesign-design.md
- C:\Users\user1\dev\odin_master\docs\superpowers\plans\2026-05-04-substrate-redesign-plan.md

Produce a conformance report with these sections:

1. Spec coverage — for each major deliverable in the spec (every file, directory, convention, workflow), name the plan task(s) that produce it. List any spec deliverables with no plan task.
2. Plan justification — for each plan task, point to the spec content it implements. List any plan tasks that don't trace back to the spec.
3. Sequencing sanity — flag any plan ordering that breaks dependencies (e.g., compile-related tasks before source/ migration; scaffold-consumers before scaffolds exist).
4. Risk flags — any spec ambiguity the plan resolved by silently choosing one interpretation. List them so the user can confirm.
5. Verdict — PASS / NEEDS REVISION / BLOCK.

Save the report to `C:\Users\user1\dev\odin_master\docs\superpowers\plans\2026-05-04-substrate-redesign-plan.review.md`. Aim for under 1500 words. Read-only — do not edit the plan or the spec.
```

- [ ] **Step 2: Read the review report at `docs/superpowers/plans/2026-05-04-substrate-redesign-plan.review.md`**

- [ ] **Step 3: Surface verdict to the user**

If verdict is PASS: proceed to Phase 1.
If NEEDS REVISION or BLOCK: pause execution, surface specific items to the user, await guidance. Plan revision (or spec revision, if spec is wrong) happens before execution resumes.

---

## Execution model

After Phase 0 PASS:

| Phase | Group | Parallelism | Tasks |
|---|---|---|---|
| 1 | P1-archive | parallel batches of 5 | T1–T9 |
| 2 | P2-odin-move | parallel batches of 4 | T10–T17 |
| 3 | P3-odin-aux | parallel batch | T18–T24 |
| 4 | P4-shells | parallel (one subagent per domain) | T25–T28 |
| 5 | P5-templates | parallel | T29–T35 |
| 6 | P6-skills | parallel | T36–T41 |
| 7a | (serial) | T42 alone first | T42 |
| 7b | P7-tools-rest | parallel after 7a | T43–T45 |
| 8 | P8-docs | parallel | T46–T51 |
| 9 | (serial) | one at a time | T52–T53 |
| 10 | (serial) | one at a time | T54–T68 |

`subagent-driven-development` dispatches each parallel group as a batch and waits for the group to complete before starting the next phase. Each subagent reports files touched + one-line diff. Main agent verifies before marking complete.

---

## Phase 1: Top-level scaffolding and archives (parallel-group: P1-archive)

### Task 1: Create new top-level directories

**Files:**
- Create dir: `content/_archive/`
- Create dir: `content/domains/`
- Create dir: `templates/page-types/`
- Create dir: `templates/domain/`
- Create dir: `tools/substrate/`
- Create dir: `tools/domains/`

- [ ] **Step 1: Create directories with PowerShell `New-Item`**

```powershell
New-Item -ItemType Directory -Force -Path C:\Users\user1\dev\odin_master\content\_archive
New-Item -ItemType Directory -Force -Path C:\Users\user1\dev\odin_master\content\domains
New-Item -ItemType Directory -Force -Path C:\Users\user1\dev\odin_master\templates\page-types
New-Item -ItemType Directory -Force -Path C:\Users\user1\dev\odin_master\templates\domain
New-Item -ItemType Directory -Force -Path C:\Users\user1\dev\odin_master\tools\substrate
New-Item -ItemType Directory -Force -Path C:\Users\user1\dev\odin_master\tools\domains
```

- [ ] **Step 2: Verify directories exist**

```powershell
Get-Item C:\Users\user1\dev\odin_master\content\_archive,
         C:\Users\user1\dev\odin_master\content\domains,
         C:\Users\user1\dev\odin_master\templates\page-types,
         C:\Users\user1\dev\odin_master\templates\domain,
         C:\Users\user1\dev\odin_master\tools\substrate,
         C:\Users\user1\dev\odin_master\tools\domains
```

Expected: all six paths print as DirectoryInfo entries.

### Task 2: Archive `content/wiki/concepts/`

- [ ] **Step 1: Verify source exists**

```powershell
Test-Path C:\Users\user1\dev\odin_master\content\wiki\concepts
```
Expected: `True`.

- [ ] **Step 2: Move directory**

```powershell
Move-Item C:\Users\user1\dev\odin_master\content\wiki\concepts `
          C:\Users\user1\dev\odin_master\content\_archive\old-wiki-concepts
```

- [ ] **Step 3: Verify destination exists, source gone**

```powershell
Test-Path C:\Users\user1\dev\odin_master\content\_archive\old-wiki-concepts
Test-Path C:\Users\user1\dev\odin_master\content\wiki\concepts
```
Expected: `True`, `False`.

### Task 3: Archive `content/wiki/summaries/`

- [ ] **Step 1: Verify source exists**

```powershell
Test-Path C:\Users\user1\dev\odin_master\content\wiki\summaries
```

- [ ] **Step 2: Move**

```powershell
Move-Item C:\Users\user1\dev\odin_master\content\wiki\summaries `
          C:\Users\user1\dev\odin_master\content\_archive\old-wiki-summaries
```

- [ ] **Step 3: Verify**

```powershell
Test-Path C:\Users\user1\dev\odin_master\content\_archive\old-wiki-summaries
Test-Path C:\Users\user1\dev\odin_master\content\wiki\summaries
```
Expected: `True`, `False`.

### Task 4: Delete `content/wiki/INDEX.md` and the now-empty `content/wiki/` dir

- [ ] **Step 1: Delete INDEX.md if present**

```powershell
Remove-Item -Force C:\Users\user1\dev\odin_master\content\wiki\INDEX.md -ErrorAction SilentlyContinue
```

- [ ] **Step 2: Remove empty content/wiki/ directory**

```powershell
Remove-Item C:\Users\user1\dev\odin_master\content\wiki -ErrorAction SilentlyContinue
```

- [ ] **Step 3: Verify gone**

```powershell
Test-Path C:\Users\user1\dev\odin_master\content\wiki
```
Expected: `False`.

### Task 5: Delete obsolete debug artifacts

- [ ] **Step 1: List candidates first (sanity check)**

```powershell
Get-ChildItem C:\Users\user1\dev\odin_master\bash.exe.stackdump,
              C:\Users\user1\dev\odin_master\bootstrap-out.log,
              C:\Users\user1\dev\odin_master\odin_master_template.egg-info -ErrorAction SilentlyContinue
```

- [ ] **Step 2: Delete**

```powershell
Remove-Item -Force C:\Users\user1\dev\odin_master\bash.exe.stackdump -ErrorAction SilentlyContinue
Remove-Item -Force C:\Users\user1\dev\odin_master\bootstrap-out.log -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force C:\Users\user1\dev\odin_master\odin_master_template.egg-info -ErrorAction SilentlyContinue
```

- [ ] **Step 3: Verify gone**

```powershell
Test-Path C:\Users\user1\dev\odin_master\bash.exe.stackdump
Test-Path C:\Users\user1\dev\odin_master\bootstrap-out.log
Test-Path C:\Users\user1\dev\odin_master\odin_master_template.egg-info
```
Expected: all `False`.

### Task 6: Inspect `content/outputs/` and decide

The spec says "Deleted if scratch; verify before removing."

- [ ] **Step 1: List contents**

```powershell
Get-ChildItem C:\Users\user1\dev\odin_master\content\outputs -Recurse -ErrorAction SilentlyContinue
```

- [ ] **Step 2: If empty or only contains stale generated artifacts (no human-curated content), delete**

```powershell
Remove-Item -Recurse -Force C:\Users\user1\dev\odin_master\content\outputs -ErrorAction SilentlyContinue
```

If contents are uncertain: **stop, surface to user, await decision.** Don't delete on guess.

- [ ] **Step 3: Verify**

```powershell
Test-Path C:\Users\user1\dev\odin_master\content\outputs
```

### Task 7: Delete `content/index/`

- [ ] **Step 1: List contents (sanity)**

```powershell
Get-ChildItem C:\Users\user1\dev\odin_master\content\index -ErrorAction SilentlyContinue
```

- [ ] **Step 2: Delete**

```powershell
Remove-Item -Recurse -Force C:\Users\user1\dev\odin_master\content\index -ErrorAction SilentlyContinue
```

- [ ] **Step 3: Verify gone**

```powershell
Test-Path C:\Users\user1\dev\odin_master\content\index
```
Expected: `False`.

### Task 8: Delete `tools/indexer/`

- [ ] **Step 1: Delete**

```powershell
Remove-Item -Recurse -Force C:\Users\user1\dev\odin_master\tools\indexer -ErrorAction SilentlyContinue
```

- [ ] **Step 2: Verify**

```powershell
Test-Path C:\Users\user1\dev\odin_master\tools\indexer
```
Expected: `False`.

### Task 9: Delete `tools/search/` (broken `odin-search`)

- [ ] **Step 1: Delete**

```powershell
Remove-Item -Recurse -Force C:\Users\user1\dev\odin_master\tools\search -ErrorAction SilentlyContinue
```

- [ ] **Step 2: Verify**

```powershell
Test-Path C:\Users\user1\dev\odin_master\tools\search
```
Expected: `False`.

---

## Phase 2: Odin domain content migration (parallel-group: P2-odin-move)

### Task 10: Move `content/sources/*` → `content/domains/odin/source/raw/`

- [ ] **Step 1: Create destination**

```powershell
New-Item -ItemType Directory -Force -Path C:\Users\user1\dev\odin_master\content\domains\odin\source\raw
```

- [ ] **Step 2: Move tier subfolders**

```powershell
Move-Item C:\Users\user1\dev\odin_master\content\sources\tier1-authoritative `
          C:\Users\user1\dev\odin_master\content\domains\odin\source\raw\tier1-authoritative
Move-Item C:\Users\user1\dev\odin_master\content\sources\tier2-curated `
          C:\Users\user1\dev\odin_master\content\domains\odin\source\raw\tier2-curated
Move-Item C:\Users\user1\dev\odin_master\content\sources\tier3-community `
          C:\Users\user1\dev\odin_master\content\domains\odin\source\raw\tier3-community
```

- [ ] **Step 3: Remove now-empty `content/sources/`**

```powershell
Remove-Item C:\Users\user1\dev\odin_master\content\sources -ErrorAction SilentlyContinue
```

- [ ] **Step 4: Verify destination has all tiers**

```powershell
Get-ChildItem C:\Users\user1\dev\odin_master\content\domains\odin\source\raw
```
Expected: three directories (`tier1-authoritative`, `tier2-curated`, `tier3-community`).

### Task 11: Move `studies/` → `content/domains/odin/vault/studies/`

- [ ] **Step 1: Create vault dir**

```powershell
New-Item -ItemType Directory -Force -Path C:\Users\user1\dev\odin_master\content\domains\odin\vault
```

- [ ] **Step 2: Move**

```powershell
Move-Item C:\Users\user1\dev\odin_master\studies `
          C:\Users\user1\dev\odin_master\content\domains\odin\vault\studies
```

- [ ] **Step 3: Verify**

```powershell
Get-ChildItem C:\Users\user1\dev\odin_master\content\domains\odin\vault\studies
Test-Path C:\Users\user1\dev\odin_master\studies
```
Expected: at minimum `arena-allocator.cited.md` and `arena-allocator.quick.md`. Top-level `studies/` returns `False`.

### Task 12: Move `lessons/` → `content/domains/odin/vault/lessons/`

- [ ] **Step 1: Move**

```powershell
Move-Item C:\Users\user1\dev\odin_master\lessons `
          C:\Users\user1\dev\odin_master\content\domains\odin\vault\lessons
```

- [ ] **Step 2: Verify**

```powershell
Get-ChildItem C:\Users\user1\dev\odin_master\content\domains\odin\vault\lessons
Test-Path C:\Users\user1\dev\odin_master\lessons
```
Expected: 20+ entries (00-setup-check through 19-search-driven-learning + README.md). Top-level `lessons/` returns `False`.

### Task 13: Move top-level `templates/{cli,game,lib}/` → `content/domains/odin/templates/`

NOTE: `templates/page-types/` and `templates/domain/` were created in Task 1 and are *substrate-wide* templates — they're at the top level. The `cli/`, `game/`, `lib/` Odin project scaffolds are *domain-specific* and move under odin.

- [ ] **Step 1: Create destination**

```powershell
New-Item -ItemType Directory -Force -Path C:\Users\user1\dev\odin_master\content\domains\odin\templates
```

- [ ] **Step 2: Move the three Odin scaffolds**

```powershell
Move-Item C:\Users\user1\dev\odin_master\templates\cli `
          C:\Users\user1\dev\odin_master\content\domains\odin\templates\cli
Move-Item C:\Users\user1\dev\odin_master\templates\game `
          C:\Users\user1\dev\odin_master\content\domains\odin\templates\game
Move-Item C:\Users\user1\dev\odin_master\templates\lib `
          C:\Users\user1\dev\odin_master\content\domains\odin\templates\lib
```

- [ ] **Step 3: Verify top-level templates/ now contains only page-types/ and domain/**

```powershell
Get-ChildItem C:\Users\user1\dev\odin_master\templates
```
Expected: only `page-types` and `domain` (both empty so far).

### Task 14: Move `odinfmt.json` → `content/domains/odin/config/odinfmt.json`

- [ ] **Step 1: Create destination**

```powershell
New-Item -ItemType Directory -Force -Path C:\Users\user1\dev\odin_master\content\domains\odin\config
```

- [ ] **Step 2: Move**

```powershell
Move-Item C:\Users\user1\dev\odin_master\odinfmt.json `
          C:\Users\user1\dev\odin_master\content\domains\odin\config\odinfmt.json
```

- [ ] **Step 3: Verify**

```powershell
Test-Path C:\Users\user1\dev\odin_master\content\domains\odin\config\odinfmt.json
Test-Path C:\Users\user1\dev\odin_master\odinfmt.json
```
Expected: `True`, `False`.

### Task 15: Move `ols.json` → `content/domains/odin/config/ols.json`

- [ ] **Step 1: Move**

```powershell
Move-Item C:\Users\user1\dev\odin_master\ols.json `
          C:\Users\user1\dev\odin_master\content\domains\odin\config\ols.json
```

- [ ] **Step 2: Verify**

```powershell
Test-Path C:\Users\user1\dev\odin_master\content\domains\odin\config\ols.json
Test-Path C:\Users\user1\dev\odin_master\ols.json
```
Expected: `True`, `False`.

### Task 16: Move `tools/lessons-check/` → `tools/domains/odin/lessons-check/`

- [ ] **Step 1: Create destination parent**

```powershell
New-Item -ItemType Directory -Force -Path C:\Users\user1\dev\odin_master\tools\domains\odin
```

- [ ] **Step 2: Move**

```powershell
Move-Item C:\Users\user1\dev\odin_master\tools\lessons-check `
          C:\Users\user1\dev\odin_master\tools\domains\odin\lessons-check
```

- [ ] **Step 3: Verify**

```powershell
Test-Path C:\Users\user1\dev\odin_master\tools\domains\odin\lessons-check
Test-Path C:\Users\user1\dev\odin_master\tools\lessons-check
```
Expected: `True`, `False`.

### Task 17: Move `tools/odin_lib/` → `tools/domains/odin/odin_lib/`

- [ ] **Step 1: Move**

```powershell
Move-Item C:\Users\user1\dev\odin_master\tools\odin_lib `
          C:\Users\user1\dev\odin_master\tools\domains\odin\odin_lib
```

- [ ] **Step 2: Verify**

```powershell
Test-Path C:\Users\user1\dev\odin_master\tools\domains\odin\odin_lib
Test-Path C:\Users\user1\dev\odin_master\tools\odin_lib
```
Expected: `True`, `False`.

---

## Phase 3: Odin domain auxiliary files (parallel-group: P3-odin-aux)

### Task 18: Create `content/domains/odin/source/notes/` (empty)

- [ ] **Step 1: Create dir + .gitkeep**

```powershell
New-Item -ItemType Directory -Force -Path C:\Users\user1\dev\odin_master\content\domains\odin\source\notes
New-Item -ItemType File -Force -Path C:\Users\user1\dev\odin_master\content\domains\odin\source\notes\.gitkeep
```

- [ ] **Step 2: Verify**

```powershell
Test-Path C:\Users\user1\dev\odin_master\content\domains\odin\source\notes\.gitkeep
```
Expected: `True`.

### Task 19: Create `content/domains/odin/source/contradictions.md`

**Files:**
- Create: `content/domains/odin/source/contradictions.md`

- [ ] **Step 1: Write file with this exact content:**

```markdown
---
type: contradictions
domain: odin
---

# Contradictions — Odin Domain

Append-only log of source disagreements. The LLM proposes new entries during Ingest and Lint workflows (with status `[pending]`); the user reviews and resolves.

Format:

```
## [YYYY-MM-DD] <topic>
- Source A: <claim> (source: <source-id>)
- Source B: <claim> (source: <source-id>)
- **Resolution**: <user's resolution, or TBD>
```

Pending entries below this line.

---
```

- [ ] **Step 2: Verify**

```powershell
Get-Content C:\Users\user1\dev\odin_master\content\domains\odin\source\contradictions.md | Select-Object -First 5
```
Expected: shows YAML frontmatter + heading.

### Task 20: Create `content/domains/odin/source/README.md`

**Files:**
- Create: `content/domains/odin/source/README.md`

- [ ] **Step 1: Write file with this exact content:**

```markdown
---
type: domain-readme
domain: odin
---

# Odin Domain — Source

This directory holds the immutable source material for the Odin domain. The LLM reads from here but never writes.

## Layout

- `raw/` — upstream-mirrored material, refetched by `odin-master update`
  - `tier1-authoritative/` — odin-lang.org docs, stdlib source (`core:*`), vendor source (`vendor:*`)
  - `tier2-curated/` — Karl Zylinski, gingerBill, jakubtomsu blogs (handpicked curators)
  - `tier3-community/` — odin-examples repo, community gists
- `notes/` — reserved for hand-written content (currently empty by default)
- `contradictions.md` — append-only log of source disagreements (user-maintained)
- `README.md` — this file

## Tier semantics for Odin

| Tier | What lives here | Trust |
|---|---|---|
| 1 | Official Odin docs, stdlib source code, vendor source code | Authoritative — canonical |
| 2 | Curator blogs (Karl Zylinski, gingerBill, jakubtomsu) | Curated — trusted but opinionated |
| 3 | Community gists, example repos, third-party tutorials | Community — treat with skepticism |

## Adding a new source

See `docs/adding-sources.md` for the manifest schema. New sources go into `manifest.yaml` with `domain: odin` and the appropriate tier; running `odin-master update` fetches them into `raw/`.
```

- [ ] **Step 2: Verify**

```powershell
(Get-Content C:\Users\user1\dev\odin_master\content\domains\odin\source\README.md).Length
```
Expected: nonzero.

### Task 21: Create `content/domains/odin/compiled/` directory tree

- [ ] **Step 1: Create directories**

```powershell
New-Item -ItemType Directory -Force -Path C:\Users\user1\dev\odin_master\content\domains\odin\compiled
New-Item -ItemType Directory -Force -Path C:\Users\user1\dev\odin_master\content\domains\odin\compiled\from-ingest
New-Item -ItemType Directory -Force -Path C:\Users\user1\dev\odin_master\content\domains\odin\compiled\from-query
```

- [ ] **Step 2: Create `.gitkeep` placeholders**

```powershell
New-Item -ItemType File -Force -Path C:\Users\user1\dev\odin_master\content\domains\odin\compiled\from-ingest\.gitkeep
New-Item -ItemType File -Force -Path C:\Users\user1\dev\odin_master\content\domains\odin\compiled\from-query\.gitkeep
```

- [ ] **Step 3: Verify**

```powershell
Get-ChildItem C:\Users\user1\dev\odin_master\content\domains\odin\compiled -Force
```
Expected: `from-ingest/`, `from-query/`, plus their .gitkeep files.

### Task 22: Create `content/domains/odin/compiled/INDEX.md`

**Files:**
- Create: `content/domains/odin/compiled/INDEX.md`

- [ ] **Step 1: Write file:**

```markdown
# Odin Domain — INDEX

Last regenerated: (not yet compiled)

## From ingest

(no pages yet — run a Compile pass via the odin skill)

## From query

(no pages yet — produced by Query workflow when non-trivial questions are asked)

## Vault (blessed, never auto-edited)

- [Studies](../vault/studies/) — citation-backed deep-dives
- [Lessons](../vault/lessons/) — pedagogical curriculum (lessons 00–19)
```

- [ ] **Step 2: Verify**

```powershell
Test-Path C:\Users\user1\dev\odin_master\content\domains\odin\compiled\INDEX.md
```
Expected: `True`.

### Task 23: Create `content/domains/odin/compiled/log.md`

**Files:**
- Create: `content/domains/odin/compiled/log.md`

- [ ] **Step 1: Write file:**

```markdown
# Odin Domain — Log

Append-only timeline. Greppable with `grep "^## \[" log.md`.

## [2026-05-04] init | substrate-redesign migration
- Domain restructured per `docs/superpowers/specs/2026-05-04-substrate-redesign-design.md`
- Awaiting first Compile pass to populate `from-ingest/`
```

- [ ] **Step 2: Verify**

```powershell
Test-Path C:\Users\user1\dev\odin_master\content\domains\odin\compiled\log.md
```

### Task 24: Create `content/domains/odin/vault/` placeholders for absent subfolders

The `vault/studies/` and `vault/lessons/` already exist (moved in Tasks 11–12). Just verify `vault/` exists and is structurally complete.

- [ ] **Step 1: Verify vault layout**

```powershell
Get-ChildItem C:\Users\user1\dev\odin_master\content\domains\odin\vault
```
Expected: at minimum `studies/` and `lessons/`.

- [ ] **Step 2: No further action — vault is content-driven (only studies and lessons exist as v1 blessed content)**

---

## Phase 4: Empty shell domains (parallel-group: P4-shells — one subagent per domain)

Each shell domain has identical structure with substituted name and tier semantics. Dispatch four subagents in parallel — one per domain.

**Shared template (substitute `<DOMAIN>` and `<TIER1_NAME>`, `<TIER2_NAME>`, `<TIER3_NAME>`, `<DESCRIPTION>` per domain):**

| Domain | Tier 1 name | Tier 2 name | Tier 3 name |
|---|---|---|---|
| papers | `tier1-peer-reviewed` | `tier2-arxiv` | `tier3-blog-summary` |
| sdl3 | `tier1-authoritative` | `tier2-curated` | `tier3-community` |
| engines | `tier1-authoritative` | `tier2-curated` | `tier3-community` |
| graphics | `tier1-authoritative` | `tier2-curated` | `tier3-community` |

### Task 25: Scaffold `content/domains/papers/`

**Files (all created):**
- `content/domains/papers/source/raw/tier1-peer-reviewed/.gitkeep`
- `content/domains/papers/source/raw/tier2-arxiv/.gitkeep`
- `content/domains/papers/source/raw/tier3-blog-summary/.gitkeep`
- `content/domains/papers/source/notes/.gitkeep`
- `content/domains/papers/source/contradictions.md`
- `content/domains/papers/source/README.md`
- `content/domains/papers/compiled/from-ingest/.gitkeep`
- `content/domains/papers/compiled/from-query/.gitkeep`
- `content/domains/papers/compiled/INDEX.md`
- `content/domains/papers/compiled/log.md`
- `content/domains/papers/vault/.gitkeep`

- [ ] **Step 1: Create directory tree + .gitkeeps**

```powershell
$d = "C:\Users\user1\dev\odin_master\content\domains\papers"
New-Item -ItemType Directory -Force -Path $d\source\raw\tier1-peer-reviewed
New-Item -ItemType Directory -Force -Path $d\source\raw\tier2-arxiv
New-Item -ItemType Directory -Force -Path $d\source\raw\tier3-blog-summary
New-Item -ItemType Directory -Force -Path $d\source\notes
New-Item -ItemType Directory -Force -Path $d\compiled\from-ingest
New-Item -ItemType Directory -Force -Path $d\compiled\from-query
New-Item -ItemType Directory -Force -Path $d\vault
'placeholder' | Set-Content $d\source\raw\tier1-peer-reviewed\.gitkeep
'placeholder' | Set-Content $d\source\raw\tier2-arxiv\.gitkeep
'placeholder' | Set-Content $d\source\raw\tier3-blog-summary\.gitkeep
'placeholder' | Set-Content $d\source\notes\.gitkeep
'placeholder' | Set-Content $d\compiled\from-ingest\.gitkeep
'placeholder' | Set-Content $d\compiled\from-query\.gitkeep
'placeholder' | Set-Content $d\vault\.gitkeep
```

- [ ] **Step 2: Write `source/contradictions.md` (one-line stub)**

Content:
```markdown
---
type: contradictions
domain: papers
---

# Contradictions — Papers Domain

(empty — domain not yet populated)
```

- [ ] **Step 3: Write `source/README.md`**

Content:
```markdown
---
type: domain-readme
domain: papers
---

# Papers Domain — Source

This domain is an **empty shell**. Reserved for ingestion of research papers (peer-reviewed venues, arxiv preprints, paper-summary blogs) when learning extends into research-paper territory.

## Tier semantics for Papers

| Tier | What lives here | Trust |
|---|---|---|
| 1 (`tier1-peer-reviewed`) | Peer-reviewed venues (SIGGRAPH, IEEE, ACM, journals) | Authoritative — peer review |
| 2 (`tier2-arxiv`) | arxiv preprints, technical reports | Trusted but unreviewed |
| 3 (`tier3-blog-summary`) | Blog summaries, reviews of papers | Community interpretation |

## To populate

1. Add manifest entries with `domain: papers`. The `arxiv-pdf` fetcher and `pdf-to-markdown` processor will likely need to be implemented at that point (see spec § Multi-domain pattern → "Adding a sixth domain").
2. Run `odin-master update --domain papers`.
3. Compile via the `papers` skill.
```

- [ ] **Step 4: Write `compiled/INDEX.md`**

Content:
```markdown
# Papers Domain — INDEX

Last regenerated: (empty shell — no sources ingested yet)

## From ingest
(none)

## From query
(none)

## Vault
(none)
```

- [ ] **Step 5: Write `compiled/log.md`**

Content:
```markdown
# Papers Domain — Log

## [2026-05-04] init | empty shell
- Domain scaffolded by substrate-redesign migration
- No sources ingested yet
```

- [ ] **Step 6: Verify directory structure**

```powershell
Get-ChildItem -Recurse C:\Users\user1\dev\odin_master\content\domains\papers
```
Expected: full tree present, all files non-empty.

### Task 26: Scaffold `content/domains/sdl3/`

Identical structure to Task 25, substituting `papers` → `sdl3` and using:
- Tier names: `tier1-authoritative`, `tier2-curated`, `tier3-community`

**Tier semantics block for `source/README.md`:**
```markdown
| Tier | What lives here | Trust |
|---|---|---|
| 1 | libsdl.org docs, SDL3 headers, Khronos specs (Vulkan/OpenGL) | Authoritative — canonical |
| 2 | SDL maintainer blogs, sample code | Curated |
| 3 | Community wiki, third-party tutorials | Community |
```

**Description block for `source/README.md` intro:**
> Reserved for ingestion of SDL3 documentation, headers, and the Khronos specs (Vulkan/OpenGL) when learning extends into graphics-API programming.

- [ ] **Step 1: Create directory tree + .gitkeeps + write all 4 files (contradictions, README, INDEX, log) per the template above.** Use the same structure as Task 25 with the substitutions.

- [ ] **Step 2: Verify**

```powershell
Get-ChildItem -Recurse C:\Users\user1\dev\odin_master\content\domains\sdl3
```

### Task 27: Scaffold `content/domains/engines/`

Identical structure. Tier semantics:
```markdown
| Tier | What lives here | Trust |
|---|---|---|
| 1 | Engine source code (godot, bevy, etc.), official engine docs | Authoritative |
| 2 | Engine-team blogs, conference talks | Curated |
| 3 | Community guides, plugins | Community |
```

Description: *Reserved for ingestion of game-engine source code and documentation when learning extends to engine internals.*

- [ ] **Step 1: Create + write per template**
- [ ] **Step 2: Verify**

### Task 28: Scaffold `content/domains/graphics/`

Tier semantics:
```markdown
| Tier | What lives here | Trust |
|---|---|---|
| 1 | Khronos specs, GPU vendor docs (AMD GPUOpen, NVIDIA Dev) | Authoritative |
| 2 | Practitioner blogs (Inigo Quilez, Bart Wronski, Aras P) | Curated |
| 3 | Stack Overflow answers, blog tutorials | Community |
```

Description: *Reserved for graphics-programming material — Khronos specs, GPU vendor docs, practitioner blogs — when learning crosses into rendering and GPU work.*

- [ ] **Step 1: Create + write per template**
- [ ] **Step 2: Verify**

---

## Phase 5: Templates (parallel-group: P5-templates)

Each page-type template is a standalone file with frontmatter and required body sections (filled in with `{{placeholders}}` for the LLM to substitute during compile).

### Task 29: Write `templates/page-types/article.template.md`

**Files:**
- Create: `templates/page-types/article.template.md`

- [ ] **Step 1: Write file:**

```markdown
---
title: {{title}}
type: article
domain: {{domain}}
tier: {{tier}}
provenance: {{from-ingest | from-query}}
source_ids:
  - path: {{source-path}}
    sha256: {{hex}}
compiled_at: {{ISO-8601 timestamp}}
compiled_by: {{model-id}}
status: draft
---

# {{title}}

## TLDR

{{≤3 sentences capturing the page's core takeaway. Required.}}

## Body

{{The synthesized content, prose form. Required.}}

## Caveats / Edge Cases

{{Conditions where the article's claims don't hold, footguns, exceptions. Required — at least one entry.}}

## Sources

{{Each source_ids entry from frontmatter as an explicit wikilink. Required.}}

- [[{{source-path}}]]
```

- [ ] **Step 2: Verify**

```powershell
Test-Path C:\Users\user1\dev\odin_master\templates\page-types\article.template.md
```

### Task 30: Write `templates/page-types/paper.template.md`

- [ ] **Step 1: Write file:**

```markdown
---
title: {{title}}
type: paper
domain: papers
tier: {{tier}}
provenance: from-ingest
source_ids:
  - path: {{source-path}}
    sha256: {{hex}}
compiled_at: {{ISO-8601 timestamp}}
compiled_by: {{model-id}}
status: draft
---

# {{title}}

## TLDR

{{≤3 sentences. The paper's central claim and result.}}

## Methodology

{{What the authors did. Datasets, instruments, controls, procedure. Required.}}

## Claims

{{Each significant claim with span anchor. Required.

Format:
- **{{claim}}** ([[{{source-path}}#p{{page}}]])
}}

## Datasets

{{Datasets, benchmarks, or experimental subjects used. Note availability and reproducibility constraints. Required.}}

## Limitations

{{What the paper itself acknowledges as limits, plus any limits the LLM identifies. Required.}}

## Sources

- [[{{source-path}}]]
```

### Task 31: Write `templates/page-types/code-symbol.template.md`

- [ ] **Step 1: Write file:**

```markdown
---
title: {{title}}
type: code-symbol
domain: {{domain}}
tier: {{tier}}
provenance: {{from-ingest | from-query}}
source_ids:
  - path: {{source-path}}
    sha256: {{hex}}
compiled_at: {{ISO-8601 timestamp}}
compiled_by: {{model-id}}
status: draft
---

# {{title}}

## TLDR

{{Signature + one-line purpose. Required.}}

## Signature

```{{language}}
{{full signature, including parameters, return type, generics}}
```

## Examples

{{One or more usage examples. Each should compile/run as-is. Required.}}

## Gotchas / Footguns

{{Common mistakes, undefined-behavior cases, surprising defaults. Required — at least one.}}

## Related Symbols

{{Wikilinks to related code-symbol pages, peer functions/types in the same module.}}

## Sources

- [[{{source-path}}#L{{line-number}}]]
```

### Task 32: Write `templates/page-types/blog-post.template.md`

- [ ] **Step 1: Write file:**

```markdown
---
title: {{title}}
type: blog-post
domain: {{domain}}
tier: {{tier}}
provenance: from-ingest
source_ids:
  - path: {{source-path}}
    sha256: {{hex}}
compiled_at: {{ISO-8601 timestamp}}
compiled_by: {{model-id}}
status: draft
---

# {{title}}

## TLDR

{{≤3 sentences. What the post argues.}}

## Body

{{Prose summary of the post's content. Faithful to author's framing.}}

## Author's Stance

{{Where this post is opinionated, polemical, or makes a strong recommendation. Distinguishes opinion from fact. Required.}}

## Sources

- [[{{source-path}}]]
```

### Task 33: Write `templates/page-types/concept.template.md`

- [ ] **Step 1: Write file:**

```markdown
---
title: {{title}}
type: concept
domain: {{domain}}
tier: {{tier}}
provenance: {{from-ingest | from-query}}
source_ids:
  - path: {{source-path}}
    sha256: {{hex}}
compiled_at: {{ISO-8601 timestamp}}
compiled_by: {{model-id}}
status: draft
---

# {{title}}

## TLDR

{{≤3 sentences. Required.}}

## Definition

{{Precise definition of the concept. Required.}}

## Examples

{{Concrete examples, ideally one trivial + one realistic. Required.}}

## Common Misconceptions

{{Things people (or earlier-version-of-you) often get wrong about this concept. Required — at least one.}}

## Related Concepts

{{Wikilinks to neighboring concept pages.}}

## Sources

- [[{{source-path}}]]
```

### Task 34: Write `templates/page-types/summary.template.md`

- [ ] **Step 1: Write file:**

```markdown
---
title: {{title}}
type: summary
domain: {{domain}}
tier: {{tier}}
provenance: from-ingest
source_ids:
  - path: {{source-path}}
    sha256: {{hex}}
compiled_at: {{ISO-8601 timestamp}}
compiled_by: {{model-id}}
status: draft
---

# {{title}}

## TLDR

{{≤3 sentences. Required.}}

## Key Points

{{Bulleted list of the source's main takeaways. Required.}}

- {{point 1}}
- {{point 2}}

## Quoted Highlights

{{Direct quotes from the source with span anchors. Required — at least one.

Format:
> {{quote}}
> — [[{{source-path}}#p{{page or line}}]]
}}

## Sources

- [[{{source-path}}]]
```

### Task 35: Scaffold `templates/domain/` (the new-domain template)

**Files:**
- `templates/domain/source/raw/tier1/.gitkeep`
- `templates/domain/source/raw/tier2/.gitkeep`
- `templates/domain/source/raw/tier3/.gitkeep`
- `templates/domain/source/notes/.gitkeep`
- `templates/domain/source/contradictions.md`
- `templates/domain/source/README.md.template`
- `templates/domain/compiled/from-ingest/.gitkeep`
- `templates/domain/compiled/from-query/.gitkeep`
- `templates/domain/compiled/INDEX.md`
- `templates/domain/compiled/log.md`
- `templates/domain/vault/.gitkeep`

- [ ] **Step 1: Create directory tree + .gitkeeps**

```powershell
$t = "C:\Users\user1\dev\odin_master\templates\domain"
New-Item -ItemType Directory -Force -Path $t\source\raw\tier1
New-Item -ItemType Directory -Force -Path $t\source\raw\tier2
New-Item -ItemType Directory -Force -Path $t\source\raw\tier3
New-Item -ItemType Directory -Force -Path $t\source\notes
New-Item -ItemType Directory -Force -Path $t\compiled\from-ingest
New-Item -ItemType Directory -Force -Path $t\compiled\from-query
New-Item -ItemType Directory -Force -Path $t\vault
'placeholder' | Set-Content $t\source\raw\tier1\.gitkeep
'placeholder' | Set-Content $t\source\raw\tier2\.gitkeep
'placeholder' | Set-Content $t\source\raw\tier3\.gitkeep
'placeholder' | Set-Content $t\source\notes\.gitkeep
'placeholder' | Set-Content $t\compiled\from-ingest\.gitkeep
'placeholder' | Set-Content $t\compiled\from-query\.gitkeep
'placeholder' | Set-Content $t\vault\.gitkeep
```

- [ ] **Step 2: Write `source/contradictions.md`**

```markdown
---
type: contradictions
domain: {{domain}}
---

# Contradictions — {{domain}} Domain

(empty)
```

- [ ] **Step 3: Write `source/README.md.template`**

```markdown
---
type: domain-readme
domain: {{domain}}
---

# {{domain}} Domain — Source

{{one-paragraph description of what this domain covers}}

## Layout

- `raw/` — upstream-mirrored material (tier1/tier2/tier3 per the manifest)
- `notes/` — reserved for hand-written content
- `contradictions.md` — append-only log of source disagreements
- `README.md` — this file

## Tier semantics for {{domain}}

| Tier | What lives here | Trust |
|---|---|---|
| 1 | {{tier1 description}} | Authoritative |
| 2 | {{tier2 description}} | Curated |
| 3 | {{tier3 description}} | Community |
```

- [ ] **Step 4: Write `compiled/INDEX.md`**

```markdown
# {{domain}} Domain — INDEX

Last regenerated: (empty shell — no sources ingested yet)

## From ingest
(none)

## From query
(none)

## Vault
(none)
```

- [ ] **Step 5: Write `compiled/log.md`**

```markdown
# {{domain}} Domain — Log

## [{{scaffold-date}}] init | empty shell
- Created by `odin-master new domain {{domain}}`
```

- [ ] **Step 6: Verify**

```powershell
Get-ChildItem -Recurse C:\Users\user1\dev\odin_master\templates\domain
```

---

## Phase 6: Skill authoring (parallel-group: P6-skills)

### Task 36: Write `.claude/skills/knowledge-substrate-core/SKILL.md`

**Files:**
- Create: `.claude/skills/knowledge-substrate-core/SKILL.md`

- [ ] **Step 1: Write file with this exact content:**

````markdown
---
name: knowledge-substrate-core
description: Use when running any of the substrate workflows — Ingest, Compile, Query, Lint — on a knowledge-substrate domain. Per-domain skills (odin, papers, sdl3, engines, graphics) defer to this skill for workflow orchestration. Holds the authoritative workflow definitions, validator rules, frontmatter schema, two-outputs rule, and source/compiled/vault discipline.
---

# Knowledge Substrate Core

This skill defines the workflows that operate on every domain in `content/domains/<d>/`. Per-domain skills (`odin`, `papers`, `sdl3`, `engines`, `graphics`) hold tier semantics and quirks but route workflow execution through here.

## Prime directives (non-negotiable)

1. **The LLM never writes to `source/` or `vault/`.** Compile produces only into `compiled/`. Promote (a shell tool) is the only way content moves into `vault/`.
2. **Compiled output is split by provenance.** Pages produced by Ingest go to `compiled/from-ingest/`. Pages produced by Query (under the two-outputs rule) go to `compiled/from-query/`. The frontmatter `provenance:` field must match the folder.
3. **INDEX.md is regenerated on every Compile pass.** No exceptions. The workflow does not mark Compile complete without writing INDEX.md.
4. **Validator-at-compile-time is non-negotiable.** Pages with malformed frontmatter, broken citations, missing required sections, or empty TLDRs are rejected and retried.
5. **Two-outputs rule** applies to Query (see Query workflow below).
6. **`log.md` is append-only**, format `## [YYYY-MM-DD] <action> | <title>`. Query entries record the verbatim user question.

## Category 1 vs Category 2 framing

This substrate is **category 1**: a lookup-and-synthesis layer over external technical sources. It is *not* a model of the user's understanding (category 2). A wiki ≠ understanding. Don't conflate.

- Category 1 content lives in `source/raw/`, `compiled/`, `vault/`.
- Category 2 traces live in `source/notes/` (hand-written, currently empty by default) and `compiled/log.md` (verbatim question history).

## Frontmatter schema (compiled pages)

```yaml
---
title: <human-readable title>
type: <article | paper | code-symbol | blog-post | concept | summary>
domain: <odin | papers | sdl3 | engines | graphics>
tier: <1 | 2 | 3>
provenance: <from-ingest | from-query>
source_ids:
  - path: source/raw/.../foo.md
    sha256: <hex>
compiled_at: <ISO-8601 timestamp>
compiled_by: <model-id>
status: <draft | stable>
---
```

Vault frontmatter (after `promote`):

```yaml
---
title: ...
type: ...
domain: ...
frozen: true
promoted_from: compiled/from-ingest/concepts/foo.md
promoted_at: <ISO timestamp>
original_compiled_at: <ISO>
original_provenance: from-ingest
original_source_ids: [...]
blessed_because: <optional note>
---
```

## Validator-at-compile-time (rejection rules)

Reject the write and retry if:
- Required frontmatter field missing (including `provenance:`)
- `provenance:` not one of `from-ingest`, `from-query`
- Page is being written under a folder that doesn't match `provenance:`
- Any `source_ids:` path doesn't exist
- A required body section per template is missing or empty
- TLDR empty or longer than its template-defined cap
- Any `[[wikilink]]` in body doesn't resolve
- The `Sources` section doesn't list every entry from `source_ids:`

## Two-outputs-per-task rule

**Non-trivial queries** produce two outputs:
1. The answer to the user (in chat)
2. A wiki update — new page in `compiled/from-query/<type>/` or edit to existing — with `provenance: from-query`

**Trivial queries** (single-fact recall, signature lookups, restating known facts) skip both the wiki update and the log entry. The skill exercises judgment; default to writing if uncertain.

Examples:
- "What's the signature of `os.read_entire_file`?" — trivial; no update, no log.
- "How does Odin's `context.allocator` interact with hot reload?" — non-trivial; write update + log entry.

## Workflows

### Ingest

Triggered when a new or changed source needs integrating.

1. Read the new/changed source file in full.
2. Summarize key takeaways in chat.
3. Identify which existing compiled pages are affected (by topic, source-id reference, concept overlap). Pages produced by Ingest live under `compiled/from-ingest/`.
4. Check for contradictions vs existing `compiled/` and `vault/`. Propose new entries to `source/contradictions.md` with status `[pending]`.
5. Trigger a focused Compile pass on the affected pages.
6. Append to `log.md`: `## [YYYY-MM-DD] ingest | <source-name>`.

### Compile

Regenerate `compiled/` from `source/`. Idempotent.

1. Determine scope (one source, one concept, one source-type, or full domain).
2. For each affected output page:
   1. Pick the right page-type template from `templates/page-types/`.
   2. Read all `source_ids:` to be referenced; SHA-256 each.
   3. Draft the page following the template.
   4. Run validator-at-compile-time. Reject + retry on failure.
   5. Write to `compiled/from-ingest/<type>/` (when triggered by Ingest) or `compiled/from-query/<type>/` (when triggered by Query). Set `provenance:` accordingly.
3. Regenerate `compiled/INDEX.md` (mandatory). Group entries under "From ingest" / "From query" / "Vault" headers.
4. Append to `log.md`: `## [YYYY-MM-DD] compile | <scope>` with stats.

### Query

User asks a question.

1. Read the domain's `compiled/INDEX.md` first.
2. Drill into relevant `compiled/` pages (both `from-ingest/` and `from-query/`), then `vault/` if applicable.
3. If exact API/code detail needed, read `source/raw/`.
4. Answer in chat — every factual claim cites `[[source/...]]`, `[[vault/...]]`, or `[[compiled/...]]`.
5. **Two-outputs rule:**
   - Non-trivial: write a new page to `compiled/from-query/<type>/` (with `provenance: from-query`) or edit existing. Routes through Compile validator.
   - Trivial: skip both wiki update and log entry.
6. If a wiki update was written: append to `log.md`: `## [YYYY-MM-DD] query | "<verbatim user question>"` plus what was written.

### Lint

Wiki health check. Proposes; never auto-fixes.

1. Scan `compiled/` (both `from-ingest/` and `from-query/`) for:
   - Orphan pages (no inbound links from INDEX.md or other pages)
   - Contradictions between pages
   - Stale pages (run `doctor --provenance-check`)
   - Concepts mentioned but lacking their own page
   - Missing cross-references
   - Required-section gaps per template
2. Append contradiction proposals to `source/contradictions.md` as `[pending]`.
3. Print a lint report.
4. Append to `log.md`: `## [YYYY-MM-DD] lint | wiki-health` with counts.

## Wikilink convention

Two link styles in this substrate, used in different contexts:

- **Markdown links** `[text](relative/path.md)` — relative to the current file's directory. Used inside `INDEX.md` to link to neighboring compiled pages (e.g., `INDEX.md` at `compiled/INDEX.md` linking to `from-ingest/concepts/foo.md`).
- **Wikilinks** `[[repo-relative/path/to/file.md]]` — always **repo-relative**, full path from repo root. Used for citations in body content (e.g., `[[content/domains/odin/source/raw/tier1-authoritative/odin-lang-org/foo.md]]`). `doctor` validates these.

When writing a `Sources` section or any in-body citation, always use the repo-relative `[[...]]` form. When generating INDEX.md entries, use the relative `[text](path)` markdown form.

## What NOT to do

- Don't write to `source/` ever (except by user-driven manifest update or hand-editing notes/contradictions, which the LLM doesn't do).
- Don't write to `vault/` ever. Promotion is the shell tool's job.
- Don't auto-resolve contradictions. Propose; let user decide.
- Don't skip INDEX.md regen. Compile isn't complete without it.
- Don't conflate categories 1 and 2. The wiki is not your understanding.
- Don't add features the spec doesn't describe. Surface to the user.
- Don't run git commits without explicit authorization.
- Don't use compiled-relative paths in `[[wikilinks]]`. They must be repo-relative.
````

- [ ] **Step 2: Verify**

```powershell
(Get-Content C:\Users\user1\dev\odin_master\.claude\skills\knowledge-substrate-core\SKILL.md).Length
```
Expected: nonzero, reasonably large (>200 lines).

### Task 37: Rewrite `.claude/skills/odin/SKILL.md` (thin domain skill)

**Files:**
- Modify: `.claude/skills/odin/SKILL.md` (full rewrite)

- [ ] **Step 1: Write file with this exact content:**

````markdown
---
name: odin
description: Use whenever the user asks ANY question about the Odin programming language — syntax, stdlib (`core:*`), vendored libraries (`vendor:*` like raylib, sdl3, glfw), hot reload, allocators, tagged unions, slices, the `context` system. This domain skill points at `content/domains/odin/` and defers to `knowledge-substrate-core` for workflow orchestration. The detailed canonical-source map lives in `content/domains/odin/source/README.md`.
---

# Odin — Domain Skill

This is a thin per-domain skill. It points at the Odin domain's content and tier semantics, then defers to `knowledge-substrate-core` for the actual workflow execution (Ingest, Compile, Query, Lint).

## Domain pointer

- Domain root: `content/domains/odin/`
- Source: `content/domains/odin/source/raw/{tier1-authoritative,tier2-curated,tier3-community}/`
- Compiled: `content/domains/odin/compiled/{from-ingest,from-query}/`
- Vault: `content/domains/odin/vault/{studies,lessons}/`
- Tier semantics: `content/domains/odin/source/README.md`

## Source-type templates in scope for Odin

This domain produces:
- `code-symbol` pages (stdlib functions, types, vendor APIs)
- `concept` pages (allocators, context, tagged unions, hot reload)
- `summary` pages (per-source distillations of tier-1 docs)
- `blog-post` pages (Karl Zylinski, gingerBill, jakubtomsu)
- `cross-refs` between concepts and code-symbols

Odin pages do NOT use:
- `paper` template (papers domain only)
- `article` template (rare; use `blog-post` for opinionated, `concept` for definitional)

## Domain quirks

- Stdlib code lives at `${ODIN_ROOT}/core/` (mirrored under `tier1-authoritative/odin-core/`). Vendor at `${ODIN_ROOT}/vendor/` (mirrored under `tier1-authoritative/odin-vendor/`).
- The `context` system is implicit and easy to misexplain — concept pages must call out the difference between "default context" and "explicit `context.allocator = X` swap" (see `source/contradictions.md`).
- Hot reload requires careful state management. Vault holds the canonical lessons (lessons 18) and a study (`vault/studies/arena-allocator.cited.md`); cite these heavily.

## Workflow execution

Defer to `knowledge-substrate-core`. When the user asks an Odin question:
1. Activate the workflow per `knowledge-substrate-core` § Query.
2. Use `content/domains/odin/compiled/INDEX.md` as the navigation primitive.
3. Apply the two-outputs rule with Odin-specific judgment (e.g., "what's the signature of X" is trivial; "why does X work this way" is non-trivial).

## What NOT to do

- Don't answer Odin questions from training-data memory. Pull from the actual sources under `content/domains/odin/source/raw/`.
- Don't write to `content/domains/odin/source/` or `content/domains/odin/vault/` (per core skill).
- Don't break the source/compiled/vault discipline.
````

- [ ] **Step 2: Verify**

```powershell
(Get-Content C:\Users\user1\dev\odin_master\.claude\skills\odin\SKILL.md).Length
```
Expected: nonzero, smaller than the core skill (~50–80 lines).

### Task 38: Write `.claude/skills/papers/SKILL.md` (empty-shell)

**Files:**
- Create: `.claude/skills/papers/SKILL.md`

- [ ] **Step 1: Write file:**

````markdown
---
name: papers
description: Use when the user asks about a research paper or wants to ingest one (peer-reviewed venues, arxiv preprints, paper-summary blogs). This domain is currently an empty shell — no sources ingested yet. Defer to `knowledge-substrate-core` for workflow orchestration once the domain is populated.
---

# Papers — Domain Skill (empty shell)

This domain is an **empty shell** at v1. Reserved for research-paper ingestion when learning extends into research territory (graphics papers, ML, etc.).

## Domain pointer

- Domain root: `content/domains/papers/`
- Tier semantics: `content/domains/papers/source/README.md`

## Source-type templates in scope

Once populated, papers domain will primarily produce:
- `paper` pages (the canonical type for this domain)
- `concept` pages (synthesizing across multiple papers on the same topic)
- `summary` pages (per-paper distillations)
- `cross-refs` (papers that cite or build on each other)

## To populate this domain

1. Add manifest entries with `domain: papers`. Likely needs an `arxiv-pdf` fetcher and `pdf-to-markdown` processor (not implemented in v1).
2. Run `odin-master update --domain papers`.
3. Compile via this skill (which routes to `knowledge-substrate-core` § Compile).

## Workflow execution

Defer to `knowledge-substrate-core`. While the domain is empty, this skill primarily exists to claim the namespace and document the planned shape.

## What NOT to do

- Don't try to query the domain while it's empty — the answer is "no sources ingested yet."
- Don't conflate paper claims with concept-level Odin/SDL3 knowledge — papers belong here, code/API knowledge belongs in the relevant code domain.
````

- [ ] **Step 2: Verify**

```powershell
Test-Path C:\Users\user1\dev\odin_master\.claude\skills\papers\SKILL.md
```

### Task 39: Write `.claude/skills/sdl3/SKILL.md` (empty-shell)

- [ ] **Step 1: Write file (same shape as Task 38, substituting):**
  - `name: sdl3`
  - description: "Use when the user asks about SDL3 APIs, the Khronos Vulkan/OpenGL specs, or related graphics-API questions. This domain is currently an empty shell."
  - tier semantics: per `content/domains/sdl3/source/README.md`
  - source-type templates: `code-symbol`, `concept`, `summary`, `blog-post`, `cross-refs`
  - "To populate" section: add manifest entries with `domain: sdl3`, fetchers `html_mirror` for libsdl.org/khronos.org, `local_dir` if cloning SDL3 headers

### Task 40: Write `.claude/skills/engines/SKILL.md` (empty-shell)

- [ ] **Step 1: Write file:**
  - `name: engines`
  - description: "Use when the user asks about game-engine internals, source code, or architecture (godot, bevy, etc.). This domain is currently an empty shell."
  - source-type templates: `code-symbol`, `concept`, `summary`, `blog-post`
  - "To populate" section: manifest with `git_clone` for engine repos, `html_mirror` for engine docs

### Task 41: Write `.claude/skills/graphics/SKILL.md` (empty-shell)

- [ ] **Step 1: Write file:**
  - `name: graphics`
  - description: "Use when the user asks about graphics programming concepts that aren't tied to a specific API — rendering pipelines, shading models, math, GPU architecture. This domain is currently an empty shell."
  - source-type templates: `concept`, `summary`, `blog-post`, `paper` (graphics papers fit here too — though purely peer-reviewed work belongs in papers/), `cross-refs`
  - "To populate" section: manifest with `html_mirror` for vendor docs (AMD GPUOpen, NVIDIA Dev), practitioner blogs

---

## Phase 7: Python tools

Each tool is ~60–150 lines, stdlib + `pyyaml`. Tools live in `tools/substrate/`.

**Sequencing:** T42 (`doctor.py`) runs **alone, serially first** because T43 (`promote.py`) and T44 (`test.py`) both shell out to doctor in their sanity-check steps. Once T42 is complete, T43/T44/T45 run in parallel as group **P7-tools-rest**.

### Task 41a: Verify / install `pyyaml` (pre-Phase-7 gate, serial)

All four Phase 7 tools `import yaml`. The user's Python environment may or may not have `pyyaml` installed.

- [ ] **Step 1: Check whether pyyaml is importable**

```powershell
python -c "import yaml; print(yaml.__version__)"
```

- [ ] **Step 2: If the import fails, install:**

```powershell
pip install pyyaml
```

(Or `pip install --user pyyaml` if a venv isn't active.)

- [ ] **Step 3: Verify install succeeded**

```powershell
python -c "import yaml; print(yaml.__version__)"
```

Expected: prints version string.

- [ ] **Step 4: Add `pyyaml` to `pyproject.toml` dependencies if it's not already there**

Read `pyproject.toml`. If there's a `[project]` block with `dependencies = [...]`, add `"pyyaml"` to the list. If there's no dependencies block, add:

```toml
[project]
dependencies = ["pyyaml"]
```

(or merge into the existing project section).

If pyproject.toml uses Poetry or another tool's schema, follow that tool's convention.

### Task 42: Write `tools/substrate/doctor.py` + sanity check (serial — runs alone)

**Files:**
- Create: `tools/substrate/doctor.py`

- [ ] **Step 1: Write file with this exact content:**

```python
#!/usr/bin/env python3
"""odin-master doctor — mechanical health check for the substrate.

Validates: frontmatter completeness, citation resolution, provenance/folder
parity, INDEX.md freshness, log.md parseability. Optional --provenance-check
re-hashes sources to flag drift. No LLM. Pass/fail report.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import re
import sys
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any

import yaml

REPO = Path(__file__).resolve().parents[2]
DOMAINS_DIR = REPO / "content" / "domains"
TEMPLATES_DIR = REPO / "templates" / "page-types"

PAGE_TYPES = {"article", "paper", "code-symbol", "blog-post", "concept", "summary"}
PROVENANCES = {"from-ingest", "from-query"}
REQUIRED_FRONTMATTER_COMPILED = {
    "title", "type", "domain", "tier", "provenance",
    "source_ids", "compiled_at", "compiled_by", "status",
}
REQUIRED_FRONTMATTER_VAULT = {
    "title", "type", "domain", "frozen", "promoted_from",
    "promoted_at", "original_provenance", "original_source_ids",
}

WIKILINK_RE = re.compile(r"\[\[([^\]]+)\]\]")
LOG_HEADER_RE = re.compile(r"^## \[\d{4}-\d{2}-\d{2}\] [a-z\-]+ \| ")


@dataclass
class Report:
    checks: list[tuple[str, bool, str]] = field(default_factory=list)

    def add(self, name: str, ok: bool, detail: str = "") -> None:
        self.checks.append((name, ok, detail))

    @property
    def passed(self) -> bool:
        return all(ok for _, ok, _ in self.checks)

    def to_json(self) -> dict[str, Any]:
        return {
            "passed": self.passed,
            "checks": [
                {"name": n, "ok": ok, "detail": d} for n, ok, d in self.checks
            ],
        }

    def print_human(self) -> None:
        for name, ok, detail in self.checks:
            mark = "PASS" if ok else "FAIL"
            line = f"[{mark}] {name}"
            if detail:
                line += f" — {detail}"
            print(line)
        print()
        print("OVERALL:", "PASS" if self.passed else "FAIL")


def parse_frontmatter(path: Path) -> dict[str, Any] | None:
    text = path.read_text(encoding="utf-8")
    if not text.startswith("---\n"):
        return None
    end = text.find("\n---\n", 4)
    if end == -1:
        return None
    try:
        return yaml.safe_load(text[4:end])
    except yaml.YAMLError:
        return None


def sha256_file(path: Path) -> str:
    h = hashlib.sha256()
    h.update(path.read_bytes())
    return h.hexdigest()


def iter_compiled_pages(domain_dir: Path):
    for sub in ("from-ingest", "from-query"):
        compiled_sub = domain_dir / "compiled" / sub
        if not compiled_sub.exists():
            continue
        for path in compiled_sub.rglob("*.md"):
            yield path, sub  # sub == provenance


def iter_vault_pages(domain_dir: Path):
    vault = domain_dir / "vault"
    if not vault.exists():
        return
    for path in vault.rglob("*.md"):
        yield path


def check_compiled_page(path: Path, expected_provenance: str, report: Report,
                        domain_dir: Path) -> None:
    fm = parse_frontmatter(path)
    rel = path.relative_to(REPO)
    if fm is None:
        report.add(f"frontmatter: {rel}", False, "missing or unparseable")
        return
    missing = REQUIRED_FRONTMATTER_COMPILED - set(fm.keys())
    if missing:
        report.add(f"frontmatter: {rel}", False, f"missing fields: {sorted(missing)}")
        return
    if fm["provenance"] not in PROVENANCES:
        report.add(f"provenance: {rel}", False, f"value {fm['provenance']!r}")
        return
    if fm["provenance"] != expected_provenance:
        report.add(
            f"provenance/folder parity: {rel}",
            False,
            f"frontmatter says {fm['provenance']!r} but file is under {expected_provenance!r}",
        )
        return
    if fm["type"] not in PAGE_TYPES:
        report.add(f"type: {rel}", False, f"value {fm['type']!r}")
        return
    # source_ids paths exist
    for sid in fm.get("source_ids") or []:
        sp = REPO / sid["path"]
        if not sp.exists():
            report.add(
                f"source_id: {rel}",
                False,
                f"missing source path {sid['path']!r}",
            )
            return
    # Sources section parity (every source_ids appears in body Sources section)
    body = path.read_text(encoding="utf-8")
    for sid in fm.get("source_ids") or []:
        if f"[[{sid['path']}]]" not in body and f"[[{sid['path']}#" not in body:
            report.add(
                f"sources-section: {rel}",
                False,
                f"source_id {sid['path']!r} not cited in body",
            )
            return
    report.add(f"page: {rel}", True)


def check_wikilinks(path: Path, report: Report) -> None:
    rel = path.relative_to(REPO)
    body = path.read_text(encoding="utf-8")
    for match in WIKILINK_RE.finditer(body):
        target = match.group(1).split("#", 1)[0]
        candidate = REPO / target
        if not candidate.exists():
            report.add(
                f"wikilink: {rel}",
                False,
                f"unresolved [[{target}]]",
            )
            return
    report.add(f"wikilinks: {rel}", True)


def check_log(domain_dir: Path, report: Report) -> None:
    log = domain_dir / "compiled" / "log.md"
    if not log.exists():
        report.add(f"log.md: {domain_dir.name}", False, "missing")
        return
    bad = [
        i for i, line in enumerate(log.read_text(encoding="utf-8").splitlines(), 1)
        if line.startswith("## ") and not LOG_HEADER_RE.match(line)
    ]
    if bad:
        report.add(
            f"log.md: {domain_dir.name}",
            False,
            f"unparseable header lines: {bad[:3]}",
        )
        return
    report.add(f"log.md: {domain_dir.name}", True)


def provenance_check(domain_dir: Path, report: Report) -> None:
    for path, expected in iter_compiled_pages(domain_dir):
        fm = parse_frontmatter(path)
        if not fm:
            continue
        rel = path.relative_to(REPO)
        for sid in fm.get("source_ids") or []:
            sp = REPO / sid["path"]
            if not sp.exists():
                continue
            actual = sha256_file(sp)
            if actual != sid["sha256"]:
                report.add(
                    f"provenance: {rel}",
                    False,
                    f"sha256 drift on {sid['path']!r}",
                )
                return
    report.add(f"provenance: {domain_dir.name}", True)


def doctor_domain(domain: str, do_provenance: bool, report: Report) -> None:
    domain_dir = DOMAINS_DIR / domain
    if not domain_dir.exists():
        report.add(f"domain: {domain}", False, "directory missing")
        return
    for path, prov in iter_compiled_pages(domain_dir):
        check_compiled_page(path, prov, report, domain_dir)
        check_wikilinks(path, report)
    for path in iter_vault_pages(domain_dir):
        check_wikilinks(path, report)
    check_log(domain_dir, report)
    if do_provenance:
        provenance_check(domain_dir, report)


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--provenance-check", action="store_true",
                    help="re-hash source files; flag drift")
    ap.add_argument("--domain", default=None,
                    help="restrict to one domain (default: all)")
    ap.add_argument("--json", action="store_true", help="machine-readable output")
    args = ap.parse_args()

    domains = (
        [args.domain] if args.domain
        else sorted(d.name for d in DOMAINS_DIR.iterdir() if d.is_dir())
    )
    report = Report()
    for d in domains:
        doctor_domain(d, args.provenance_check, report)

    if args.json:
        print(json.dumps(report.to_json(), indent=2))
    else:
        report.print_human()
    return 0 if report.passed else 1


if __name__ == "__main__":
    sys.exit(main())
```

- [ ] **Step 2: Sanity check — run on the freshly-restructured odin domain**

```powershell
python C:\Users\user1\dev\odin_master\tools\substrate\doctor.py --domain odin
```

Expected at this stage of the migration: PASS overall. (The compiled/ directories exist but contain only `.gitkeep` files, so there are no compiled pages to check; INDEX.md and log.md exist.)

- [ ] **Step 3: Sanity check --json mode**

```powershell
python C:\Users\user1\dev\odin_master\tools\substrate\doctor.py --domain odin --json
```

Expected: parseable JSON, `"passed": true`.

### Task 43: Write `tools/substrate/promote.py` (parallel-group: P7-tools-rest, after T42)

**Files:**
- Create: `tools/substrate/promote.py`

- [ ] **Step 1: Write file:**

```python
#!/usr/bin/env python3
"""odin-master promote — move a compiled page into the vault.

Refuses to promote if doctor fails on the file. Rewrites frontmatter to
the vault schema (frozen: true, promoted_from, original_provenance, etc.),
updates INDEX.md, and rewrites links in remaining compiled/ pages.
"""
from __future__ import annotations

import argparse
import datetime as dt
import re
import shutil
import subprocess
import sys
from pathlib import Path

import yaml

REPO = Path(__file__).resolve().parents[2]
DOMAINS_DIR = REPO / "content" / "domains"


def split_frontmatter(text: str) -> tuple[dict, str]:
    if not text.startswith("---\n"):
        raise ValueError("missing frontmatter")
    end = text.find("\n---\n", 4)
    if end == -1:
        raise ValueError("unterminated frontmatter")
    fm = yaml.safe_load(text[4:end])
    body = text[end + 5 :]
    return fm, body


def join_frontmatter(fm: dict, body: str) -> str:
    yml = yaml.safe_dump(fm, sort_keys=False).strip()
    return f"---\n{yml}\n---\n{body}"


def run_doctor(path: Path) -> bool:
    """Returns True if the (whole) substrate passes doctor; False otherwise.
    promote checks at the substrate level rather than per-file because doctor's
    granularity is per-page already."""
    domain = path.relative_to(DOMAINS_DIR).parts[0]
    proc = subprocess.run(
        [sys.executable, str(REPO / "tools" / "substrate" / "doctor.py"),
         "--domain", domain, "--json"],
        capture_output=True, text=True,
    )
    return proc.returncode == 0


def promote(compiled_path: Path, note: str | None, dry_run: bool) -> int:
    if not compiled_path.is_file():
        print(f"error: {compiled_path} is not a file", file=sys.stderr)
        return 1
    rel = compiled_path.relative_to(REPO)
    if "compiled" not in rel.parts or rel.parts[-3] not in ("from-ingest", "from-query"):
        print(f"error: {rel} not under compiled/from-ingest/ or compiled/from-query/",
              file=sys.stderr)
        return 1

    if not run_doctor(compiled_path):
        print("error: doctor failed; refusing to promote a broken page",
              file=sys.stderr)
        return 1

    text = compiled_path.read_text(encoding="utf-8")
    fm, body = split_frontmatter(text)

    domain_dir = DOMAINS_DIR / fm["domain"]
    page_type = fm["type"]
    vault_dir = domain_dir / "vault" / page_type
    vault_path = vault_dir / compiled_path.name

    new_fm = {
        "title": fm["title"],
        "type": fm["type"],
        "domain": fm["domain"],
        "frozen": True,
        "promoted_from": str(rel).replace("\\", "/"),
        "promoted_at": dt.datetime.now(dt.timezone.utc).isoformat(timespec="seconds"),
        "original_compiled_at": fm.get("compiled_at"),
        "original_provenance": fm["provenance"],
        "original_source_ids": fm.get("source_ids", []),
    }
    if note:
        new_fm["blessed_because"] = note

    new_text = join_frontmatter(new_fm, body)

    if dry_run:
        print(f"[dry-run] would create: {vault_path}")
        print(f"[dry-run] would delete: {compiled_path}")
        print("[dry-run] new frontmatter:")
        print(yaml.safe_dump(new_fm, sort_keys=False))
        return 0

    vault_dir.mkdir(parents=True, exist_ok=True)
    vault_path.write_text(new_text, encoding="utf-8")
    compiled_path.unlink()

    # Rewrite links in remaining compiled/ pages
    old_link = str(rel).replace("\\", "/")
    new_link = str(vault_path.relative_to(REPO)).replace("\\", "/")
    for sub in ("from-ingest", "from-query"):
        for path in (domain_dir / "compiled" / sub).rglob("*.md"):
            content = path.read_text(encoding="utf-8")
            if old_link in content:
                path.write_text(content.replace(old_link, new_link), encoding="utf-8")

    # Update INDEX.md (best-effort: caller should re-run Compile to fully regen)
    index_path = domain_dir / "compiled" / "INDEX.md"
    idx = index_path.read_text(encoding="utf-8")
    idx = idx.replace(old_link, new_link)
    index_path.write_text(idx, encoding="utf-8")

    # Append to log.md
    log_path = domain_dir / "compiled" / "log.md"
    today = dt.date.today().isoformat()
    log_path.write_text(
        log_path.read_text(encoding="utf-8")
        + f"\n## [{today}] promote | {old_link} → vault/\n",
        encoding="utf-8",
    )

    print(f"promoted: {old_link} → {new_link}")
    return 0


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("path", help="compiled page to promote (relative or absolute)")
    ap.add_argument("--note", default=None, help="blessing note (frontmatter)")
    ap.add_argument("--dry-run", action="store_true",
                    help="show changes without applying")
    args = ap.parse_args()

    p = Path(args.path)
    if not p.is_absolute():
        p = REPO / p
    return promote(p, args.note, args.dry_run)


if __name__ == "__main__":
    sys.exit(main())
```

- [ ] **Step 2: Sanity check (dry-run on a non-existent path; expect error)**

```powershell
python C:\Users\user1\dev\odin_master\tools\substrate\promote.py --dry-run nonexistent.md
```

Expected: prints error to stderr, exits non-zero. (No real promote target exists yet — the substrate has no compiled pages.)

- [ ] **Step 3: Verify import correctness**

```powershell
python -c "import sys; sys.path.insert(0, r'C:\Users\user1\dev\odin_master\tools\substrate'); import promote"
```

Expected: no error.

### Task 44: Write `tools/substrate/test.py` (parallel-group: P7-tools-rest, after T42)

**Files:**
- Create: `tools/substrate/test.py`

- [ ] **Step 1: Write file:**

```python
#!/usr/bin/env python3
"""odin-master test — substrate regression tests.

Reads quality-checks.yaml. Structural block runs doctor as a subprocess.
Semantic block invokes the relevant skill via `claude -p` and asserts that
cited sources include the required source_ids.
"""
from __future__ import annotations

import argparse
import json
import re
import subprocess
import sys
from pathlib import Path

import yaml

REPO = Path(__file__).resolve().parents[2]
QUALITY_CHECKS = REPO / "content" / "quality-checks.yaml"
DOCTOR = REPO / "tools" / "substrate" / "doctor.py"


def run_structural(domain: str | None) -> tuple[bool, str]:
    args = [sys.executable, str(DOCTOR), "--json"]
    if domain:
        args += ["--domain", domain]
    proc = subprocess.run(args, capture_output=True, text=True)
    try:
        data = json.loads(proc.stdout)
    except json.JSONDecodeError:
        return False, f"doctor output unparseable:\n{proc.stdout}\n{proc.stderr}"
    return bool(data.get("passed")), proc.stdout


def run_semantic(checks: list[dict], domain: str | None) -> list[tuple[str, bool, str]]:
    """For each gold query, invoke the skill via `claude -p` and assert that
    the answer cites at least one of the required source_ids in its body."""
    results = []
    for entry in checks:
        if domain and entry.get("domain") != domain:
            continue
        query = entry["query"]
        required = set(entry["must_include_source_ids_in_top_5"])
        prompt = (
            f"Use the {entry.get('domain', 'odin')} skill to answer this question. "
            f"Cite sources via [[source/...]] wikilinks per the substrate's two-outputs "
            f"discipline. Question: {query}"
        )
        try:
            proc = subprocess.run(
                ["claude", "-p", prompt],
                capture_output=True, text=True, timeout=120,
            )
        except FileNotFoundError:
            results.append((query, False, "claude CLI not found on PATH"))
            continue
        except subprocess.TimeoutExpired:
            results.append((query, False, "timeout"))
            continue
        body = proc.stdout
        cited = set(re.findall(r"\[\[source/([^\]\#]+)", body))
        # Normalize: required ids may be like 'odin-lang-org' (source-id from manifest)
        # whereas cited are full paths. Match on substring presence.
        ok = any(any(req in c for c in cited) for req in required)
        results.append((query, ok, f"cited={sorted(cited)[:5]}"))
    return results


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--structural", action="store_true",
                    help="run only structural block (no LLM)")
    ap.add_argument("--semantic", action="store_true",
                    help="run only semantic block (calls `claude -p`)")
    ap.add_argument("--domain", default=None)
    args = ap.parse_args()

    do_structural = args.structural or not args.semantic
    do_semantic = args.semantic or not args.structural

    overall_ok = True

    if do_structural:
        print("=== structural ===")
        ok, output = run_structural(args.domain)
        print(output)
        if not ok:
            print("[STRUCTURAL] FAIL")
            overall_ok = False
        else:
            print("[STRUCTURAL] PASS")

    if do_semantic:
        print("=== semantic ===")
        if not QUALITY_CHECKS.exists():
            print(f"error: {QUALITY_CHECKS} not found")
            return 1
        with QUALITY_CHECKS.open(encoding="utf-8") as f:
            data = yaml.safe_load(f)
        # Support both old flat list and new structured form
        checks = data if isinstance(data, list) else data.get("semantic", [])
        results = run_semantic(checks, args.domain)
        for q, ok, detail in results:
            mark = "PASS" if ok else "FAIL"
            print(f"[{mark}] {q}")
            if detail:
                print(f"        {detail}")
            if not ok:
                overall_ok = False

    print()
    print("OVERALL:", "PASS" if overall_ok else "FAIL")
    return 0 if overall_ok else 1


if __name__ == "__main__":
    sys.exit(main())
```

- [ ] **Step 2: Sanity check (structural only — should pass given freshly-restructured state)**

```powershell
python C:\Users\user1\dev\odin_master\tools\substrate\test.py --structural --domain odin
```

Expected: `[STRUCTURAL] PASS`, exit code 0.

- [ ] **Step 3: Verify import correctness**

```powershell
python -c "import sys; sys.path.insert(0, r'C:\Users\user1\dev\odin_master\tools\substrate'); import test as t"
```

Expected: no error.

### Task 45: Write `tools/substrate/domain-scaffold.py` (parallel-group: P7-tools-rest, after T42)

**Files:**
- Create: `tools/substrate/domain-scaffold.py`

- [ ] **Step 1: Write file:**

```python
#!/usr/bin/env python3
"""odin-master new domain <name> — scaffold a new empty-shell domain.

Copies templates/domain/ into content/domains/<name>/, creates a stub skill at
.claude/skills/<name>/SKILL.md, and appends a commented manifest entry hint.
"""
from __future__ import annotations

import argparse
import datetime as dt
import shutil
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
DOMAINS_DIR = REPO / "content" / "domains"
SKILLS_DIR = REPO / ".claude" / "skills"
TEMPLATE = REPO / "templates" / "domain"
MANIFEST = REPO / "content" / "manifest.yaml"


def render(text: str, domain: str, scaffold_date: str) -> str:
    return (
        text
        .replace("{{domain}}", domain)
        .replace("{{scaffold-date}}", scaffold_date)
    )


def scaffold(domain: str) -> int:
    target = DOMAINS_DIR / domain
    if target.exists():
        print(f"error: {target} already exists", file=sys.stderr)
        return 1
    if not TEMPLATE.exists():
        print(f"error: template {TEMPLATE} missing", file=sys.stderr)
        return 1

    scaffold_date = dt.date.today().isoformat()

    # Walk templates/domain/, copy with substitutions
    for src in TEMPLATE.rglob("*"):
        rel = src.relative_to(TEMPLATE)
        dst_name = str(rel).replace(".template", "")
        dst = target / dst_name
        if src.is_dir():
            dst.mkdir(parents=True, exist_ok=True)
            continue
        dst.parent.mkdir(parents=True, exist_ok=True)
        if src.suffix in (".md", ".template"):
            text = src.read_text(encoding="utf-8")
            dst.write_text(render(text, domain, scaffold_date), encoding="utf-8")
        else:
            shutil.copy2(src, dst)

    # Skill stub
    skill_dir = SKILLS_DIR / domain
    skill_dir.mkdir(parents=True, exist_ok=True)
    (skill_dir / "SKILL.md").write_text(
        f"""---
name: {domain}
description: Use when the user asks about {domain}-related questions. This domain is currently an empty shell. Defer to `knowledge-substrate-core` for workflow orchestration once populated.
---

# {domain.capitalize()} — Domain Skill (empty shell)

This domain is an **empty shell**. Scaffolded {scaffold_date} via `odin-master new domain {domain}`.

## Domain pointer

- Domain root: `content/domains/{domain}/`
- Tier semantics: `content/domains/{domain}/source/README.md` (please fill in)

## To populate

1. Edit `content/domains/{domain}/source/README.md` to fill in tier semantics + description.
2. Add manifest entries with `domain: {domain}` (see `content/manifest.yaml`).
3. Run `odin-master update --domain {domain}`.
4. Compile via this skill (which routes to `knowledge-substrate-core`).
""",
        encoding="utf-8",
    )

    # Append commented manifest hint
    if MANIFEST.exists():
        with MANIFEST.open("a", encoding="utf-8") as f:
            f.write(
                f"\n# ── {domain} domain — uncomment + populate when ready ──\n"
                f"# - id: {domain}-example\n"
                f"#   tier: 1\n"
                f"#   domain: {domain}\n"
                f"#   fetcher: html_mirror\n"
                f"#   url: https://example.com/{domain}\n"
                f"#   destination: {domain}-example\n"
                f"#   processor: html-to-markdown\n"
            )

    print(f"created domain '{domain}'")
    print(f"  - content/domains/{domain}/")
    print(f"  - .claude/skills/{domain}/SKILL.md")
    print(f"  - manifest hint appended to content/manifest.yaml")
    print()
    print("Next steps:")
    print(f"  1. Edit content/domains/{domain}/source/README.md")
    print(f"  2. Add real manifest entries with `domain: {domain}`")
    print(f"  3. Run: odin-master update --domain {domain}")
    return 0


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    sub = ap.add_subparsers(dest="cmd", required=True)
    new = sub.add_parser("new")
    new.add_argument("kind", choices=["domain"])
    new.add_argument("name")
    args = ap.parse_args()
    if args.cmd == "new" and args.kind == "domain":
        return scaffold(args.name)
    ap.error("unknown command")
    return 2


if __name__ == "__main__":
    sys.exit(main())
```

- [ ] **Step 2: Sanity check (dry-run scaffold of a test domain, then immediately delete)**

```powershell
python C:\Users\user1\dev\odin_master\tools\substrate\domain-scaffold.py new domain temp-scaffold-test
Test-Path C:\Users\user1\dev\odin_master\content\domains\temp-scaffold-test
Test-Path C:\Users\user1\dev\odin_master\.claude\skills\temp-scaffold-test
Remove-Item -Recurse -Force C:\Users\user1\dev\odin_master\content\domains\temp-scaffold-test
Remove-Item -Recurse -Force C:\Users\user1\dev\odin_master\.claude\skills\temp-scaffold-test
```

Then manually open `content/manifest.yaml` and remove the commented hint block that was appended.

Expected: scaffold succeeded, paths existed, cleanup removed them.

---

## Phase 8: Doc rewrites (parallel-group: P8-docs)

### Task 46: Rewrite `CLAUDE.md`

**Files:**
- Modify: `CLAUDE.md` (full rewrite)

- [ ] **Step 1: Read existing for context**

```powershell
Get-Content C:\Users\user1\dev\odin_master\CLAUDE.md
```

- [ ] **Step 2: Write new content:**

```markdown
# Notes for LLM agents working in this repo

This is `odin_master` — a multi-domain technical-knowledge substrate. Spec: `docs/superpowers/specs/2026-05-04-substrate-redesign-design.md`.

## Substrate discipline (non-negotiable)

The substrate is **category 1**: a lookup-and-synthesis layer over external technical sources. It is *not* a model of the user's understanding. Don't conflate.

### Three-tier storage per domain

Each domain (`content/domains/<d>/`) has three tiers:

- `source/` — immutable, upstream-mirrored + user-maintained (`manifest.yaml`, `contradictions.md`, optional `notes/`). LLM never writes here.
- `compiled/` — LLM-owned, regenerable. Split by provenance: `from-ingest/` (Compile triggered by Ingest) and `from-query/` (Compile triggered by Query under the two-outputs rule).
- `vault/` — blessed, frozen. Only changes via `odin-master promote`.

**Prime directive:** the LLM never writes to `source/` or `vault/`.

### Provenance is a hard requirement

Every compiled page has `provenance: from-ingest` or `provenance: from-query` in frontmatter, and lives under the matching folder. `doctor` enforces parity.

### Two-outputs-per-task rule

Non-trivial queries produce both an answer (in chat) and a wiki update (page in `compiled/from-query/`). Trivial queries (single-fact lookups, signature recall) skip both — no log entry, no page.

### Validator-at-compile-time

Compile rejects pages with malformed frontmatter, broken citations, missing required sections, or empty TLDRs. The LLM retries.

### INDEX.md is regenerated every Compile

Mandatory. The skill workflow refuses to mark Compile complete without it.

### `log.md` format

Append-only, `## [YYYY-MM-DD] <action> | <title>`. Query entries record the verbatim user question.

### Wikilinks are repo-relative

In compiled and vault page bodies, `[[wikilinks]]` always use repo-relative paths (e.g., `[[content/domains/odin/source/raw/tier1-authoritative/odin-lang-org/foo.md]]`). Markdown links `[text](path)` inside INDEX.md are relative to INDEX.md's directory. `doctor` validates wikilinks; markdown links are not validated.

## Tooling map

- Skill orchestrator: `.claude/skills/knowledge-substrate-core/SKILL.md`
- Per-domain skills: `.claude/skills/{odin,papers,sdl3,engines,graphics}/SKILL.md`
- Shell tools: `tools/substrate/{doctor,promote,test,domain-scaffold}.py`
- Page templates: `templates/page-types/*.template.md`
- Manifest: `content/manifest.yaml`
- Quality checks: `content/quality-checks.yaml`

## Vault subfolder convention

`vault/` subfolders are free-form, not enforced. New promotions land under `vault/<page-type>/` (e.g., `vault/concepts/`, `vault/code-symbol/`) per `promote.py` defaults. Existing migrated content (`vault/studies/`, `vault/lessons/`) keeps its custom domain-specific subfolder names. Both schemes coexist; `doctor` does not enforce vault subfolder names.

## Git / VCS policy

Never run `git commit`, `git push`, `git merge`, `git rebase`, `git reset`, branch/tag mutations, PR creation, or any other VCS-mutating action unless the user has explicitly told you to in this conversation. Read-only inspection (`git status`, `git diff`, `git log`) is fine.

## Search

Search backend is **qmd** (deferred to post-v1, on Karpathy's recommended path). v1 leans on `compiled/INDEX.md` per domain as the navigation primitive. The old `odin-search` BM25 CLI has been deleted; do not propose Ollama, custom embeddings, or DIY vector infrastructure.

## Initial scope (v1)

The substrate's primary intent is to support learning Odin + game programming + graphics programming. Odin is populated; papers/sdl3/engines/graphics are empty shells reserved for that learning extending. Don't over-build for hypothetical future domains.
```

- [ ] **Step 3: Verify**

```powershell
Test-Path C:\Users\user1\dev\odin_master\CLAUDE.md
(Get-Content C:\Users\user1\dev\odin_master\CLAUDE.md).Length
```

### Task 47: Rewrite `README.md`

**Files:**
- Modify: `README.md` (full rewrite)

- [ ] **Step 1: Write new content:**

```markdown
# odin_master

Personal multi-domain technical-knowledge substrate. v1 is for learning Odin + game programming + graphics programming.

Spec: `docs/superpowers/specs/2026-05-04-substrate-redesign-design.md`

## Layout

- `content/domains/<d>/` — per-domain knowledge (source/compiled/vault three-tier)
- `templates/page-types/` — page templates per source type (article, paper, code-symbol, blog-post, concept, summary)
- `templates/domain/` — scaffold for adding a new domain
- `tools/substrate/` — shell tools (doctor, promote, test, domain-scaffold)
- `.claude/skills/knowledge-substrate-core/` — workflow orchestration
- `.claude/skills/<domain>/` — thin per-domain skills

## Domains

| Domain | Status |
|---|---|
| `odin` | populated |
| `papers` | empty shell |
| `sdl3` | empty shell |
| `engines` | empty shell |
| `graphics` | empty shell |

## Common operations

```sh
# Refetch upstream-mirrored sources
just update odin

# Mechanical health check
just doctor odin
just doctor-provenance odin

# Run regression gold-set
just test odin

# Add a new domain (scaffolded empty)
just new-domain my-new-domain

# Promote a compiled page to vault (frozen, blessed)
just promote content/domains/odin/compiled/from-query/concepts/some-page.md
```

## Workflows (LLM-driven, via skill)

- **Ingest** — integrate a new/changed source. Updates affected `from-ingest/` pages.
- **Compile** — regenerate `compiled/` from `source/`. Idempotent.
- **Query** — answer a question using the wiki + sources. Non-trivial queries produce a `from-query/` page (two-outputs rule).
- **Lint** — wiki health check. Proposes; never auto-fixes.

Invoke via the relevant per-domain skill (`odin`, etc.); the skill orchestrates through `knowledge-substrate-core`.

## End-to-end smoke test

See `docs/smoke-test.md`.
```

- [ ] **Step 2: Verify**

```powershell
Test-Path C:\Users\user1\dev\odin_master\README.md
```

### Task 48: Rewrite `LEARNING.md`

**Files:**
- Modify: `LEARNING.md` (full rewrite)

- [ ] **Step 1: Write new content:**

```markdown
# Odin learning environment

Front door for Odin learning. Lessons live at `content/domains/odin/vault/lessons/` (frozen — promoted into vault as the canonical curriculum).

## Daily loop

1. **Pick a lesson** — `<leader>oh` (or `<leader>oH` for the next one after where you left off). Lessons are at `content/domains/odin/vault/lessons/`.
2. **Type the code** — typing is the rep, not pasting. Each lesson tells you what to type and what you should see.
3. **Break it** — every lesson ends with "Now break it." Read the compiler's error message before fixing.
4. **Ask the wiki** — `<leader>oq` opens a query into the odin skill (uses `compiled/INDEX.md` as the nav primitive; falls back to `source/raw/` for exact API detail). Trivial queries answer immediately; non-trivial queries also write a page to `compiled/from-query/`.
5. **Scratch a thought** — `<leader>op` opens `playground/scratch.odin`. Run with `<leader>or`.

## Hotkey map (default prefix `<leader>o`)

| Key | Action |
|-----|--------|
| `<leader>ol` | Toggle OLS (LSP) on/off — practice without crutches |
| `<leader>oq` | Query the odin skill |
| `<leader>or` | Run the current `.odin` file |
| `<leader>oh` | Pick a lesson |
| `<leader>oH` | Open the next lesson |
| `<leader>op` | Open `playground/scratch.odin` |
| `<leader>od` | `:OdinDoctor` |

## Tooling

- Configs (formatter + LSP): `content/domains/odin/config/{odinfmt.json,ols.json}`
- Project scaffolds: `content/domains/odin/templates/{cli,game,lib}/`
- Domain-specific tooling: `tools/domains/odin/{odin_lib,lessons-check}/`

## What changed from v0

`odin-search` is gone. Search has been replaced by skill-driven Query against `compiled/INDEX.md`. qmd is the planned graduation tool when scale demands it (deferred — see spec).
```

- [ ] **Step 2: Verify**

```powershell
Test-Path C:\Users\user1\dev\odin_master\LEARNING.md
```

### Task 49: Update `tools/nvim/lua/odin_master/*` to rewire hotkeys

- [ ] **Step 1: List current files**

```powershell
Get-ChildItem -Recurse C:\Users\user1\dev\odin_master\tools\nvim\lua\odin_master
```

- [ ] **Step 2: For each `.lua` file that references `odin-search`, `lessons/`, `studies/`, or `content/sources/`, update**

Specifically:
- **`pickers.lua`** has hardcoded path construction like `content/sources/tier%d-%s/...`. Rewrite to `content/domains/odin/source/raw/tier%d-%s/...` OR (preferred) remove the picker entirely since `odin-search` itself is being deleted and the picker has no purpose without it.
- **`health.lua`** checks for `odin-search` executable. Remove that check.
- **`init.lua`** binds `<leader>os` to `odin-search`. Remove the binding or rebind (see next bullet).
- Replace `odin-search` invocations with placeholder calls (or remove). The new `<leader>oq` should invoke the user's preferred mechanism for asking the odin skill (e.g., a Claude Code session). Since this depends on the user's editor flow, leave a clear stub:

```lua
-- TODO(substrate-redesign): wire <leader>oq to user-preferred skill-query flow.
-- Old <leader>os (odin-search) has been removed. The skill-driven Query workflow
-- replaces it. See docs/superpowers/specs/2026-05-04-substrate-redesign-design.md.
```

- Replace `lessons/` paths with `content/domains/odin/vault/lessons/`.
- Replace `studies/` paths with `content/domains/odin/vault/studies/`.
- Replace `playground/` references — keep as-is unless explicitly moved (it's still at top-level per the spec).

- [ ] **Step 3: Verify (no remaining unwired references)**

```powershell
Get-ChildItem -Recurse C:\Users\user1\dev\odin_master\tools\nvim\lua\odin_master | Select-String -Pattern "odin-search","lessons/","studies/" -SimpleMatch
```

Expected: no matches except the `TODO(substrate-redesign)` comment.

### Task 50: Rewrite `justfile` (full rewrite — many existing recipes call deleted CLIs)

**Files:**
- Modify: `justfile` (complete rewrite)

The existing justfile has many recipes calling `odin-master <verb>` (scratch, summarize, lib-add, docs-build, publish) that all routed through `tools/indexer/` which Phase 1 deletes. The existing `install-cli` recipe references `tools/search` and `tools/indexer` (both deleted). The existing `doctor:` recipe calls `odin-master doctor` (deleted). All of these break after Phase 1 and must be removed or rewritten.

- [ ] **Step 1: Read existing**

```powershell
Get-Content C:\Users\user1\dev\odin_master\justfile
```

- [ ] **Step 2: Replace contents with this full rewrite:**

```just
# odin_master task runner.

default:
    @just --list --unsorted

# ─── Bootstrap and environment ─────────────────────────────────────────────
bootstrap:
    @bash tools/install/install.sh

bootstrap-lite:
    @bash tools/install/install.sh --lite

check-odin-version:
    @cat .odin-version

update-odin:
    @echo "see tools/install/install.sh — re-run bootstrap to bump"

# ─── Build / run (Odin compiler wrappers) ─────────────────────────────────
build profile="debug":
    @odin build . -out:build/{{profile}}/app $(if [ "{{profile}}" = "release" ]; then echo "-o:speed -no-bounds-check"; else echo "-debug"; fi)

run profile="debug":
    @odin run . $(if [ "{{profile}}" = "release" ]; then echo "-o:speed"; else echo "-debug"; fi)

# `test` runs the Odin compiler's test on this directory's Odin code.
# For substrate regression tests, see `substrate-test` below.
test profile="debug":
    @odin test .

check:
    @odin check . -vet -strict-style

clean:
    @rm -rf build target playground/profiles/*.spall

format:
    @find . -name '*.odin' -not -path '*/build/*' -not -path '*/vendor/*' -print0 | xargs -0 -n1 odinfmt -overwrite

# ─── Bench / profile ──────────────────────────────────────────────────────
bench name:
    @cd playground/bench/{{name}} && odin run . -define:INSTRUMENT=spall -o:speed

profile-run binary:
    @SPALL_OUT=playground/profiles/$(basename {{binary}}).spall {{binary}}

# ─── Substrate (knowledge base) — added by 2026-05-04 redesign ────────────

# `doctor` rewritten to point at substrate doctor (was: `odin-master doctor`).
doctor domain="":
    python tools/substrate/doctor.py {{ if domain != "" { "--domain " + domain } else { "" } }}

doctor-provenance domain="":
    python tools/substrate/doctor.py --provenance-check {{ if domain != "" { "--domain " + domain } else { "" } }}

substrate-promote path:
    python tools/substrate/promote.py {{ path }}

substrate-test domain="":
    python tools/substrate/test.py {{ if domain != "" { "--domain " + domain } else { "" } }}

# update fetcher pipeline is deferred for v1 (see spec § Open questions).
substrate-update domain="":
    @echo "update fetcher pipeline deferred for v1 — see docs/superpowers/specs/2026-05-04-substrate-redesign-design.md § Open questions"
    @echo "domain hint: {{domain}}"

new-domain name:
    python tools/substrate/domain-scaffold.py new domain {{name}}
```

**Removed recipes (all called deleted CLIs):**
- `hot:` — referenced removed scaffold
- `scratch-new`, `scratch-run`, `scratch-watch` — called `odin-master scratch ...`
- `summarize`, `add-transcript`, `lib-add`, `docs-build`, `publish` — called `odin-master ...`
- `install-cli` — referenced `tools/search` and `tools/indexer`

If any of those workflows are still wanted post-migration, the user can re-add them pointing at appropriate replacements.

- [ ] **Step 3: Verify justfile parses**

```powershell
just --list
```

Expected: lists `bootstrap`, `bootstrap-lite`, `build`, `run`, `test`, `check`, `clean`, `format`, `bench`, `profile-run`, `doctor`, `doctor-provenance`, `substrate-promote`, `substrate-test`, `substrate-update`, `new-domain`, `check-odin-version`, `update-odin`. No parse errors.

### Task 51: Update `content/manifest.yaml` — add `domain:` field per entry, and update `docs/adding-sources.md`

**Files:**
- Modify: `content/manifest.yaml`

- [ ] **Step 1: Read existing**

```powershell
Get-Content C:\Users\user1\dev\odin_master\content\manifest.yaml
```

- [ ] **Step 2: For every existing entry, add `domain: odin` immediately after the `id:` field.**

Example:
```yaml
- id: odin-lang-org
  tier: 1
  domain: odin
  fetcher: html_mirror
  ...
```

- [ ] **Step 2b: DELETE the `odin-wiki` manifest entry entirely.**

The existing `odin-wiki` entry has `source_path: content/wiki/concepts` which Phase 1 (T2) archives. Since the wiki was archived (not preserved as a source), this manifest entry is obsolete. Remove the entire entry block:

```yaml
- id: odin-wiki                  # ← DELETE this entire block
  tier: 1
  fetcher: local_dir
  source_path: content/wiki/concepts
  destination: odin-wiki
  processor: markdown
  include_glob: "**/*.md"
  last_updated: 2026-04-19
```

- [ ] **Step 2c: Rewrite `odin-overview` `source_path:` to the new layout.**

The existing entry has `source_path: tier1-authoritative/odin-overview`. After T10's move, that path is now under `content/domains/odin/source/raw/`. Rewrite to:

```yaml
- id: odin-overview
  tier: 1
  domain: odin
  fetcher: pasted_text
  destination: odin-overview
  source_path: content/domains/odin/source/raw/tier1-authoritative/odin-overview
  processor: markdown
  last_updated: 2026-04-19
```

- [ ] **Step 2d: For other entries with `source_path:` referencing the old layout (if any), apply the same rewriting.**

Entries using `${ODIN_ROOT}/core` etc. are env-var paths — leave those alone. Entries using URL-based fetchers (`html_mirror`, `git_clone`) don't use `source_path` — leave those alone except for adding `domain: odin`.

- [ ] **Step 3: Verify the file is still valid YAML**

```powershell
python -c "import yaml; yaml.safe_load(open(r'C:\Users\user1\dev\odin_master\content\manifest.yaml', encoding='utf-8').read()); print('ok')"
```

Expected: `ok`.

- [ ] **Step 4: Update `docs/adding-sources.md` to mention the new `domain:` field**

Read the file. Find the manifest-entry schema section (the one that documents fields like `id`, `tier`, `fetcher`, etc.) and add a `domain:` field documentation line near `id:`/`tier:`.

Add a short paragraph explaining:
- Every manifest entry now requires `domain: <name>` (one of: `odin`, `papers`, `sdl3`, `engines`, `graphics`, or any new domain created via `odin-master new domain <name>`).
- The destination of the fetched content lives under `content/domains/<domain>/source/raw/<destination>/`.

If the file's structure makes it unclear where to insert, append a clearly-titled subsection at the end:

```markdown
## Domain field (added 2026-05-04 substrate redesign)

Every manifest entry must specify a `domain:` field. Valid values are the directory names under `content/domains/` (e.g., `odin`, `papers`, `sdl3`, `engines`, `graphics`). New domains created via `odin-master new domain <name>` become valid values for `domain:`. The fetched content is placed under `content/domains/<domain>/source/raw/<destination>/`, where `<destination>` is the entry's `destination:` field.
```

- [ ] **Step 5: Verify**

```powershell
Test-Path C:\Users\user1\dev\odin_master\docs\adding-sources.md
Select-String -Path C:\Users\user1\dev\odin_master\docs\adding-sources.md -Pattern "domain"
```

Expected: file exists, `domain` keyword now appears.

---

## Phase 9: Manifest + quality-checks finalization (serial)

### Task 52: Extend `content/quality-checks.yaml` with structural + semantic blocks

**Files:**
- Modify: `content/quality-checks.yaml` (full rewrite)

- [ ] **Step 1: Read existing**

```powershell
Get-Content C:\Users\user1\dev\odin_master\content\quality-checks.yaml
```

- [ ] **Step 2: Replace contents with the new schema**

The new schema has two top-level blocks: `structural` and `semantic`. Existing entries become the `semantic` block (with `domain: odin` added).

```yaml
# odin-master quality-checks — substrate regression tests.
# Run via `odin-master test` (or `python tools/substrate/test.py`).
#
# - `structural` checks are mechanical (run via doctor). No LLM. Fast.
# - `semantic` checks invoke the relevant skill via `claude -p` and assert
#    that the answer cites required source_ids.

structural:
  - "doctor passes for all domains"
  - "doctor --provenance-check passes for all populated domains"
  - "every compiled page has provenance frontmatter and lives under matching folder"
  - "every Sources section in compiled/ matches frontmatter source_ids"

semantic:
  - query: "how do I read a file in Odin"
    domain: odin
    must_include_source_ids_in_top_5: [odin-lang-org, odin-overview]

  - query: "what is context.allocator"
    domain: odin
    must_include_source_ids_in_top_5: [odin-lang-org, odin-overview]

  - query: "hot reload pattern game"
    domain: odin
    must_include_source_ids_in_top_5: [karl-zylinski-blog]

  - query: "tagged union usage"
    domain: odin
    must_include_source_ids_in_top_5: [odin-lang-org, gingerbill-blog, odin-core]

  - query: "Karl Zylinski raylib"
    domain: odin
    must_include_source_ids_in_top_5: [karl-zylinski-blog]

  - query: "dynamic array append"
    domain: odin
    must_include_source_ids_in_top_5: [odin-core, odin-lang-org]

  - query: "string builder"
    domain: odin
    must_include_source_ids_in_top_5: [odin-core, odin-lang-org]

  - query: "map iteration"
    domain: odin
    must_include_source_ids_in_top_5: [odin-core, odin-lang-org]

  - query: "json marshal"
    domain: odin
    must_include_source_ids_in_top_5: [odin-core]

  - query: "raylib bindings"
    domain: odin
    must_include_source_ids_in_top_5: [odin-vendor, karl-zylinski-blog]

  - query: "parametric polymorphism generic procedure"
    domain: odin
    must_include_source_ids_in_top_5: [odin-lang-org, odin-core, gingerbill-blog]

  - query: "soa struct of arrays"
    domain: odin
    must_include_source_ids_in_top_5: [odin-lang-org, odin-core]

  - query: "foreign block import"
    domain: odin
    must_include_source_ids_in_top_5: [odin-lang-org, odin-core, odin-vendor]

  - query: "when statement build constant"
    domain: odin
    must_include_source_ids_in_top_5: [odin-lang-org, odin-core]

  - query: "distinct type alias"
    domain: odin
    must_include_source_ids_in_top_5: [odin-lang-org, odin-core]
```

- [ ] **Step 3: Verify YAML parses**

```powershell
python -c "import yaml; d = yaml.safe_load(open(r'C:\Users\user1\dev\odin_master\content\quality-checks.yaml', encoding='utf-8').read()); print(list(d.keys()))"
```

Expected: `['structural', 'semantic']`.

### Task 53: Verify substrate-wide structural pass

- [ ] **Step 1: Run doctor across all domains**

```powershell
python C:\Users\user1\dev\odin_master\tools\substrate\doctor.py
```

Expected: PASS for all five domains. (Compiled folders are empty modulo `.gitkeep`, INDEX/log files exist.)

- [ ] **Step 2: Run substrate-test --structural**

```powershell
python C:\Users\user1\dev\odin_master\tools\substrate\test.py --structural
```

Expected: `[STRUCTURAL] PASS`, exit 0.

If FAIL: surface the specific failure. Don't proceed to Phase 10.

---

## Phase 10: Validation — write smoke test runbook + execute (serial)

### Task 54: Write `docs/smoke-test.md`

**Files:**
- Create: `docs/smoke-test.md`

- [ ] **Step 1: Write file with the 14-step runbook from the spec:**

````markdown
# Substrate End-to-End Smoke Test

Runbook to verify the substrate works after the 2026-05-04 redesign.

## Steps

### 1. Cold start

```sh
odin-master update --domain odin
# (or, if update fetcher is unimplemented in v1:
#  the source/raw/ tree is already populated by migration — skip)
```

Expected: `source/raw/` populated, log.md gains `## update` entry (if update is functional).

### 2. Provenance check

```sh
python tools/substrate/doctor.py --provenance-check --domain odin
```

Expected: report; if `compiled/` is empty, no stale-page errors.

### 3. Compile via skill

Invoke the odin skill in Claude Code: "compile the odin domain"

Expected:
- `compiled/from-ingest/` populated with concept + summary pages
- Every page has `provenance: from-ingest` in frontmatter
- `compiled/INDEX.md` regenerated with "From ingest" section
- `log.md` gains `## compile` entry

### 4. Doctor (post-compile)

```sh
python tools/substrate/doctor.py
```

Expected: PASS.

### 5. Structural test

```sh
python tools/substrate/test.py --structural
```

Expected: PASS.

### 6. Non-trivial query

Invoke odin skill: "how does context.allocator interact with hot reload?"

Expected:
- Cited answer in chat
- New page at `compiled/from-query/concepts/<slug>.md` with `provenance: from-query`
- `log.md` gains `## query | "how does context.allocator interact with hot reload?"` entry

### 7. Trivial query

Invoke odin skill: "what's the signature of `os.read_entire_file`?"

Expected:
- Cited answer in chat
- NO new page in `compiled/from-query/`
- NO log entry

### 8. Semantic test

```sh
python tools/substrate/test.py --semantic --domain odin
```

Expected: most or all gold queries pass (some failures acceptable for the first run if the wiki is sparse — note them).

### 9. Promote

```sh
python tools/substrate/promote.py content/domains/odin/compiled/from-ingest/concepts/<some-page>.md
```

Expected:
- File moved to `vault/concepts/<page>.md`
- Frontmatter has `frozen: true`, `original_provenance: from-ingest`
- `INDEX.md` updated (entry moved to Vault section)
- `log.md` gains `## promote` entry

### 10. Doctor (post-promote)

```sh
python tools/substrate/doctor.py
```

Expected: PASS — cross-references to promoted page now point to `vault/`.

### 11. Lint via skill

Invoke odin skill: "lint the wiki"

Expected: lint report printed; any contradictions appended to `source/contradictions.md` as `[pending]`; `log.md` gains `## lint` entry.

### 12. New domain

```sh
python tools/substrate/domain-scaffold.py new domain test-domain
```

Expected: shell created at `content/domains/test-domain/` with notes/, from-ingest/, from-query/; skill stub at `.claude/skills/test-domain/SKILL.md`; manifest commented hint appended.

### 13. Doctor on empty shell

```sh
python tools/substrate/doctor.py --domain test-domain
```

Expected: PASS (healthy empty shell).

### 14. Cleanup

```powershell
Remove-Item -Recurse -Force content/domains/test-domain
Remove-Item -Recurse -Force .claude/skills/test-domain
# Remove the commented manifest hint added by domain-scaffold
```

Expected: paths gone.

## Pass criteria

If steps 1–13 all pass, the substrate works end-to-end. 12–13 prove the multi-domain pattern. Step 7 specifically validates the trivial-query escape from the two-outputs rule.
````

- [ ] **Step 2: Verify**

```powershell
Test-Path C:\Users\user1\dev\odin_master\docs\smoke-test.md
```

### Task 55: Run smoke step 1 — cold start update

- [ ] **Step 1: Attempt update**

```powershell
python C:\Users\user1\dev\odin_master\tools\substrate\domain-scaffold.py --help
# (NOTE: real update fetcher pipeline is deferred to follow-up.
#  For v1, source/raw/ is already populated by migration. Mark this step PASS
#  if source/raw/ has the migrated tier1/2/3 content.)
```

- [ ] **Step 2: Verify source/raw/ populated**

```powershell
Get-ChildItem C:\Users\user1\dev\odin_master\content\domains\odin\source\raw
```

Expected: tier1-authoritative/, tier2-curated/, tier3-community/ each non-empty.

### Task 56: Run smoke step 2 — doctor --provenance-check

- [ ] **Step 1**

```powershell
python C:\Users\user1\dev\odin_master\tools\substrate\doctor.py --provenance-check --domain odin
```

Expected: PASS (no compiled pages exist yet, so no stale).

### Task 57: Run smoke step 3 — Compile via skill (interactive)

This step requires a Claude Code session. The dispatching agent should pause here and surface to the user.

- [ ] **Step 1: Surface to user**

Print: "Smoke step 3 requires invoking the odin skill in a Claude Code session: 'compile the odin domain'. Please run this manually and report whether `compiled/from-ingest/` is populated, INDEX.md has a 'From ingest' section, and log.md gained a `## compile` entry."

- [ ] **Step 2: Wait for user confirmation**

User must respond with PASS / FAIL / NOTES before proceeding.

### Task 58: Run smoke step 4 — doctor post-compile

- [ ] **Step 1 (only after step 3 user-confirmed PASS)**

```powershell
python C:\Users\user1\dev\odin_master\tools\substrate\doctor.py
```

Expected: PASS.

### Task 59: Run smoke step 5 — test --structural

- [ ] **Step 1**

```powershell
python C:\Users\user1\dev\odin_master\tools\substrate\test.py --structural
```

Expected: PASS.

### Task 60: Run smoke step 6 — non-trivial query (interactive)

- [ ] **Step 1: Surface to user**

Print: "Smoke step 6 requires invoking the odin skill: 'how does context.allocator interact with hot reload?'. Please run and confirm: cited answer, new page in `compiled/from-query/concepts/`, log entry with verbatim question."

- [ ] **Step 2: Wait for user confirmation**

### Task 61: Run smoke step 7 — trivial query (interactive)

- [ ] **Step 1: Surface to user**

Print: "Smoke step 7 requires invoking the odin skill: 'what's the signature of `os.read_entire_file`?'. Please run and confirm: cited answer, NO new page, NO log entry."

- [ ] **Step 2: Wait for user confirmation**

### Task 62: Run smoke step 8 — semantic test

- [ ] **Step 1**

```powershell
python C:\Users\user1\dev\odin_master\tools\substrate\test.py --semantic --domain odin
```

Expected: most gold queries pass. Some early-run failures are acceptable — note them.

### Task 63: Run smoke step 9 — promote (interactive)

- [ ] **Step 1: Pick a compiled page to promote**

```powershell
Get-ChildItem -Recurse C:\Users\user1\dev\odin_master\content\domains\odin\compiled\from-ingest -Filter *.md
```

- [ ] **Step 2: Promote a representative one (user picks)**

```powershell
python C:\Users\user1\dev\odin_master\tools\substrate\promote.py <picked-path>
```

Expected: page moves to vault/, frontmatter rewritten, INDEX updated, log appended.

### Task 64: Run smoke step 10 — doctor post-promote

- [ ] **Step 1**

```powershell
python C:\Users\user1\dev\odin_master\tools\substrate\doctor.py
```

Expected: PASS.

### Task 65: Run smoke step 11 — lint (interactive)

- [ ] **Step 1: Surface to user**

Print: "Smoke step 11 requires invoking the odin skill: 'lint the wiki'. Please run and confirm: lint report printed, contradictions queued in `source/contradictions.md`, log entry added."

- [ ] **Step 2: Wait for user confirmation**

### Task 66: Run smoke step 12 — new domain

- [ ] **Step 1**

```powershell
python C:\Users\user1\dev\odin_master\tools\substrate\domain-scaffold.py new domain test-domain
```

Expected: shell + skill stub created.

### Task 67: Run smoke step 13 — doctor on empty shell

- [ ] **Step 1**

```powershell
python C:\Users\user1\dev\odin_master\tools\substrate\doctor.py --domain test-domain
```

Expected: PASS.

### Task 68: Run smoke step 14 — cleanup

- [ ] **Step 1: Remove test-domain artifacts**

```powershell
Remove-Item -Recurse -Force C:\Users\user1\dev\odin_master\content\domains\test-domain
Remove-Item -Recurse -Force C:\Users\user1\dev\odin_master\.claude\skills\test-domain
```

- [ ] **Step 2: Manually remove the commented manifest hint that was appended**

Open `content/manifest.yaml` and delete the trailing block beginning `# ── test-domain domain — uncomment + populate when ready ──`.

- [ ] **Step 3: Verify**

```powershell
Test-Path C:\Users\user1\dev\odin_master\content\domains\test-domain
Test-Path C:\Users\user1\dev\odin_master\.claude\skills\test-domain
```

Expected: both `False`.

- [ ] **Step 4: Final doctor pass**

```powershell
python C:\Users\user1\dev\odin_master\tools\substrate\doctor.py
```

Expected: PASS.

---

## Completion criteria

The plan is complete when:

1. Phase 0 reviewer pass produced verdict PASS (or NEEDS REVISION → user approved revisions → re-PASS).
2. All Phase 1–9 tasks completed with their per-task verification steps PASS.
3. Phase 10 smoke test runbook executed and steps 1–13 confirmed PASS (step 14 is cleanup).
4. Final `doctor` invocation returns PASS across all five domains.

At completion, the substrate is migrated and validated. The user can then `git commit` at their own discretion.

---

## Self-review notes

This plan was self-reviewed against the spec; the following items were verified covered:

- Three-tier per-domain layout (source/compiled/vault) — Tasks 10–24, 25–28
- `from-ingest/` and `from-query/` provenance subfolders — Tasks 21, 25–28
- Five domains scaffolded — Tasks 11 (odin moves), 25–28 (4 empty shells)
- Six page-type templates — Tasks 29–34
- Domain scaffold template — Task 35
- `knowledge-substrate-core` shared skill — Task 36
- Per-domain skills (5 total) — Tasks 37–41
- Four shell tools — Tasks 42–45
- Doc rewrites (CLAUDE, README, LEARNING, nvim, justfile, manifest, quality-checks) — Tasks 46–52
- Smoke test runbook — Task 54
- Smoke test execution — Tasks 55–68
- Independent reviewer gate — Task 0
- Subagent-parallel execution — encoded in parallel-group tags throughout
- No git commits during execution — explicitly noted in Critical Execution Rules

Items deferred (per spec Open Questions):

- `update` fetcher pipeline — manifest fetcher is currently part of the deleted `tools/indexer/`; v1 keeps `manifest.yaml` as data only. A real Update workflow is a follow-up.
- qmd integration — deferred until INDEX.md scaling pain.
- Image handling, batch ingest, Obsidian niceties, multi-agent coordination, decay/lifecycle — all in Open Questions.
- Executable-validation extension — Open Questions; possibly worth a follow-up project.
- Category-2 system (model of user's understanding) — explicitly out-of-scope; possibly a parallel project.
