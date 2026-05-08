# Substrate Redesign — Design Spec

- **Date:** 2026-05-04
- **Status:** Approved (brainstorming phase, post-amendment)
- **Supersedes (in part):** `2026-04-19-odin-master-template-design.md`
- **Implementation plan (next):** `docs/superpowers/plans/2026-05-04-substrate-redesign-plan.md`

## Goals

Redesign `odin_master` from an Odin-specific reference tool into a **multi-domain personal technical-knowledge substrate**. Adopt Andrej Karpathy's "LLM Wiki" pattern as the foundation, extended with rigor borrowed from gist commenters and the OpenBrain critique.

The substrate must:

1. Treat upstream-mirrored material as the immutable source of truth.
2. Make the LLM the author of all derived knowledge artifacts (concepts, summaries, indexes), regenerable on demand.
3. Preserve human-blessed artifacts in a frozen tier that the regeneration pipeline never touches.
4. Scale to multiple domains (Odin first; papers, SDL3, engines, graphics scaffolded as empty shells).
5. Stay light. This is solo personal tooling, not a code base. Tooling is markdown templates, skill bodies, and ~4 small Python scripts.

**Primary intent (v1):** This substrate exists to support the user's learning of Odin + game programming + graphics programming. The Odin domain is populated; SDL3, engines, and graphics are empty shells anticipating that learning extending into adjacent areas. Papers is a fifth shell reserved for if/when research-paper ingestion becomes part of that path. Other domains (or other subjects entirely) are an exploratory possibility, not a v1 target. Success criterion is "did this help me learn the things I'm trying to learn," not "is this a comprehensive personal knowledge tool." When in doubt, defer additions; expand only when a concrete need exceeds what markdown + grep + skill provides.

## Non-goals

- Not a multi-user / collaborative system. No RLS, no auth.
- Not a SaaS / hosted product. No deployment story.
- Not a research-grade RAG system. No embeddings, no vector DB, no fine-tuning loop in v1.
- Not a personal-memory store (Karpathy's pattern as repurposed by Open Brain). The substrate stores the **external technical world**, not the user's personal exhaust.
- Not a wiki-as-living-document model. The substrate is closer to a build system: source compiles to derived artifacts, vault holds the blessed snapshots.
- Not a model of the user's understanding. See Category 1 vs Category 2 framing below.

## Architecture

### Category 1 vs Category 2 framing

The substrate is firmly **category 1**: a lookup-and-synthesis layer over external technical sources. It is **not** category 2 (a model of the user's understanding). The two should never blur.

- **Category 1 content** lives in `source/raw/`, `compiled/`, and `vault/`. The LLM is the author of compiled output; you bless the keepers via promote. Useful for "how do I write this Vulkan thing right now" — a private, local mini-internet.
- **Category 2 traces** live in `source/notes/` (your hand-written content, currently empty by default) and per-domain `compiled/log.md` (your verbatim question history). The substrate doesn't *model* your understanding, but it does *record* the questions you've asked, which is the closest thing to a category-2 trace it can provide.

Provenance is tracked per compiled page (`provenance: from-ingest | from-query`) so you can always tell whether a page exists because the LLM ingested a source or because you asked a question. They look identical otherwise; the tag is the only signal. The folder split (`compiled/from-ingest/` vs `compiled/from-query/`) makes the distinction visible at the filesystem level too.

A true category-2 system (one that actually models your understanding and proposes next learning steps) is out of scope for this substrate; it's a separate parallel project. The verbatim question history in `log.md` is the closest seed this substrate offers.

### Three-tier storage per domain

Each domain has three storage tiers with strict ownership rules.

| Tier | Path | Owner | Mutability | Regenerable? |
|---|---|---|---|---|
| `source/` | `content/domains/<d>/source/` | Upstream maintainers (under `raw/`) + you (manifest, `contradictions.md`, optional `notes/`) | Immutable from LLM's perspective | No — refetched via `update` |
| `compiled/` | `content/domains/<d>/compiled/` | LLM | Regenerated on every Compile | Yes — idempotent |
| `vault/` | `content/domains/<d>/vault/` | Human (LLM original, you blessed) | Frozen; only changes via `promote` | No — promote is one-way |

**Prime directive:** the LLM never writes to `source/` or `vault/`. Compile produces only into `compiled/`. Promote moves one file at a time from `compiled/` to `vault/`, rewriting frontmatter to mark it frozen.

### Multi-domain layout

Five domains scaffolded at project start:

| Domain | v1 status |
|---|---|
| `odin` | Populated (migrated from existing repo content) |
| `papers` | Empty shell (structure + skill stub, no content) |
| `sdl3` | Empty shell |
| `engines` | Empty shell |
| `graphics` | Empty shell |

Each domain owns its own source/compiled/vault tree. Cross-domain references are allowed via explicit wikilinks (e.g., from `sdl3/compiled/` to `graphics/compiled/`). `doctor` validates cross-domain links the same as intra-domain.

### Schema layer

The schema is split across three locations rather than a single CLAUDE.md:

- `CLAUDE.md` — project rules, source/compiled/vault discipline, two-outputs rule, category-1 framing, no-VCS-without-permission rule.
- `.claude/skills/knowledge-substrate-core/SKILL.md` — the workflow definitions (Ingest / Compile / Query / Lint), validator rules, frontmatter schema.
- `.claude/skills/<domain>/SKILL.md` — thin per-domain skills: tier semantics, source-type templates in scope, domain quirks.

The split is deliberate: workflows are shared across domains, but each domain has its own conventions (what tier 1 means, which page-types apply).

## Directory layout

```
odin_master/                                  # repo root
├── CLAUDE.md                                 # extended: workflow conventions
├── README.md                                 # rewritten: new quickstart
├── LEARNING.md                               # rewritten: new paths/hotkeys
├── justfile                                  # +recipes for substrate tools
├── pyproject.toml                            # existing
│
├── .claude/skills/
│   ├── knowledge-substrate-core/             # NEW: shared workflow skill
│   │   └── SKILL.md
│   ├── odin/                                 # rewritten: thin domain skill
│   │   └── SKILL.md
│   ├── odin-workspace/                       # existing, untouched
│   ├── papers/                               # NEW: empty-shell domain skill
│   ├── sdl3/                                 # NEW
│   ├── engines/                              # NEW
│   └── graphics/                             # NEW
│
├── content/
│   ├── manifest.yaml                         # extended: gains `domain:` per entry
│   ├── quality-checks.yaml                   # extended: structural + semantic blocks
│   │
│   ├── domains/
│   │   ├── odin/
│   │   │   ├── source/
│   │   │   │   ├── raw/                      # upstream-mirrored, immutable
│   │   │   │   │   ├── tier1-authoritative/  # MOVED from content/sources/
│   │   │   │   │   ├── tier2-curated/
│   │   │   │   │   └── tier3-community/
│   │   │   │   ├── notes/                    # NEW: reserved for hand-written content (empty by default)
│   │   │   │   ├── contradictions.md         # NEW: append-only, you maintain
│   │   │   │   └── README.md                 # NEW: domain intro + tier semantics
│   │   │   ├── compiled/
│   │   │   │   ├── INDEX.md                  # load-bearing navigation
│   │   │   │   ├── log.md                    # append-only timeline + verbatim Q history
│   │   │   │   ├── from-ingest/              # NEW: pages produced by Ingest workflow
│   │   │   │   │   ├── summaries/
│   │   │   │   │   ├── concepts/
│   │   │   │   │   └── cross-refs/
│   │   │   │   └── from-query/               # NEW: pages produced by Query (two-outputs rule)
│   │   │   │       ├── concepts/
│   │   │   │       └── cross-refs/
│   │   │   ├── vault/
│   │   │   │   ├── studies/                  # MOVED from top-level studies/
│   │   │   │   └── lessons/                  # MOVED from top-level lessons/
│   │   │   ├── templates/                    # MOVED — Odin project scaffolds
│   │   │   │   ├── cli/
│   │   │   │   ├── game/
│   │   │   │   └── lib/
│   │   │   └── config/                       # MOVED from top-level
│   │   │       ├── odinfmt.json
│   │   │       └── ols.json
│   │   ├── papers/                           # NEW: empty shell
│   │   │   ├── source/
│   │   │   │   ├── raw/{tier1-peer-reviewed,tier2-arxiv,tier3-blog-summary}/
│   │   │   │   ├── notes/
│   │   │   │   ├── contradictions.md
│   │   │   │   └── README.md
│   │   │   ├── compiled/
│   │   │   │   ├── INDEX.md
│   │   │   │   ├── log.md
│   │   │   │   ├── from-ingest/
│   │   │   │   └── from-query/
│   │   │   └── vault/
│   │   ├── sdl3/                             # NEW: same shell shape
│   │   ├── engines/                          # NEW: same shell shape
│   │   └── graphics/                         # NEW: same shell shape
│   │
│   └── _archive/                             # NEW: retired content
│       ├── old-wiki-concepts/                # from content/wiki/concepts/
│       └── old-wiki-summaries/               # from content/wiki/summaries/
│
├── templates/
│   ├── page-types/                           # NEW: per-source-type page templates
│   │   ├── article.template.md
│   │   ├── paper.template.md
│   │   ├── code-symbol.template.md
│   │   ├── blog-post.template.md
│   │   ├── concept.template.md
│   │   └── summary.template.md
│   └── domain/                               # NEW: scaffold for new domains
│       ├── source/
│       │   ├── raw/{tier1,tier2,tier3}/
│       │   ├── notes/                        # empty
│       │   ├── contradictions.md
│       │   └── README.md.template
│       ├── compiled/
│       │   ├── INDEX.md
│       │   ├── log.md
│       │   ├── from-ingest/
│       │   └── from-query/
│       └── vault/
│
├── docs/
│   ├── adding-sources.md                     # existing
│   └── superpowers/
│       ├── specs/
│       │   ├── 2026-04-19-odin-master-template-design.md
│       │   └── 2026-05-04-substrate-redesign-design.md   # this file
│       └── plans/
│           ├── INDEX.md
│           └── 2026-05-04-substrate-redesign-plan.md     # next
│
├── tools/
│   ├── substrate/                            # NEW: shell tools
│   │   ├── doctor.py
│   │   ├── promote.py
│   │   ├── test.py
│   │   └── domain-scaffold.py
│   ├── domains/odin/                         # MOVED domain-specific tooling
│   │   ├── odin_lib/
│   │   └── lessons-check/
│   ├── install/                              # existing
│   ├── git-hooks/                            # existing
│   ├── nvim/                                 # rewritten: hotkey rewiring
│   ├── obsidian/                             # existing
│   └── debug/                                # existing
│
├── build/                                    # existing
├── tests/                                    # existing
├── playground/                               # existing
└── another/                                  # existing scratch dir, untouched
```

### Migration table

| Old path | New path / disposition |
|---|---|
| `content/sources/tier1-*` etc. | `content/domains/odin/source/raw/tier1-*` etc. |
| `content/wiki/concepts/` | `content/_archive/old-wiki-concepts/` (regenerated by Compile into `from-ingest/`) |
| `content/wiki/summaries/` | `content/_archive/old-wiki-summaries/` (regenerated by Compile into `from-ingest/`) |
| `content/wiki/INDEX.md` | Replaced by per-domain `compiled/INDEX.md` |
| `content/index/` | Deleted (old BM25 search index, no longer used) |
| `content/outputs/` | Deleted if scratch; verify before removing |
| `tools/indexer/` | Deleted (old indexer pipeline, replaced by skill-driven Compile) |
| `tools/search/` | Deleted (broken `odin-search`, replaced by INDEX.md; qmd later) |
| `tools/lessons-check/` | `tools/domains/odin/lessons-check/` |
| `tools/odin_lib/` | `tools/domains/odin/odin_lib/` |
| Top-level `studies/` | `content/domains/odin/vault/studies/` |
| Top-level `lessons/` | `content/domains/odin/vault/lessons/` |
| Top-level `templates/{cli,game,lib}/` | `content/domains/odin/templates/{cli,game,lib}/` |
| Top-level `odinfmt.json` | (kept at root — OLS needs configs adjacent to source; the "domain owns its config" idea was reverted post-execution) |
| Top-level `ols.json` | (kept at root — same reason) |
| `bash.exe.stackdump`, `bootstrap-out.log` | Deleted (stale debug artifacts) |
| `odin_master_template.egg-info/` | Deleted (build artifact, gitignored) |

## File conventions

### Compiled-page frontmatter (required)

```yaml
---
title: <human-readable title>
type: <article | paper | code-symbol | blog-post | concept | summary>
domain: <odin | papers | sdl3 | engines | graphics>
tier: <1 | 2 | 3>
provenance: <from-ingest | from-query>     # required — see Category 1 vs 2
source_ids:
  - path: source/raw/tier1-authoritative/odin-lang-org/foo.md
    sha256: <hex>
  - path: source/raw/tier2-curated/karl-zylinski/bar.md
    sha256: <hex>
compiled_at: 2026-05-04T14:22:18Z
compiled_by: claude-opus-4-7
status: draft                # draft = unreviewed, stable = ready to promote
---
```

### Vault-page frontmatter (after promote)

```yaml
---
title: ...
type: ...
domain: ...
frozen: true
promoted_from: compiled/from-ingest/concepts/allocators-and-context.md
promoted_at: 2026-05-04T09:11:02Z
original_compiled_at: 2026-05-03T14:22:18Z
original_provenance: from-ingest          # preserved for archaeology
original_source_ids:
  - path: ...
    sha256: ...
blessed_because: <optional note from --note flag>
---
```

### Source-side files

`contradictions.md` and `README.md` in `source/` need only minimal frontmatter (`type:`, `domain:`). Files in `source/notes/` (when present) need only `type:` and `domain:` plus whatever the user finds useful.

### Page templates per type

| Template | Required body sections |
|---|---|
| `article.template.md` | TLDR (≤3 sentences) · Body · Caveats / Edge Cases · Sources |
| `paper.template.md` | TLDR · Methodology · Claims (each with span anchor) · Datasets · Limitations · Sources |
| `code-symbol.template.md` | TLDR (signature + one-line purpose) · Signature · Examples · Gotchas / Footguns · Related Symbols · Sources |
| `blog-post.template.md` | TLDR · Body · Author's Stance · Sources |
| `concept.template.md` | TLDR · Definition · Examples · Common Misconceptions · Related Concepts · Sources |
| `summary.template.md` | TLDR · Key Points · Quoted Highlights (with anchor) · Sources |

The `Sources` section is always last and must list every `source_ids:` entry from frontmatter as an explicit `[[source/...]]` wikilink. `doctor` validates parity.

### `log.md` format (per domain, in `compiled/`)

Append-only. Greppable with `grep "^## \[" log.md`. Query entries record the **verbatim user question** so the log file becomes a category-2 trace of what you've been thinking about over time.

```markdown
## [2026-05-04] ingest | odin-pkg-docs/core-os.md
- 1 new source mirrored
- 3 from-ingest concept pages updated: filesystem.md, errors.md, paths.md
- INDEX.md regenerated

## [2026-05-04] compile | full
- 47 sources read, 23 compiled pages written, 0 stale
- duration: 4m12s

## [2026-05-04] query | "how does context.allocator interact with hot reload?"
- answered with citations to from-ingest/concepts/allocators-and-context.md and Karl Zylinski's hot-reload post
- wrote from-query/concepts/allocator-and-hot-reload.md (new)

## [2026-05-04] lint | wiki-health
- 2 contradictions surfaced (proposals appended to contradictions.md)
- 1 orphan page: from-ingest/concepts/legacy-thing.md

## [2026-05-04] promote | from-ingest/concepts/allocators-and-context.md → vault/
```

Trivial queries skip the log entirely (see Two-outputs-per-task rule below).

### `contradictions.md` format (per domain, in `source/`)

Append-only. LLM proposes; user resolves.

```markdown
# Contradictions — Odin Domain

## [2026-05-04] context.allocator default lifetime
- Karl Zylinski: persists for procedure scope (source: posts-temporary-allocator-your-first-arena)
- gingerBill: can be swapped per call (source: article-2024-11-10-opengl-is-not-right-handed)
- **Resolution**: both correct in different contexts. Concept page should distinguish.

## [pending] [2026-05-04] tagged union zero value
- core/runtime/runtime.odin says: ...
- gingerbill blog says: ...
- **Resolution**: TBD
```

### `INDEX.md` format (per domain, in `compiled/`)

Load-bearing. Regenerated on every Compile pass. The skill workflow refuses to complete a Compile without updating it. Pages are grouped by provenance so the user can see at a glance which pages came from ingestion versus which came from their own queries.

```markdown
# Odin Domain — INDEX

Last regenerated: 2026-05-04T14:22:18Z

## From ingest

### Concepts
- [Allocators and context](from-ingest/concepts/allocators-and-context.md) — how Odin's implicit allocator system works
- [Tagged unions](from-ingest/concepts/tagged-unions.md) — sum types, switching, pitfalls

### Summaries (per source)
- [Karl Zylinski: hot reload](from-ingest/summaries/karl-zylinski-hot-reload.md) — game state preservation across rebuilds

### Cross-references
- [stdlib ↔ vendor:raylib memory model](from-ingest/cross-refs/stdlib-vs-raylib.md)

## From query

### Concepts
- [Allocator and hot reload interaction](from-query/concepts/allocator-and-hot-reload.md) — synthesized 2026-05-04 from query

## Vault (blessed, never auto-edited)
- [Studies / arena-allocator (cited)](../vault/studies/arena-allocator.cited.md)
- [Lessons 00–19](../vault/lessons/)
```

### Provenance hashing

- At Compile time, every source file referenced gets SHA-256'd; the hash goes in the compiled page's `source_ids:`.
- `doctor --provenance-check` re-hashes current source files and compares. Mismatch = "this page may now be lying."
- `vault/` pages preserve `original_source_ids:` and `original_provenance:` for archaeology but are exempt from staleness checks (frozen by definition).

### Validator-at-compile-time (rejection rules)

The Compile workflow refuses to write a page if any of:
- Required frontmatter field missing (including `provenance:`)
- `provenance:` is not one of `from-ingest`, `from-query`
- A `source_ids:` path doesn't exist
- A required body section per template is missing or empty
- TLDR is empty or longer than its template-defined cap
- Any `[[source/...]]`, `[[compiled/...]]`, or `[[vault/...]]` link in the body doesn't resolve
- The `Sources` section doesn't list every entry from `source_ids:`

Violation → write rejected, the offending fields/sections logged, the LLM retries.

### Two-outputs-per-task rule (codified in CLAUDE.md and core skill)

**Non-trivial queries** produce two outputs:
1. The answer to you (in chat)
2. A wiki update — a new page in `compiled/from-query/` or an edit to an existing one — capturing what was synthesized.

**Trivial queries** (quick lookups, single-fact recall, restating known facts) skip both the wiki update *and* the log entry. The skill exercises judgment.

Examples:
- "What's the signature of `os.read_entire_file`?" — trivial; no update, no log.
- "How does Odin's `context.allocator` interact with hot reload?" — non-trivial; write update + log entry with verbatim question.

If uncertain whether a query is trivial, default to writing the update. The cost of being wrong is small either way (occasional missed page or occasional noise log entry).

## Workflows

Six skill/shell workflows + two pure-shell tools. Each is triggerable by the user; some auto-trigger others.

| Workflow | Kind | Triggered by | Triggers |
|---|---|---|---|
| Update | shell | user | Ingest (per new source) |
| Ingest | LLM (skill) | user / Update | Compile (focused) |
| Compile | LLM (skill) | user / Ingest / Query | — |
| Query | LLM (skill) | user | Compile (single page, via two-outputs rule) |
| Lint | LLM (skill) | user (or cron) | — (proposals only) |
| Promote | shell | user | — |
| Doctor | shell | user | — (report only) |
| Test | shell | user | — (pass/fail) |

### Update (shell, `odin-master update [--domain <d>]`)

1. For each manifest entry: run its fetcher (`html_mirror`, `git_clone`, `local_dir`, `pasted_text`).
2. Diff vs. existing `source/raw/` — flag added/changed/removed files.
3. Run `doctor --provenance-check` to flag compiled pages whose source hashes drifted.
4. Append to `log.md`: `## [date] update | <changed sources>`.
5. Print summary: "X new sources, Y changed, Z compiled pages now stale → run `compile`?"

### Ingest (skill workflow)

A new or changed source needs integrating. Interactive — user stays in the loop.

1. LLM reads the new/changed source.
2. LLM summarizes key takeaways in chat.
3. LLM identifies which existing compiled pages are affected (by topic, source-id reference, concept overlap). Pages written by Ingest live in `compiled/from-ingest/`.
4. LLM checks for contradictions with existing `compiled/` and `vault/`. Proposes new `contradictions.md` entries (status `[pending]`).
5. LLM triggers a focused Compile pass on the affected pages.
6. LLM appends to `log.md`: `## [date] ingest | <source-name>`.

### Compile (skill workflow)

Regenerate `compiled/` from `source/`. Idempotent.

1. Determine scope (one source, one concept, one source-type, or full domain).
2. For each affected output page:
   1. Pick the right page-type template.
   2. Read all `source_ids:` to be referenced; SHA-256 each.
   3. Draft the page following the template.
   4. Run validator-at-compile-time. Reject + retry on failure.
   5. Write to `compiled/from-ingest/<type>/` with `provenance: from-ingest` in frontmatter. (Compile-from-Ingest writes only to `from-ingest/`. Compile-from-Query, triggered by the Query workflow, writes to `from-query/` instead — see Query.)
3. Regenerate `compiled/INDEX.md` (mandatory). INDEX is grouped by provenance.
4. Append to `log.md`: `## [date] compile | <scope>` with stats.

Compile never touches `source/` or `vault/`. Compile never deletes a `compiled/` page that wasn't requested in scope.

### Query (skill workflow)

1. Read the domain's `compiled/INDEX.md` first.
2. Drill into relevant `compiled/` pages (both `from-ingest/` and `from-query/`), then `vault/` if applicable.
3. If exact API/code detail needed, read `source/raw/`.
4. Answer in chat — every factual claim cites `[[source/...]]`, `[[vault/...]]`, or `[[compiled/...]]`.
5. **Two-outputs rule (judgment call):**
   - If non-trivial: write a new page to `compiled/from-query/` (with `provenance: from-query`) or edit an existing one. Routes through Compile's validator.
   - If trivial: skip both wiki update and log entry.
6. If a wiki update was written: append to `log.md`: `## [date] query | "<verbatim user question>"` plus what was written/updated.

### Lint (skill workflow)

Wiki health check. Proposes work; never auto-fixes.

1. Scan `compiled/` (both `from-ingest/` and `from-query/`) for:
   - Orphan pages (no inbound links from INDEX.md or other pages)
   - Contradictions between pages
   - Stale pages (calls `doctor --provenance-check`)
   - Concepts mentioned in pages but lacking their own page
   - Missing cross-references
   - Required-section gaps
2. Append contradiction proposals to `source/contradictions.md` as `[pending]`.
3. Print a lint report.
4. Append to `log.md`: `## [date] lint | wiki-health` with counts.

### Promote (shell, `odin-master promote <compiled-path> [--note "..."]`)

1. Validate file passes all `doctor` checks (refuses to promote a broken page).
2. Move file to corresponding `vault/<type>/` location. Vault has no provenance subfolders — once promoted, it's all blessed.
3. Rewrite frontmatter: add `frozen: true`, `promoted_from:` (full path including `from-ingest/` or `from-query/`), `promoted_at:`, copy `provenance:` to `original_provenance:`, copy `source_ids:` to `original_source_ids:`.
4. Optional `--note "<blessing>"` adds `blessed_because:` to frontmatter.
5. Update `compiled/INDEX.md` (move entry from From-Ingest or From-Query section to Vault section).
6. Walk both `compiled/from-ingest/` and `compiled/from-query/` for any pages that linked to the moved file; update those links to point to `vault/`.
7. Append to `log.md`: `## [date] promote | <path>`.

### Doctor (shell, `odin-master doctor [--provenance-check] [--domain <d>]`)

Mechanical health checks. No LLM. Pass/fail report.

- All `source_ids:` paths exist.
- `--provenance-check`: re-hash sources, flag mismatches.
- All `[[wikilinks]]` resolve (source/compiled/vault, intra- and cross-domain).
- Every compiled page has required frontmatter fields, including `provenance:` set to `from-ingest` or `from-query`.
- Every compiled page has body sections required by its template.
- Every compiled page lives under the right provenance subfolder (`from-ingest/` if `provenance: from-ingest`, etc.).
- No orphan files outside the known structure.
- `log.md` is parseable (`## [date] action | title` format).

Exit code 0 = pass, 1 = fail. `--json` flag for tooling.

### Test (shell, `odin-master test [--structural] [--semantic] [--domain <d>]`)

Runs `quality-checks.yaml` — both halves.

- **Structural**: equivalent to `doctor` (subset).
- **Semantic**: for each gold query, invoke the relevant skill (via `claude -p` from shell — the one place CLI-from-shell is needed for unattended runs), capture the answer, assert cited sources include the required `source_ids:`. Pass/fail per query, summary at end.

Exit code 0/1.

## Tooling

### Skills

**`knowledge-substrate-core`** (~300–400 line SKILL.md): the shared workflow skill. Per-domain skills reference it. Body covers:
- Source/compiled/vault discipline + category-1 framing
- Workflow definitions (Ingest, Compile, Query, Lint) as numbered recipes
- Validator rules (including provenance enforcement)
- Frontmatter / template references
- Two-outputs rule with trivial-query escape
- Logging contract (verbatim questions)
- What NOT to do

**Per-domain skills** (~50–100 line SKILL.md each): thin pointers. Each covers:
- Domain pointer (`content/domains/<name>/`)
- Tier semantics for this domain
- Source-type templates in scope
- Domain-specific quirks
- "Defer to core for orchestration"

Empty-shell domains (papers/sdl3/engines/graphics) ship with the structure and placeholder content for items 3–5.

The current `odin` skill body (with its detailed canonical-source map) gets reduced — most of its content moves to `content/domains/odin/source/README.md` where it's a versioned data file rather than skill prose.

### Shell tools (`tools/substrate/*.py`)

Pure Python, stdlib + `pyyaml`. Each ~60–150 lines.

- **`doctor.py`** — checks above. Subcommands `--provenance-check`, `--domain <d>`, `--json`.
- **`promote.py`** — `promote <path> [--note "..."] [--dry-run]`.
- **`test.py`** — runs `quality-checks.yaml`, structural + semantic. The semantic block shells out via `claude -p`.
- **`domain-scaffold.py`** — `new domain <name>`. Copies `templates/domain/`, renders README, creates skill stub, prints next steps.

### qmd (active in v1)

Karpathy recommends qmd as the search backend. Installed and wired in v1.

- Install: `npm install -g @tobilu/qmd` (it's a Node package, not a Rust binary).
- Index: `qmd collection add <path> --name <name>` per source corpus. `qmd embed` generates vector embeddings (optional — BM25-only mode works without).
- Wrapper: `tools/substrate/search.py`, invoked as `just substrate-search "<query>" [--bm25]`. On Windows, the wrapper bypasses the npm shell shim by invoking `node` + `qmd.js` directly (the shim's `/bin/sh` shebang doesn't work from cmd.exe).
- Workflow integration: `knowledge-substrate-core` § Query has a search step that shells out to qmd as a fallback when INDEX.md doesn't reveal the right page.
- MCP mode: `qmd mcp` (stdio) or `qmd mcp --http` (HTTP server). Future work could wire qmd's MCP server into `.claude/settings.json` so the LLM uses it as a native tool rather than via a CLI wrapper.

qmd's vector component is on-device with no Ollama or external embedding service. INDEX.md remains the primary navigator; qmd is the fallback when index doesn't suffice, or for finding phrases across raw sources.

### `justfile` recipes

```just
update domain="":
    odin-master update {{ if domain != "" { "--domain " + domain } else { "" } }}

doctor domain="":
    odin-master doctor {{ if domain != "" { "--domain " + domain } else { "" } }}

doctor-provenance domain="":
    odin-master doctor --provenance-check {{ if domain != "" { "--domain " + domain } else { "" } }}

promote path:
    odin-master promote {{ path }}

test domain="":
    odin-master test {{ if domain != "" { "--domain " + domain } else { "" } }}

new-domain name:
    odin-master new domain {{ name }}
```

## Multi-domain pattern

### Empty-shell content (per domain)

Each empty domain at v1 contains only the directory skeleton (`source/raw/{tier1,tier2,tier3}/`, `source/notes/`, `compiled/from-ingest/`, `compiled/from-query/`, `vault/`), a one-line `contradictions.md` stub, a `source/README.md` describing tier semantics for that domain, an empty `compiled/INDEX.md` ("no sources ingested yet"), and an init-only `compiled/log.md` (`## [<scaffold-date>] init | empty shell`).

### Tier semantics per planned domain

Each domain's `source/README.md` codifies its own tier definitions:

| Domain | Tier 1 | Tier 2 | Tier 3 |
|---|---|---|---|
| odin | odin-lang.org docs, stdlib source, vendor source | Karl Zylinski / gingerBill / jakubtomsu blogs | odin-examples repo, community gists |
| papers | Peer-reviewed venues (SIGGRAPH, IEEE, ACM) | arxiv preprints | Blog summaries / reviews |
| sdl3 | libsdl.org docs, SDL3 headers, Khronos specs | SDL maintainer blogs, sample code | Community wiki, third-party tutorials |
| engines | Engine source code, official docs | Engine-team blogs, conference talks | Community guides, plugins |
| graphics | Khronos specs, GPU vendor docs | Practitioner blogs (Quilez, Wronski, P) | SO answers, tutorials |

### Adding a sixth domain

```
odin-master new domain <name>
```

Creates `content/domains/<name>/{source,compiled,vault}/` (with the full sub-structure including `notes/`, `from-ingest/`, `from-query/`), the skill stub at `.claude/skills/<name>/SKILL.md`, appends a commented manifest entry hint, prints next steps.

Then user fills in: real manifest entries, the skill body (tier semantics + quirks), the source README. Run `odin-master update`. Run a Compile pass via the skill.

No core code changes required for typical domains. Domains needing a new fetcher type (e.g., `arxiv-pdf` for papers) extend the indexer locally.

### Cross-domain rule

Cross-domain navigation happens via explicit cross-references, not folder mixing. Compile is allowed to make cross-domain links; `doctor` validates them like intra-domain links.

## Validation strategy

### Three layers

1. **Mechanical** (`doctor`): file-level checks, no LLM. Always cheap.
2. **Regression gold-set** (`test`): `quality-checks.yaml` structural + semantic. CI-able.
3. **End-to-end smoke test**: 14-step runbook (below) executed once after implementation lands.

### End-to-end smoke test runbook (`docs/smoke-test.md`)

```
1. Cold start: odin-master update --domain odin
   → expect: source/raw/ refilled, log.md gains "## update" entry

2. odin-master doctor --provenance-check
   → expect: report = 100% of (zero) compiled pages stale

3. Invoke odin skill: "compile the odin domain"
   → expect: compiled/from-ingest/ populated with concept + summary pages
              (provenance: from-ingest in every frontmatter),
              INDEX.md regenerated with From-Ingest section,
              log.md gains "## compile" entry

4. odin-master doctor
   → expect: PASS

5. odin-master test --structural
   → expect: PASS

6. Invoke odin skill: "how does context.allocator interact with hot reload?"
   → expect: cited answer in chat
              + new page at compiled/from-query/concepts/<slug>.md
                  with provenance: from-query (two-outputs rule)
              + log.md gains '## query | "<verbatim question>"' entry

7. Invoke odin skill: "what's the signature of os.read_entire_file?"
   → expect: cited answer in chat
              + NO wiki update (trivial query)
              + NO log entry

8. odin-master test --semantic
   → expect: PASS

9. odin-master promote compiled/from-ingest/concepts/<something>.md
   → expect: file moved to vault/, frontmatter rewritten
              (frozen: true, original_provenance: from-ingest preserved),
              INDEX.md updated (vault section), log.md gains "## promote"

10. odin-master doctor (again)
    → expect: PASS — cross-references to promoted page now point to vault/

11. Invoke odin skill: "lint the wiki"
    → expect: lint report printed, contradictions appended as [pending],
              log.md gains "## lint"

12. odin-master new domain test-domain
    → expect: shell created (with notes/, from-ingest/, from-query/),
              skill stub created, manifest.yaml gains commented stub

13. odin-master doctor --domain test-domain
    → expect: PASS (healthy empty shell)

14. Cleanup: rm -rf content/domains/test-domain/ + .claude/skills/test-domain/
```

If 1–13 pass, the substrate works end-to-end. 12–13 prove the multi-domain pattern. Step 7 specifically validates the trivial-query escape from the two-outputs rule.

## Meta-process (for the implementation phase)

### Independent reviewer

After `writing-plans` produces the implementation plan, a separate `general-purpose` subagent runs as the reviewer **before** any execution.

Reviewer prompt template:

> You are reviewing an implementation plan against a design spec. Read both files in full. Produce a conformance report:
> 1. **Spec coverage** — for each major deliverable in the spec (every file, directory, convention, workflow), name the plan task(s) that produce it. List any spec deliverables with no plan task.
> 2. **Plan justification** — for each plan task, point to the spec content it implements. List any plan tasks that don't trace back.
> 3. **Sequencing sanity** — flag any plan ordering that breaks dependencies.
> 4. **Risk flags** — any spec ambiguity the plan resolved by silently choosing one interpretation.
> 5. **Verdict** — PASS / NEEDS REVISION / BLOCK.

Output: `docs/superpowers/plans/2026-05-04-substrate-redesign-plan.review.md`. Read-only subagent, ~5 min runtime.

If NEEDS REVISION or BLOCK: revise plan (or update spec if spec is wrong — spec is the contract).

### Subagent execution

The implementation breaks into ~50–80 small tasks (file moves, stub creation, doc rewrites, ~4 Python scripts, ~6 SKILL.md files). Most are independent.

Parallelization rules:

| Task class | How to run |
|---|---|
| File moves (independent paths) | Parallel batches of ~5–10 |
| Stub creation for the 4 empty domain shells | Single parallel dispatch (one subagent per domain) |
| SKILL.md authoring (per domain + core) | Parallel — independent files |
| Python tool authoring | Parallel — each is its own file |
| Page-type template authoring (6 files) | Parallel — siblings |
| Doc rewrites (`README.md`, `LEARNING.md`, `CLAUDE.md`, nvim configs) | Parallel — independent files |
| Manifest schema update + `domain:` field backfill | Serial — touches one file |
| Final `doctor` / `test` pass | Serial — must run after everything else |

The plan tags each task with `parallel-group: <id>` or `serial`. Main agent dispatches per-group as parallel subagent batches and waits for the group to complete. The `superpowers:subagent-driven-development` skill orchestrates.

Each subagent reports: files touched, one-line diff summary, blockers. Main agent verifies actual file state against the report before marking complete (trust-but-verify).

### Spec is the contract

Any plan deviation from spec requires updating the spec first. Reviewer enforces this.

## Open questions / future work

Deliberately out of scope for v1; flagged for future revisions:

- **Obsidian niceties** — Web Clipper integration, Marp slide answers, matplotlib chart answers, Dataview queries, graph view conventions. Substrate doesn't preclude any; just unwired.
- **Image handling** — when first image-heavy source lands (papers domain), need download convention + paths.
- **Batch ingest** — current Ingest is one-source-at-a-time-by-default. Nothing precludes batching; just unspecified.
- **Wiki-as-living-document mode** — Karpathy's pattern lets the LLM edit pages in place. Our model regenerates. If a domain wants the in-place model later, it can be a per-domain configuration.
- **Multi-agent coordination** — if Claude Code, Codex, and Gemini all share the wiki, need an explicit protocol (per gist commenter AEVYRA's failure modes). Not v1.
- **Decay / lifecycle of compiled pages** — currently regenerated on demand; a domain may want auto-expiry of stale pages someday.
- **Executable validation layer** — wiki claims about code/API behavior could link to runnable artifacts (benchmark, example program, test) that prove the claim. Particularly relevant for performance assertions ("X is faster than Y because cache coherency"). Extension to the page-type system + a CI hook. Real cost; defer until first time the lack of it bites.
- **Category-2 system (model of user's understanding)** — fundamentally different problem. Would require capturing your hand-written notes, detecting gaps, and proposing learning material at the right frontier. Not solvable by extending this substrate; would be a parallel project. Possibly seeded by the verbatim question history this substrate accumulates in `log.md` files.

## Notes on deviations from Karpathy's pattern

This design adopts Karpathy's pattern as foundation but adds rigor in several places, partly stricter than his text. Acknowledged deviations:

- His architecture is two-tier (raw / wiki / schema). Ours is three-tier (source / compiled / vault). The vault tier is added for blessed-and-frozen artifacts.
- His wiki is a living document edited in place. Our compiled tier is regenerated from source — closer to a build artifact than a maintained wiki.
- His "answers can be filed back" is a suggestion. Our two-outputs rule makes it required *for non-trivial queries* (trivial lookups skip the update — see Two-outputs-per-task rule).
- His "everything is optional and modular" framing is replaced with hard validator rules (frontmatter, sections, citations, INDEX regen, provenance field).
- His raw sources are a flat curated set. Ours are sliced by authority (tier 1/2/3) per domain. This is a purely additive extension; tiers are not in his pattern.
- He treats compiled output as a single category (the wiki). We split by provenance (`from-ingest` vs `from-query`) at both the frontmatter and folder levels, so the user can always tell whether a page exists because of source ingestion or because of their own questions.
- He recommends qmd as the search graduation step. We follow that progression: INDEX.md at v1, qmd when scale demands it. Deferral is about scale, not about disagreeing with his recommendation.

These deviations are deliberate and aimed at the substrate's specific use case (multi-domain external technical reference, regeneratable, with provenance and validation). Where his pattern is a sketch, ours is a runtime with invariants.
