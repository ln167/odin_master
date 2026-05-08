# Onboarding

A walkthrough for someone (or future-you) opening this repo for the first time. If you've read this in 15 minutes, you should be able to find anything, know who writes what, and understand why the structure is the way it is.

Read alongside `README.md` (quickstart) and `CLAUDE.md` (rules for AI agents).

## What this is

`odin_master` is a personal **multi-domain technical-knowledge substrate**. v1 is for learning **Odin + game programming + graphics programming**. The Odin domain is populated; four other domains (papers, sdl3, engines, graphics) are empty shells reserved for that learning extending.

This is **category 1**: a lookup-and-synthesis layer over external technical sources. It is *not* a model of your understanding. A wiki ≠ knowing the material. The substrate is "your own local mini-internet" — useful for "how do I write this Vulkan thing right now," not a stand-in for actually learning.

It follows Andrej Karpathy's [LLM Wiki pattern](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f) with deliberate, documented deviations (see the spec's "Notes on deviations" section).

## Mental model

### Three tiers per domain

Every domain (`content/domains/<d>/`) has three storage tiers with strict ownership rules:

| Tier | Path | Owner | Mutability |
|---|---|---|---|
| `source/` | upstream-mirrored docs + your manifest + (optional) your hand-written notes | upstream maintainers + you | LLM never writes here |
| `compiled/` | LLM-generated wiki: concepts, summaries, INDEX.md, log.md | LLM | regenerated on every Compile pass |
| `vault/` | blessed, frozen artifacts (studies, lessons) | human (LLM original, you blessed) | only changes via `just substrate-promote` |

**Prime directive:** the LLM never writes to `source/` or `vault/`. If you see the LLM trying to, stop it. The whole substrate's discipline rests on this.

### Provenance split inside `compiled/`

Pages in `compiled/` are split by why they exist:

- `compiled/from-ingest/` — page exists because the LLM ingested a source (manifest-driven).
- `compiled/from-query/` — page exists because *you* asked a question and the LLM filed the answer back (the "two-outputs rule" — see Workflows).

Frontmatter `provenance:` field must match the folder. `doctor` enforces this.

### Categories of content

Karpathy doesn't make this distinction; we do. Three kinds of content live (or could live) here:

1. **Hand-written by you** — currently empty. Lives in `source/notes/`. The LLM never writes here.
2. **LLM-from-source** — `compiled/from-ingest/`. LLM read upstream material and synthesized.
3. **LLM-from-query** — `compiled/from-query/`. LLM wrote the words but your question shaped what got written. Hybrid.

Category 2 (a true model of *your* understanding — what you can defend, what gaps you have) is **out of scope**. The closest the substrate offers is `compiled/log.md`, which records every non-trivial query you've asked verbatim. That trail of questions is your category-2 trace.

## Directory tour

```
odin_master/
├── ONBOARDING.md             ← you are here
├── README.md                 quickstart, common ops
├── CLAUDE.md                 discipline rules for AI agents
├── LEARNING.md               Odin learning daily loop + nvim hotkeys
├── justfile                  task runner; see "Common operations" below
├── pyproject.toml            Python deps (only `pyyaml`)
│
├── .claude/skills/           Claude Code skills
│   ├── knowledge-substrate-core/   shared workflow skill (Ingest/Compile/Query/Lint)
│   ├── odin/                       thin per-domain skill, points at content/domains/odin/
│   ├── papers/  sdl3/  engines/  graphics/    empty-shell domain skills
│   └── odin-workspace/             pre-existing, untouched
│
├── content/
│   ├── manifest.yaml         source registry — every entry tagged with `domain:`
│   ├── quality-checks.yaml   substrate regression tests (structural + semantic)
│   │
│   ├── domains/              ← per-domain knowledge
│   │   ├── odin/             ← populated
│   │   ├── papers/           ← empty shell
│   │   ├── sdl3/             ← empty shell
│   │   ├── engines/          ← empty shell
│   │   └── graphics/         ← empty shell
│   │
│   └── _archive/             retired pre-redesign content (old wiki/concepts, summaries)
│
├── templates/
│   ├── page-types/           the 6 page-type templates (article, paper, code-symbol,
│   │                          blog-post, concept, summary). Compile reads these.
│   └── domain/               scaffold copied by `just new-domain <name>`
│
├── docs/
│   ├── adding-sources.md     how to add an entry to manifest.yaml
│   ├── smoke-test.md         end-to-end runbook for verifying the substrate works
│   └── superpowers/
│       ├── specs/            design specs (deep — read for *why*, not *how*)
│       └── plans/            implementation plans + reviews
│
├── tools/
│   ├── substrate/            the four shell tools — doctor, promote, test, domain-scaffold
│   ├── domains/odin/         Odin-specific helpers (odin_lib, lessons-check)
│   ├── nvim/                 nvim integration (LSP, formatter, lessons hotkeys)
│   ├── install/              bootstrap scripts
│   ├── git-hooks/, obsidian/, debug/    pre-existing utilities
│
├── build/, tests/, lab/, bench/, scratch/    untouched by the substrate redesign
```

### Per-domain layout (inside `content/domains/<d>/`)

Every domain has the same shape:

```
content/domains/<d>/
├── source/                   ← IMMUTABLE — LLM never writes
│   ├── raw/                  upstream-mirrored material (per manifest fetcher)
│   │   ├── tier1-*/          authoritative (e.g., official docs, peer-reviewed)
│   │   ├── tier2-*/          curated (e.g., trusted blogs, arxiv)
│   │   └── tier3-*/          community (e.g., examples, gists, tutorials)
│   ├── notes/                ← reserved for your hand-written content (empty by default)
│   ├── contradictions.md     append-only log of source disagreements (you maintain)
│   └── README.md             tier semantics for this domain
│
├── compiled/                 ← LLM-OWNED — regenerable
│   ├── INDEX.md              load-bearing navigation map (regenerated every Compile)
│   ├── log.md                append-only timeline; query entries record verbatim questions
│   ├── from-ingest/          pages produced by Ingest workflow
│   │   ├── concepts/  summaries/  cross-refs/    (created lazily as needed)
│   └── from-query/           pages produced by Query workflow (two-outputs rule)
│       └── concepts/  cross-refs/
│
└── vault/                    ← BLESSED, FROZEN — only changes via `just substrate-promote`
    └── <free-form subfolders, no enforced naming>
```

The Odin domain has additional folders inherited from before the redesign:
- `vault/studies/` — citation-backed deep-dives (e.g., arena allocator)
- `vault/lessons/` — pedagogical curriculum (lessons 00–19)
- `templates/{cli,game,lib}/` — Odin project scaffolds (used by `just`/your editor)

OLS / formatter configs (`ols.json` and `odinfmt.json`) live at **repo root** rather than under the odin domain folder. OLS auto-detects project root from those files, so they have to sit adjacent to source, not nested under a domain dir.

## Tier semantics per domain

Each domain defines what its tiers mean (codified in `content/domains/<d>/source/README.md`):

| Domain | Tier 1 | Tier 2 | Tier 3 |
|---|---|---|---|
| odin | odin-lang.org docs, stdlib + vendor source | Karl Zylinski / gingerBill / jakubtomsu blogs | odin-examples, community gists |
| papers | Peer-reviewed (SIGGRAPH, IEEE, ACM) | arxiv preprints | Blog summaries / reviews |
| sdl3 | libsdl.org docs, SDL3 headers, Khronos specs | SDL maintainer blogs, sample code | Community wiki, third-party tutorials |
| engines | Engine source + official docs | Engine-team blogs, conference talks | Community guides, plugins |
| graphics | Khronos specs, GPU vendor docs (AMD, NVIDIA) | Practitioner blogs (Quilez, Wronski, P) | SO answers, tutorials |

## Who writes what

| File / location | Author |
|---|---|
| `content/domains/<d>/source/raw/...` | Upstream maintainers; mirrored by manifest (deferred fetcher pipeline; populate by hand for v1) |
| `content/domains/<d>/source/contradictions.md` | You, with LLM proposals to approve |
| `content/domains/<d>/source/notes/...` | You (currently empty by default; substrate doesn't require any) |
| `content/domains/<d>/source/README.md` | You; describes the domain's tier semantics |
| `content/domains/<d>/compiled/...` | **LLM only**, via Compile workflow. You don't hand-edit. |
| `content/domains/<d>/vault/...` | LLM originally, you blessed via `just substrate-promote`. Frozen — don't edit. |
| `content/manifest.yaml` | You; declarative ingest spec |
| `content/quality-checks.yaml` | You; regression test definitions |
| `templates/page-types/*.md` | You; rare changes |
| `.claude/skills/<d>/SKILL.md` | You; tells the LLM how to handle this domain |
| `tools/substrate/*.py` | You; the four shell utilities |

The hard rule: **LLM never writes to `source/` or `vault/`.**

## Workflows (plain English)

The substrate has four LLM-driven workflows (live inside the `knowledge-substrate-core` skill) and four mechanical shell tools.

### LLM workflows (invoked through Claude Code)

- **Ingest** — A new source landed (or got changed). Read it, summarize the takeaways for me, find which existing wiki pages are affected, note any contradictions with what we already had, then trigger Compile to regenerate the affected pages.
- **Compile** — Regenerate `compiled/from-ingest/` (or `from-query/`) pages from `source/` material. Strict template + frontmatter validation. Mandatory INDEX.md regen. Idempotent — same source → same output.
- **Query** — I asked a question. Read INDEX.md first, drill into relevant pages, cite sources for every claim. **Two-outputs rule** for non-trivial queries: also produce a wiki page in `compiled/from-query/` capturing the synthesis. Trivial queries (signature lookups, single-fact recall) skip both the page write and the log entry.
- **Lint** — Walk the wiki looking for orphans, contradictions, stale pages, missing concepts, broken cross-refs. Propose fixes (append `[pending]` to `contradictions.md`); never auto-fix.

### Shell tools (run from terminal)

- **`just doctor [domain]`** — mechanical health check. Validates frontmatter, citations, provenance/folder parity, log.md format. No LLM.
- **`just doctor-provenance [domain]`** — re-hashes source files; flags compiled pages whose source has drifted ("this page may now be lying").
- **`just substrate-promote <path>`** — moves a compiled page to `vault/`, rewrites frontmatter (`frozen: true`, `original_provenance:`), updates INDEX.md and any cross-references. Refuses if `doctor` fails.
- **`just substrate-test [domain]`** — runs `quality-checks.yaml` (structural + semantic gold-set).
- **`just substrate-search "<query>" [--bm25]`** — qmd-backed search over indexed sources. Hybrid (BM25 + vector + LLM rerank) by default; `--bm25` for keyword-only. Karpathy's recommended search backend.
- **`just substrate-update [domain]`** — *deferred for v1.* The fetcher pipeline lived in the deleted `tools/indexer/`. Currently an echo stub. For v1, populate `source/raw/` by hand or migrate from elsewhere.
- **`just new-domain <name>`** — scaffolds a new empty-shell domain from `templates/domain/`.

## File conventions

### Compiled-page frontmatter (required)

```yaml
---
title: <human-readable title>
type: <article | paper | code-symbol | blog-post | concept | summary>
domain: <odin | papers | sdl3 | engines | graphics | ...>
tier: <1 | 2 | 3>
provenance: <from-ingest | from-query>     # required, must match folder
source_ids:
  - path: content/domains/odin/source/raw/tier1-authoritative/odin-lang-org/foo.md
    sha256: <hex>
compiled_at: <ISO-8601 timestamp>
compiled_by: <model-id>
status: <draft | stable>
---
```

### Vault-page frontmatter (after promote)

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

### Wikilink convention

- **Markdown links** `[text](relative/path.md)` — relative to the current file. Used in INDEX.md.
- **Wikilinks** `[[repo-relative/path/to/file.md]]` — *always repo-relative*, full path from repo root. Used for citations in body content. `doctor` validates these.

### `log.md` format

Append-only. Format: `## [YYYY-MM-DD] <action> | <title>`. Greppable via `grep "^## \[" log.md`. Query entries record the **verbatim user question** (the substrate's category-2 trace).

### `contradictions.md` format

Append-only. LLM proposes new entries with status `[pending]`; you review and resolve. Format documented at the top of every domain's `source/contradictions.md`.

### Page templates per type (in `templates/page-types/`)

| Template | Required body sections |
|---|---|
| `article.template.md` | TLDR (≤3 sentences) · Body · Caveats / Edge Cases · Sources |
| `paper.template.md` | TLDR · Methodology · Claims (with span anchors) · Datasets · Limitations · Sources |
| `code-symbol.template.md` | TLDR · Signature · Examples · Gotchas / Footguns · Related Symbols · Sources |
| `blog-post.template.md` | TLDR · Body · Author's Stance · Sources |
| `concept.template.md` | TLDR · Definition · Examples · Common Misconceptions · Related Concepts · Sources |
| `summary.template.md` | TLDR · Key Points · Quoted Highlights · Sources |

Compile rejects pages missing required sections, with broken citations, with empty TLDRs, etc.

## How to add a new source

1. Edit `content/manifest.yaml`. Add an entry; required fields: `id`, `tier`, `domain`, `destination`, `fetcher`, `processor`, `last_updated`. Full schema in `docs/adding-sources.md`.
2. (Once the update fetcher is implemented) `just substrate-update <domain>`. For v1, populate `source/raw/` manually.
3. Trigger an Ingest pass: ask the relevant per-domain skill to "ingest <new-source-name>".
4. Verify: `just doctor <domain>`.
5. Optionally add a query to `content/quality-checks.yaml` semantic block.

## How to add a new domain

```sh
just new-domain my-new-domain
```

This:
- Creates `content/domains/my-new-domain/` with the standard skeleton (source/raw/{tier1,tier2,tier3}, source/notes, source/contradictions.md, source/README.md, compiled/INDEX.md, compiled/log.md, vault/).
- Creates a stub skill at `.claude/skills/my-new-domain/SKILL.md`.
- Appends a commented manifest entry hint.

Then:
1. Edit `content/domains/my-new-domain/source/README.md` — fill in the tier semantics.
2. Edit the skill body — what kind of questions trigger it, what page types are in scope, any quirks.
3. Add real manifest entries with `domain: my-new-domain`.
4. Populate sources, ingest, compile.

## Common operations

```sh
# Health checks
just doctor                    # all domains
just doctor odin               # one domain
just doctor-provenance odin    # also re-hash sources, flag drift

# Tests
just substrate-test odin       # structural + semantic
python tools/substrate/test.py --structural --domain odin   # structural only (no LLM)

# Promote a compiled page to the vault
just substrate-promote content/domains/odin/compiled/from-query/concepts/some-page.md

# Add a domain
just new-domain my-domain

# Odin-specific (pre-existing recipes)
just build               # odin build
just run                 # odin run
just test                # odin test (the Odin compiler's test, not substrate-test)
just check               # odin check -vet -strict-style
just format              # odinfmt over the tree
```

## Things NOT to do

- **Don't write to `source/` or `vault/` from the LLM.** This is the prime directive.
- **Don't hand-edit `compiled/` pages.** Compile regenerates them — your edits will be lost. If a compiled page needs to be preserved, `substrate-promote` it to `vault/`.
- **Don't skip INDEX.md regen during a Compile pass.** It's load-bearing.
- **Don't auto-resolve contradictions.** Propose to `contradictions.md` as `[pending]`; let the human decide.
- **Don't use compiled-relative paths in wikilinks.** Wikilinks are always repo-relative.
- **Don't commit changes via the LLM** unless you've explicitly authorized it (per CLAUDE.md).
- **Don't add features the spec doesn't describe.** Defer until you actually need them. KISS.
- **Don't conflate categories 1 and 2.** The wiki isn't your understanding.
- **Don't adopt third-party knowledge tools** (OmegaWiki, SwarmVault, etc.) without independent vetting. Most are unproven.

## Where to look for more detail

- `README.md` — quickstart + minimal command list
- `CLAUDE.md` — concise rules for AI agents (subset of what's here)
- `LEARNING.md` — daily loop for Odin learning + nvim hotkey map
- `docs/superpowers/specs/2026-05-04-substrate-redesign-design.md` — full design spec, including rationale and deviations from Karpathy
- `docs/superpowers/plans/2026-05-04-substrate-redesign-plan.md` — implementation plan that built the current substrate
- `docs/superpowers/plans/2026-05-04-substrate-redesign-plan.review.md` — plan-vs-spec conformance review (PASS)
- `docs/superpowers/plans/2026-05-04-substrate-redesign-comprehensive-review.md` — comprehensive Opus review with PROCEED WITH FIXES + the items applied
- `docs/superpowers/specs/2026-05-04-conversation-context.md` — design conversation captured for future reviewers
- `docs/smoke-test.md` — 14-step end-to-end verification runbook
- `docs/adding-sources.md` — manifest schema + adding sources
- `.claude/skills/knowledge-substrate-core/SKILL.md` — authoritative workflow recipes (the LLM reads this)
- `content/domains/<d>/source/README.md` — per-domain tier semantics

## Future work (deliberately out-of-scope for v1)

- Update fetcher pipeline (deleted with `tools/indexer/`; deferred).
- Image handling for image-heavy sources (papers).
- Batch ingest mode.
- Wiki-as-living-document mode (Karpathy's in-place edit pattern).
- Multi-agent coordination if multiple AI tools share the wiki.
- Executable validation extension — wiki claims about code/perf could link to a runnable artifact (benchmark, test).
- Category-2 system (model of *your* understanding) — separate parallel project. Possibly seeded by `log.md` question history.
