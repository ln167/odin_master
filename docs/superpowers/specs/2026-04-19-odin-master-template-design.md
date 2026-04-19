---
title: odin_master — design spec
date: 2026-04-19
status: approved (brainstorming)
author: Luke (with Claude as facilitator)
---

# odin_master — design spec

## 1. Purpose and goals

`odin_master` is a personal master template for Odin programming work. It provides:

- A reproducible Odin development environment (compiler + LSP + formatter + editor wiring) that bootstraps from one command on any machine.
- A 100%-local, fully searchable knowledge base of Odin documentation, the Odin book, transcripts, forum discussions, and curated wiki articles.
- A scaffolding command that creates new Odin projects pre-wired with sensible defaults (build/test/bench/profile/hot-reload).
- A scratch/playground component for empirically verifying claims about Odin behavior (counter to LLM hallucinations on a young language).
- First-class profiling and benchmarking via Tracy and `core:prof/spall`, with one-line ergonomic instrumentation.
- Multi-machine workflow: push from anywhere, pull from anywhere; same single source of truth.
- Two-tier hardware support: full hybrid (BM25 + semantic) search on a GPU desktop; keyword-only fallback on low-resource laptops.
- A template self-update mechanism so improvements to the master template can flow into already-scaffolded projects on demand.

### Hard constraints

- **Speed first.** Search hot path target: <50 ms cold, <15 ms warm, on the GPU desktop. Scratch compile-edit-run loop target: <1 s.
- **No information loss.** Raw sources are always indexed verbatim; the LLM-compiled wiki is additive only and never replaces a source.
- **Tech-agnostic.** Open formats (markdown), commodity tools (SQLite, git, ripgrep), CLI as universal interface. No Obsidian-style lock-in (but Obsidian-compatible — see §2.4).
- **Beginner-friendly without cutting corners.** A new user runs `just bootstrap` and gets a working environment; the underlying components are SOTA.
- **Don't reinvent.** Anything Odin's community already provides at quality (LSP, formatter, test framework, tree-sitter grammar, doc HTML renderer, hot-reload pattern, CI action) is used as-is.

### Non-goals

- Not a package manager for Odin (gingerBill opposes one; we use `vendor:` libs + git submodules per community norm).
- Not a multi-user / shared system. Single-user assumption throughout.
- Not a Windows-native (non-WSL) primary target. Linux/WSL2 first; a small native Windows install path exists but is unsupported beyond bootstrap.
- Not a web UI. Markdown + CLI + Neovim picker are the only first-class surfaces. Obsidian works because the vault is the same markdown files.
- Not an LSP, formatter, test runner, doc HTML generator, profiler, or version manager — those exist already in the Odin ecosystem.
- Not a code-generation preprocessor. No magic; everything is plain Odin you can read and step through.
- Not auto-updating already-scaffolded user projects without consent — the self-update mechanism is opt-in per project.

---

## 2. Architecture overview

### 2.1 Four-layer model

```
                ┌──────────────────────────────────────────────┐
                │                  CONSUMERS                   │
                │ Neovim (code+search) · Obsidian (vault) ·    │
                │ Web UI (optional) · LLM agent harnesses      │
                └─────────────────┬────────────────────────────┘
                                  │ calls
                                  ▼
                ┌──────────────────────────────────────────────┐
                │            QUERY LAYER (HOT PATH)            │
                │   odin-search  (Rust, single static binary)  │
                │   - reads SQLite + USearch index             │
                │   - calls Ollama for query embedding (GPU)   │
                │   - returns JSON: chunks + metadata + scores │
                └─────────────────┬────────────────────────────┘
                                  │ reads
                                  ▼
                ┌──────────────────────────────────────────────┐
                │           STORAGE LAYER (ON DISK)            │
                │   content/sources/  (markdown, committed)    │
                │   content/wiki/     (LLM-compiled, committed)│
                │   content/outputs/  (filed query results)    │
                │   content/index/    (gitignored, GPU only)   │
                └─────────────────┬────────────────────────────┘
                                  │ written by
                                  ▼
                ┌──────────────────────────────────────────────┐
                │         INDEXER LAYER (COLD PATH)            │
                │   odin-master  (Python CLI)                  │
                │   - update / reindex / summarize / publish   │
                │   - rips websites, parses PDFs, chunks docs  │
                │   - calls Ollama (Qwen3-4B) on GPU machine   │
                └──────────────────────────────────────────────┘
```

### 2.2 Roles at a glance

- **Indexer** (Python, runs occasionally) — owns scraping, parsing, chunking, embedding generation, wiki compilation. Heavy dependency stack (pandoc, pymupdf4llm, requests, ollama client). Invoked via `odin-master <subcommand>`.
- **Storage** (files on disk) — single source of truth. Markdown sources + LLM-compiled wiki + filed outputs are committed to git. Index files are gitignored and exist only on GPU machines.
- **Query** (Rust, runs on every search) — single static binary, sub-50 ms cold start. Knows nothing about scraping or embedding generation; just reads the prebuilt index. Invoked via `odin-search <query>`.
- **Consumers** — anything that wants to search. They all call `odin-search` and render its JSON. No consumer talks directly to the index files. No consumer is "blessed" — Neovim, Obsidian, and ad-hoc shell use are equal citizens.

### 2.3 Key separations enforced by the design

- **Index format and search algorithm** are isolated to one Rust crate (`tools/search/`). Swapping USearch for sqlite-vec or LanceDB later changes only that crate; consumers and indexer don't notice.
- **Embedding model** is isolated to the indexer's Python config. Swapping Qwen3-4B for the next SOTA model later means: change one line, run reindex. Consumers don't notice.
- **Ingestion source types** are isolated as one ingestor module per source kind (HTML mirror, PDF, transcript, stdlib doc dump, forum scrape) under `tools/indexer/odin_master/ingestors/`.
- **No consumer is privileged.** All consumer integrations live under `tools/<consumer>/` (e.g., `tools/nvim/`, `tools/obsidian/`).

### 2.4 Two-tier processing

| Tier | Where | Purpose | Speed budget |
|---|---|---|---|
| **Hot path** | Rust `odin-search` CLI | Per-query search on every keystroke / picker invoke | <50 ms cold |
| **Cold path** | Python `odin-master` CLI | Ingestion, embedding, summarization, indexing | minutes (one-time / on-update) |

### 2.5 Two-tier hardware

| Class | Capability | Search mode |
|---|---|---|
| **GPU desktop** (RTX 4080 / 16 GB VRAM, Ollama running) | full | hybrid (BM25 + semantic via Qwen3-Embedding-4B over Ollama) |
| **Low-resource laptop** (8 GB RAM, no GPU, no Ollama) | reduced | keyword-only (BM25 over SQLite FTS5) |

Non-GPU machines do not attempt semantic search. The 8 GB RAM constraint makes CPU-mode Qwen3-4B prohibitive (would swap). Keyword search on a known corpus is fast and good enough; semantic-flavored queries when away from the desktop go through whatever LLM harness the user has open. The harness can call `odin-search --json` as a tool if it wants.

The per-machine choice is recorded in `~/.config/odin_master/settings.toml`:

```toml
enable_vector_search = true        # set false on laptops without Ollama
ollama_url = "http://127.0.0.1:11434"
embedding_model = "qwen3-embedding:4b"
```

`odin-search` reads this once at startup; if vector search is disabled or the Ollama URL is unreachable, it falls back to keyword-only and prints a one-line stderr warning.

### 2.6 Multi-machine sync

The git repo itself is the sync mechanism. Each machine has `~/.local/share/odin_master/` (Linux/WSL/macOS) or `%LOCALAPPDATA%\odin_master\` (native Windows fallback) as a literal `git clone`. `odin-master update` runs `git pull` then `odin-master reindex` (incremental). `content/sources/`, `content/wiki/`, and `content/outputs/` flow over git; `content/index/` is local and rebuilt.

### 2.7 Obsidian compatibility

`content/` is structured so it can be opened directly as an Obsidian vault. `tools/obsidian/` contains a README with recommended Obsidian settings (no plugins required) and a `.obsidian/` config snippet to copy in. There is no Obsidian-specific code; Obsidian just reads the same markdown files everything else does. This is why we chose markdown + frontmatter as the universal format.

---

## 3. Repository layout

The single repo `odin_master` contains everything. After install it lives at `~/.local/share/odin_master/` and is itself a git clone — every machine syncs through normal `git pull` / `git push`.

```
odin_master/
│
├── README.md                         quick install + daily use
├── CLAUDE.md                         agent-facing guidance for LLM agents (Claude Code etc.)
├── justfile                          cross-platform task runner (entrypoint)
├── .gitignore                        ignores content/index/, scratch/, build artifacts, models
├── .editorconfig                     2-space indent, LF line endings
├── .odin-version                     one line: "dev-2026-04" (read by setup-odin@v2 + humans)
│
├── .odin-master/
│   └── versions.toml                 locked version pins (see §7.1)
│
├── content/                          ━━━━━━ THE KNOWLEDGE BASE ━━━━━━
│   ├── manifest.yaml                 source registry: tier, fetcher, processor, last-updated
│   │
│   ├── sources/                      ✅ committed — raw inputs, never modified by tools
│   │   ├── tier1-authoritative/
│   │   │   ├── odin-lang-org/          wget --mirror output (HTML + assets)
│   │   │   └── stdlib-docs/            output of `odin doc core: vendor:`
│   │   ├── tier2-curated/
│   │   │   ├── odin-book/              chapter .md files (from PDF)
│   │   │   ├── karl-zylinski-blog/     scraped blog posts
│   │   │   └── notes-personal/         hand-written notes
│   │   └── tier3-community/
│   │       ├── forum-archive/          scraped Discourse threads (JSON + rendered MD)
│   │       └── transcripts/            one folder per discussion: verbatim.md
│   │
│   ├── wiki/                         ✅ committed — LLM-compiled, concept-organized
│   │   ├── INDEX.md                    auto-maintained TOC
│   │   ├── concepts/                   articles per topic (e.g., context-allocators.md)
│   │   └── summaries/                  one .md per source (with backlinks)
│   │
│   ├── outputs/                      ✅ committed — query results filed for posterity
│   │   └── YYYY-MM-DD-<topic>/         date-stamped, one folder per saved query
│   │
│   └── index/                        ❌ gitignored — only exists on GPU machines
│       ├── chunks.sqlite               chunk text + metadata + FTS5 BM25 index
│       ├── vectors.usearch             HNSW vector index (mmap'd)
│       └── manifest-hash.txt           hash of manifest.yaml at last index time
│
├── playground/                       ━━━━━━ EMPIRICAL VERIFICATION ━━━━━━
│   ├── scratch/                      ✅ committed — micro-experiments, one folder per claim
│   │   ├── _template/                  seed copied by `just scratch new`
│   │   │   ├── main.odin               minimal verified-claim skeleton
│   │   │   └── claim.md                "what is being verified"
│   │   └── YYYY-MM-DD-<slug>/
│   │       ├── main.odin
│   │       ├── claim.md                claim, source citation, expected outcome
│   │       ├── output.txt              captured stdout (last run)
│   │       └── result.md               observed outcome → confirmed / refuted / surprising
│   │
│   ├── bench/                        ✅ committed — formal benchmarks
│   │   └── <name>/
│   │       ├── bench.odin              @(test) procs using core:time benchmark options
│   │       └── results/
│   │           └── YYYY-MM-DD.json
│   │
│   └── profiles/                     ❌ gitignored — large traces (.spall, Tracy captures)
│
├── tools/                            ━━━━━━ THE TOOLING ━━━━━━
│   ├── indexer/                      Python — runs on GPU machine
│   │   ├── pyproject.toml              uv-managed; pinned versions
│   │   ├── odin_master/
│   │   │   ├── cli.py                  `odin-master` entrypoint (typer/click)
│   │   │   ├── update.py               git pull + reindex if sources changed
│   │   │   ├── reindex.py              chunk → embed via Ollama → write index/
│   │   │   ├── summarize.py            LLM-summarize a source (writes to wiki/)
│   │   │   ├── lint.py                 wiki health checks (broken backlinks, dead refs)
│   │   │   ├── doctor.py               dependency/env checker (called by `just doctor`)
│   │   │   ├── new.py                  scaffolds a project from templates/
│   │   │   ├── update_template.py      template self-update (three-way merge)
│   │   │   ├── publish.py              file query results to content/outputs/
│   │   │   ├── vendor.py               `vendor add <git-url>` — submodule + ols.json wiring
│   │   │   ├── docs_build.py           local pkg.odin-lang.org renderer for stdlib HTML
│   │   │   └── ingestors/
│   │   │       ├── html_mirror.py
│   │   │       ├── pdf.py              pymupdf4llm wrapper
│   │   │       ├── transcript.py       yt-dlp + whisper (or external transcript)
│   │   │       ├── stdlib.py           runs `odin doc` on core:/vendor:
│   │   │       └── forum.py            Discourse JSON scraper
│   │   └── tests/
│   │
│   ├── search/                       Rust — the hot path
│   │   ├── Cargo.toml
│   │   ├── src/
│   │   │   ├── main.rs                 clap-parsed `odin-search` CLI
│   │   │   ├── index.rs                SQLite + USearch open/read
│   │   │   ├── embed.rs                HTTP client → Ollama /api/embed
│   │   │   ├── fusion.rs               RRF score combination
│   │   │   ├── settings.rs             reads ~/.config/odin_master/settings.toml
│   │   │   └── output.rs               JSON or human-readable formatting
│   │   └── tests/
│   │
│   ├── nvim/                         Lua plugin (Neovim integration)
│   │   ├── lua/odin_master/
│   │   │   ├── init.lua                setup()
│   │   │   ├── pickers.lua             Telescope/Snacks pickers calling odin-search
│   │   │   ├── lsp.lua                 ols configuration helpers
│   │   │   └── health.lua              :checkhealth integration for :OdinDoctor
│   │   └── README.md
│   │
│   ├── obsidian/                     Optional vault setup (no code)
│   │   ├── README.md                   instructions, no code (vault = content/)
│   │   └── obsidian.example.json       optional .obsidian/ snippet
│   │
│   ├── odin_lib/                     Vendored Odin library used by template projects
│   │   ├── instrument.odin             SCOPE / SCOPE_NAMED / BENCH wrappers (see §10.3)
│   │   ├── bench.odin                  ergonomic wrappers around core:time benchmarks
│   │   └── scratch.odin                output capture helpers for scratchpad
│   │
│   ├── debug/                        Debugger helpers
│   │   └── odin_lldb.py                LLDB pretty-printer for slice/map/string/dynamic-array
│   │
│   ├── git-hooks/                    Pre-commit hook (runs odinfmt + odin check -vet)
│   │   └── pre-commit
│   │
│   └── install/                      Setup scripts
│       ├── install.sh                  Linux/WSL/macOS bootstrap
│       ├── install.ps1                 Windows-native fallback (small audience)
│       └── settings.example.toml       copied to ~/.config/odin_master/settings.toml
│
├── templates/                        ━━━━━━ PROJECT SCAFFOLDS ━━━━━━
│   ├── game/                           Karl Zylinski hot-reload skeleton
│   ├── lib/                            library project
│   └── cli/                            command-line tool
│
├── docs/                             ━━━━━━ HUMAN DOCS ━━━━━━
│   ├── getting-started.md              install on a new machine in 10 min
│   ├── daily-use.md                    cheatsheet for code/search/build/run
│   ├── adding-sources.md               how to register a new source in manifest.yaml
│   ├── multi-machine.md                how sync works across machines
│   ├── migration-2026.md               2026 compiler migration notes (os→os/old, etc.)
│   ├── troubleshooting.md              common errors + fixes
│   └── superpowers/
│       ├── specs/                      this design doc + future specs
│       └── research/                   archived research subagent outputs
│
└── .github/                          CI
    └── workflows/
        ├── ci.yml                      cargo test + pytest + odin test on Linux+macOS
        └── docs.yml                    build local docs on push (optional)
```

### Notes on what's where

- `content/index/` is gitignored — the only "regenerated locally" artifact. On GPU machines it lives here; non-GPU machines never have one.
- `content/wiki/` is committed — Karpathy-style LLM-compiled output, version-controlled because it's curated content with long-term value.
- `content/outputs/` is committed — when a search session produces a useful synthesis, the user files it back here so it becomes part of the corpus on next reindex.
- `tools/` is the entire toolchain — indexer, search, plugin, installer, vendored library, debug helpers all live here. One repo, no drift.
- `templates/` is the scaffold source — `odin-master new <name>` copies one of these.
- `docs/` is for humans; LLM agents get `CLAUDE.md` at the root.
- `~/.config/odin_master/settings.toml` is per-machine (NOT in the repo) — holds `enable_vector_search`, `ollama_url`, `embedding_model`.

---

## 4. Knowledge base structure

### 4.1 Source vs. wiki

Two parallel hierarchies, both committed to git:

- `content/sources/` — raw, verbatim, never edited by hand or LLM. Mirrors of authoritative content.
- `content/wiki/` — LLM-compiled markdown, **organized by concept**, with explicit backlinks to the sources it draws from.

The wiki follows the Karpathy "LLM Knowledge Base" pattern: raw inputs are crystallized into curated articles. The crucial inversion: **the wiki augments the sources, it does not replace them.** Every search hits both, every concept page links back to verbatim sources for verification.

### 4.2 Tier system (provenance / trust)

Mirrored in the directory layout (`tier1-authoritative/`, `tier2-curated/`, `tier3-community/`) and stored as metadata on each chunk; queryable via `--tier=1,2`.

| Tier | Meaning | Examples |
|---|---|---|
| **Tier 1** | Authoritative | odin-lang.org/docs, stdlib doc dump, gingerBill statements |
| **Tier 2** | Curated | the Odin book, Karl Zylinski's blog, the wiki itself |
| **Tier 3** | Community | forum threads, Discord excerpts, raw transcripts |

### 4.3 View axis

Each chunk has a `view` of either `verbatim` (exactly as published) or `summary` (LLM-compiled). Queryable via `--view=verbatim`. Default: both.

### 4.4 Transcripts

Transcripts are **sources, not a separate hierarchy**. Raw transcripts live in `content/sources/tier3-community/transcripts/<slug>/verbatim.md` and are always indexed verbatim. A search for "memory allocator" can return both the raw transcript chunk where it was discussed and the curated wiki page that cites it.

### 4.5 The `summarize` workflow (precise)

`odin-master summarize <source-path>` performs:

1. Read the verbatim source.
2. LLM-extract key takeaways (one per concept).
3. For each takeaway: find or create the relevant `content/wiki/concepts/<topic>.md`. Append the takeaway with a backlink.
4. Write a per-source overview to `content/wiki/summaries/<mirror-of-source-tier-path>.md` linking back to verbatim and to each concept page touched.

Backlink format (a hard rule): every wiki paragraph that derives from a source carries an HTML comment immediately above or after it:

```markdown
<!-- source: content/sources/tier3-community/transcripts/2026-04-context-allocators/verbatim.md#L120 -->
```

Optionally followed by a visible inline link:

```markdown
[(source)](../../sources/tier3-community/transcripts/2026-04-context-allocators/verbatim.md)
```

`summaries/` mirrors the source-tier directory structure (e.g., `wiki/summaries/tier3-community/transcripts/<id>.md`).

### 4.6 Manifest (`content/manifest.yaml`)

Single source registry. Each entry describes one corpus source:

```yaml
- id: odin-lang-org
  tier: 1
  fetcher: html_mirror
  url: https://odin-lang.org
  destination: content/sources/tier1-authoritative/odin-lang-org/
  processor: html_to_md
  last_updated: 2026-04-19
- id: odin-book
  tier: 2
  fetcher: pdf
  source_path: ./inputs/odin-book.pdf      # user-supplied
  destination: content/sources/tier2-curated/odin-book/
  processor: pymupdf4llm
  last_updated: 2026-04-15
```

`odin-master update` walks the manifest, runs each fetcher's `should_refresh?` check (HTTP HEAD, file mtime, or manual flag), invokes the appropriate ingestor, and triggers reindex if anything changed. `manifest-hash.txt` in `content/index/` records the manifest hash at last successful index so we can detect schema drift.

### 4.7 Default corpus sources

The seed `manifest.yaml` ships with these sources registered. All ingestors live in `tools/indexer/odin_master/ingestors/`.

| Source | Tier | Fetcher | Notes |
|---|---|---|---|
| `odin-lang.org` (full Hugo site) | 1 | `html_mirror` | `wget --mirror`; the language overview at `content/docs/overview.md` is the single huge canonical reference |
| Generated `.odin-doc` for `core:` + `vendor:` | 1 | `stdlib` | Runs `odin doc` on each subpackage |
| `odin-lang/Odin/wiki/*.md` (compiler wiki) | 1 | `git_clone` | Cloned separately |
| Quarterly newsletters `odin-lang.org/news/newsletter-YYYY-qN/` | 1 | `html_mirror` | Subset of main mirror |
| Karl Zylinski's blog (`zylinski.se/posts/`) | 2 | `html_mirror` | |
| Karl Zylinski's newsletter (`news.zylinski.se/`) | 2 | `html_mirror` | |
| Karl's snake-tutorial-code repo | 2 | `git_clone` | |
| Karl's book SAMPLE (`odinbook.com/sample.html`) | 2 | `html_mirror` | Full paid book is **NOT** redistributable; sample only |
| gingerBill articles (`gingerbill.org/article/`, RSS) | 2 | `html_mirror` | |
| `learnodin.org/odin/` (free curriculum) | 2 | `html_mirror` | |
| `brainwo.github.io/teach-yourself-odin/` | 2 | `html_mirror` | |
| Discourse forum (`forum.odin-lang.org`) | 3 | `forum` | Discourse JSON API |
| Personal transcripts | 3 | `transcript` | yt-dlp + whisper, or hand-placed |
| Personal notes | 2 | (manual) | Just dropped into `content/sources/tier2-curated/notes-personal/` |

**Explicitly NOT indexed:** Discord (not crawlable, ToS issues). For Discord knowledge, paste into `content/sources/tier3-community/transcripts/<topic>/verbatim.md` manually.

### 4.8 No information loss

Hard rule: `content/sources/` is **always** in the index. The wiki is additive. If an LLM compresses a transcript and loses nuance, the verbatim chunk is still one search away.

### 4.9 Wiki philosophy

The wiki is closer to an **index** (in the book sense — the alphabetized pointer-list at the back) than to **content**. It exists to make the sources reachable and cross-cuttingly addressable, not to replace them. Two hard rules:

- **Wiki articles must cite their sources with backlinks.** No exceptions.
- **The wiki never contradicts a source.** If the LLM compilation produced a contradiction, the source wins; the wiki entry is corrected or removed.

---

## 5. Search architecture

### 5.1 Components (hot path)

Single static Rust binary `odin-search`:

1. `mmap` the USearch HNSW file (if present) and `open` SQLite (`chunks.sqlite`). Both are header reads, ~2–5 ms.
2. **Embed query** via Ollama HTTP call to local `qwen3-embedding:4b` (~10–30 ms on the desktop). Skip if `enable_vector_search=false` in settings, or if Ollama unreachable.
3. Run two queries in parallel (rayon): USearch HNSW top-K (K≈100) over dense vectors; SQLite FTS5 `MATCH` with BM25 over the same metadata-filtered scope.
4. **Reciprocal Rank Fusion** (`1/(60+rank)`) merges the two ranked lists.
5. Look up final top-N rows in SQLite for chunk text + metadata; `serde_json` to stdout.

On a non-GPU / settings-disabled machine: steps 2–3 collapse to FTS5-only.

### 5.2 Components (cold path)

Python `odin-master reindex` runs the cold path:

- Walk `content/sources/`, `content/wiki/`, and `content/outputs/`. Chunk markdown by heading + length; hash to detect changes.
- For each new/changed chunk: compute Qwen3-Embedding-4B vector via `sentence-transformers` (GPU machine only), store in USearch.
- Insert text + metadata into SQLite + populate FTS5 virtual table.
- Idempotent and incremental — only rehashes/re-embeds changed chunks. Records corpus hash → `manifest-hash.txt`.

### 5.3 Embedding model — Qwen3-Embedding-4B

- 2560-dim, MRL truncated to 1024 for storage (4 KB/vector × 200K chunks ≈ 800 MB).
- Documents indexed without an instruction prefix.
- Queries get the prefix: `Instruct: Given a web search query, retrieve relevant passages that answer the query\nQuery:{query}`.
- Padding side `left`, last-token pooling, L2 normalize.
- Apache 2.0. Already available as `ollama pull qwen3-embedding:4b` (Q4_K_M ~2.5 GB).

### 5.4 Latency budget (200K chunks, GPU desktop, cold CLI invocation)

| Stage | Estimate |
|---|---|
| Process exec + linker | 3–8 ms |
| Open SQLite + mmap USearch | 2–5 ms |
| Ollama embed query | 10–30 ms |
| USearch HNSW top-100 | 1–3 ms |
| FTS5 BM25 top-100 | 2–8 ms |
| RRF fusion + row fetch | 2–4 ms |
| serde_json to stdout | <1 ms |
| **Total** | **~25–50 ms cold** |

### 5.5 CLI surface

```
odin-search "<query>"                       hybrid search, human-readable output
odin-search "<query>" --json                JSON output for tooling
odin-search "<query>" --top 20              change result count (default 10)
odin-search "<query>" --tier 1,2            restrict to tiers
odin-search "<query>" --source odin-book    restrict to a manifest source id
odin-search "<query>" --view verbatim       only raw sources
odin-search "<query>" --view summary        only wiki-compiled chunks
odin-search "<query>" --view all            both (default)
odin-search "<query>" --keyword-only        force BM25-only (skip embedding step)
odin-search "<query>" --semantic-only       force vector-only (skip BM25)
odin-search "<query>" --fast                alias for --keyword-only (no embed call)
odin-search --doctor                        diagnose: settings, index state, Ollama reachability
```

**Auto-detect on startup:**

- If `content/index/vectors.usearch` exists AND Ollama is reachable AND `enable_vector_search=true` → default to hybrid.
- Otherwise → default to keyword-only and print a one-line stderr note explaining which precondition failed.
- If Ollama is reachable on a known port but not running, `odin-search` may attempt to start it (Ollama supports lazy-start) before falling back.

JSON output schema (one chunk per element):

```json
{
  "results": [
    {
      "id": "...",
      "source_id": "odin-lang-org",
      "tier": 1,
      "view": "verbatim",
      "path": "content/sources/tier1-authoritative/odin-lang-org/docs/overview.md",
      "heading_path": ["Overview", "Implicit Context System"],
      "score_bm25": 12.3,
      "score_vector": 0.81,
      "score_fused": 0.034,
      "snippet": "..."
    }
  ]
}
```

### 5.6 Why these specific choices

- **Rust hot path / Python cold path** — Python startup is fatal on the hot path; Rust gives single-binary distribution and predictable cold-start. Python is fine for the cold path because it's run rarely.
- **USearch + SQLite FTS5 (split) over LanceDB or sqlite-vec (unified)** — leaner binary, faster cold open, each layer independently swappable. sqlite-vec ANN is brand new (alpha as of late 2025); USearch HNSW is battle-tested.
- **Ollama for query embedding (over potion-32M static, over fastembed/ONNX in-process)** — Ollama is already running on GPU machines for other LLM work, so it's "free." It gives SOTA quality (Qwen3-4B beats potion's static embedding by a wide margin on technical retrieval) without forcing us to build our own daemon. ONNX in-process would pay 50–150 ms cold-start on every CLI invocation.
- **Single index dir per repo (`content/index/`)** — co-located with the content; no global state.

---

## 6. Use vs. Wrap vs. Build inventory

The bias: use anything mature, wrap if friction is high, build only when there's a real gap. Three buckets.

### 6.1 Bucket A — Use as-is (install + document; no wrapping)

| Concern | Tool | Notes / pin |
|---|---|---|
| Compiler | Odin `dev-2026-04` | Build from source for reliability; pin via `.odin-version` |
| LSP | OLS (DanielGavin/ols, latest tag matching `dev-2026-04`) | Build from source; ships `odinfmt` |
| Formatter | `odinfmt` (in OLS repo, `tools/odinfmt`) | Ship `odinfmt.json`; wire via `odinfmt -stdin` (NOT OLS's `enable_format` — known bugs) |
| Test framework | `odin test` built-in | `@(test)` procs; use `ODIN_TEST_JSON_REPORT` for CI |
| Standard library | `base:` + `core:` + `vendor:` | Ships with compiler — already there |
| Tree-sitter grammar | `tree-sitter-grammars/tree-sitter-odin` v1.3.0 | Canonical |
| Neovim filetype | `Tetralux/odin.vim` | Filetype-only; let TS do highlighting |
| Neovim DAP | `NANDquark/nvim-dap-odin` + `codelldb` | Standard |
| Neovim TS | Neovim 0.12+ built-in TS | nvim-treesitter archived 2026-04-03; built-in is the path forward |
| Profiling (light) | `core:prof/spall` (built-in) + spall-web viewer | Document the standalone-tool deprecation status |
| Profiling (primary) | `oskarnp/odin-tracy` + Tracy server | Path forward; community standard |
| Allocation tracking | `mem.tracking_allocator` boilerplate | Pattern from Karl Zylinski; gate on `when ODIN_DEBUG` |
| CI compiler install | `laytan/setup-odin@v2` | GitHub Action; pin `release: dev-2026-04` |
| Doc renderer (HTML) | `odin-lang/pkg.odin-lang.org` | Build locally, point at our `.odin-doc` files |
| Hot reload (game) | Karl Zylinski's `Game_API` pattern | If user needs hot reload, ship a variant of his template — don't redesign the interface |
| Library discovery | `jakubtomsu/awesome-odin` | Link from `CLAUDE.md` |
| C bindgen | `karl-zylinski/odin-c-bindgen` | Link, don't wrap |
| Windows MSVC install | `Data-Oriented-House/PortableBuildTools` | Document, don't wrap |
| Useful libs to know | `laytan/back` (stack traces), `laytan/odin-http`, `nicbarker/clay` (UI), `karl-zylinski/karl2d`, `oskarnp/odin-tracy` | Optional add-ins via `odin-master vendor add` |

### 6.2 Bucket B — Wrap thinly (existing tool + small convenience layer)

| Wrapper | What it wraps | Why |
|---|---|---|
| `just build / run / test / check / bench / format / clean` | Plain `odin` subcommands with the vetted strict flag set | Saves typing, enforces consistency, cross-platform |
| `just doctor` (Python) | Verifies: Odin matches `.odin-version`; `ols` and `odinfmt` on PATH; tree-sitter-odin parser installed; codelldb present; `ollama serve` reachable on GPU machines; Qwen3 model pulled; Python deps installed | No community tool exists for this |
| `odin-master setup` | Auto-detects machine class (GPU + Ollama? → hybrid; else → keyword-only) and writes `~/.config/odin_master/settings.toml` accordingly. Idempotent. Called from `just bootstrap` and `just bootstrap-lite`. | Removes the manual `sed` step in §12.2 |
| `odin-master test-summary` | Reads `ODIN_TEST_JSON_REPORT`, produces a markdown summary | Genuine community gap |
| `odin-master vendor add <git-url>` | `git submodule add` + writes `libs/MANIFEST.md` line + updates `ols.json` collections | Bridges the no-package-manager gap |
| `odin-master docs build` | Clones `odin-lang/pkg.odin-lang.org`, runs `odin doc` against `core:` + `vendor:`, builds local HTML | Mirroring instead of fetching pkg.odin-lang.org makes us robust to outages |
| `tools/git-hooks/pre-commit` | Runs `odinfmt -stdin -overwrite` + `odin check . -vet -strict-style` | No community-published hook exists |
| `just scratch new\|run\|watch` | Wraps `odin run` with template scaffolding + stdout capture | Playground ergonomics (see §10) |
| `just bench <name>` | Wraps `odin test` with bench-flag profile + JSON capture | Bench ergonomics |
| `just profile run -- <binary>` | Wraps a binary with Tracy/Spall capture; opens viewer when done | Profile ergonomics |

### 6.3 Bucket C — Build new (the template's actual creative content)

| Component | Purpose | Why no existing tool |
|---|---|---|
| The template repo + opinionated layout | `src/`, `assets/`, `build/`, `tools/`, `libs/`, `content/` + curated config | No `odin init` exists; no canonical layout |
| `odin-master` Python CLI | One entrypoint for: `update`, `reindex`, `summarize`, `lint`, `vendor`, `docs build`, `publish`, `new`, `update-template`, `doctor`, `scratch verify` | `create-odin-app` doesn't exist |
| `odin-search` Rust binary | Sub-50 ms hybrid search CLI consumed by Neovim/Obsidian/agents | No Odin-aware local doc search exists |
| Doc-corpus ingestion pipeline | Pulls + chunks + embeds: `odin-lang.org` Hugo MD, compiler wiki, generated `.odin-doc`, gingerBill articles, Karl's blog, the book sample, the language overview, forum (Discourse JSON), our own wiki | Greenfield; the unique value of the template |
| Pre-wired Neovim config (lazy.nvim spec) | LSP+OLS, built-in TS (0.12+), conform.nvim+odinfmt, nvim-dap+codelldb, our search picker, `:OdinDoctor` checkhealth | No Neovim distribution covers Odin well |
| `.odin-version` convention + version-check task | Plain text file at repo root with `dev-YYYY-MM` tag; `just check-odin-version` warns on drift | No language-level pinning mechanism |
| Template self-update mechanism | `odin-master update-template` — records template SHA, three-way merges files the user hasn't touched, lists conflicts | Genuine gap — no Odin equivalent of `cargo generate update` |
| 2026 compiler migration notes (`docs/migration-2026.md`) | Single doc covering: `core:os` → `core:os/old`, `using` stmt opt-in, chacha8rand change, BSD→zlib license, new `nbio` / `handle_map` / `crypto/ecdh`, `vendor:curl` | Community has no consolidated migration doc |
| LLDB pretty-printer bundle (`tools/debug/odin_lldb.py`) | Pretty-prints slice/map/string/dynamic-array | None shipped by compiler; community ones scattered |
| `CLAUDE.md` (root) + agent skills | Tells LLM agents how to navigate the project, search docs, generate summaries, file outputs back | Agentic workflow needs first-class support |
| `tools/odin_lib/instrument.odin` + `bench.odin` + `scratch.odin` | One-line `SCOPE`/`SCOPE_NAMED`/`BENCH` ergonomics; output capture helpers | No community wrapper; ergonomics matter |
| Empirical-evidence backlink mechanism | `playground/scratch/<exp>/result.md` ↔ `content/wiki/concepts/<topic>.md` cross-links | Novel for an Odin learning environment |

### 6.4 What we explicitly REJECT building

- A package manager (gingerBill's stance is canonical; we vendor + use `-collection:`).
- A formatter (use `odinfmt`).
- A test runner (use `odin test`).
- A doc HTML generator (use `pkg.odin-lang.org` renderer).
- A version manager like rustup (genuinely needed but out of scope — would be its own project).
- A profiling tool (Spall + Tracy cover it).
- An LSP (OLS is fine).
- A code-generation preprocessor (would make instrumentation magic — would surprise the LSP).

---

## 7. Pinned versions and compile-flag profiles

### 7.1 Locked-in pins (`.odin-master/versions.toml`)

```toml
odin              = "dev-2026-04"
ols               = "<latest tag matching dev-2026-04>"
tree_sitter_odin  = "1.3.0"
neovim_minimum    = "0.12.0"
codelldb          = "<latest>"
ollama_minimum    = "0.1.x"
qwen3_embedding   = "qwen3-embedding:4b"
```

`.odin-version` at the repo root contains `dev-2026-04` (one line — readable by `setup-odin@v2` and by humans).

`just check-odin-version` warns if the installed Odin doesn't match the pin. `just update-odin` bumps the pin and runs `just doctor` to verify.

### 7.2 Default compile-flag profiles

```
debug:        -debug -vet -strict-style -vet-tabs -disallow-do -warnings-as-errors
release:      -o:speed -no-bounds-check -strict-style -vet -define:ODIN_DEBUG=false
release-lto:  <release> + -lto:thin
asan:         <debug> -sanitize:address
```

Selected via `just build <profile>`, defaults to `debug`. Same profiles apply to `just run`, `just test`, `just bench`.

---

## 8. Editor + toolchain wiring

### 8.1 Compiler / LSP / formatter

- **Compiler**: Odin nightly, pinned in `.odin-version`. `just bootstrap` installs via the radium-org installer; `just update-odin` bumps the pin.
- **LSP**: OLS, built from source against the same Odin pin. `ols.json` at workspace root.
- **Formatter**: `odinfmt` (lives in OLS repo). Wired to format-on-save via Neovim `LspFormat` autocmd (NOT OLS's broken `enable_format`).
- **Tree-sitter**: Neovim 0.12+ built-in TS with `tree-sitter-grammars/tree-sitter-odin`.

### 8.2 `ols.json` schema (locked for the template)

```json
{
  "enable_format": false,
  "enable_inlay_hints": true,
  "enable_semantic_tokens": true,
  "checker_path": ["src"],
  "checker_args": "-vet -strict-style",
  "profiles": [
    { "name": "default", "checker_path": ["src"], "defines": {} }
  ],
  "collections": [
    { "name": "odin_lib", "path": "../odin_master/tools/odin_lib" }
  ]
}
```

`enable_format` is intentionally `false` — the template wires formatting through `odinfmt -stdin` directly to dodge OLS's known formatting bugs. If OLS is built into a non-default location, set `OLS_BUILTIN_FOLDER` to point at the `builtin/` folder shipped with the Odin compiler.

### 8.3 `odinfmt.json` defaults

```json
{
  "tabs": true,
  "tabs_width": 4,
  "character_width": 80,
  "sort_imports": true,
  "brace_style": "_1TBS"
}
```

### 8.4 Neovim setup

The template ships `tools/nvim/` with a lazy.nvim plugin spec that:

- Configures `nvim-lspconfig` for `ols`.
- Wires Telescope (or fzf-lua / Snacks) keymap `<leader>od` → runs `odin-search --json` and previews chunks.
- Wires `nvim-dap` + `nvim-dap-odin` + `codelldb` for breakpoint debugging.
- Registers `:OdinDoctor` → calls `just doctor` and pipes results through `:checkhealth`.

### 8.5 `just` task runner

Cross-platform (Linux primary, macOS, WSL2). Canonical targets:

| Target | What it does |
|---|---|
| `just bootstrap` | Install Odin + OLS + odinfmt + ripgrep + fd + ollama (where applicable) |
| `just bootstrap-lite` | Bootstrap without ollama (laptop) |
| `just doctor` | Health check (calls `odin-master doctor`) |
| `just check-odin-version` | Warn if installed Odin doesn't match `.odin-version` |
| `just update-odin` | Bump pin + re-bootstrap |
| `just build [profile]` / `just run` / `just test` / `just check` / `just clean` | Wrappers for `odin` subcommands with profile flags |
| `just format` | `odinfmt -stdin -overwrite` over the workspace |
| `just bench <name>` | Run `playground/bench/<name>/bench.odin` with bench profile |
| `just profile run -- <binary>` | Wrap a binary with Tracy+Spall capture |
| `just hot` | Karl-Zylinski-style hot-reload run loop (only in `templates/game/`) |
| `just scratch new <name>` | Scaffold a new scratch experiment from `_template/` |
| `just scratch run` | Compile + run current scratch; capture stdout; prompt to file evidence |
| `just scratch watch` | Auto-rerun on file change (sub-second loop) |
| `just summarize <source>` | LLM-compile a source into wiki concept pages with backlinks |
| `just add-transcript <url>` | yt-dlp + whisper → `content/sources/.../transcripts/<slug>/verbatim.md` |
| `just lib add <git-url>` | Alias for `odin-master vendor add` |
| `just docs build` | Local pkg.odin-lang.org renderer for stdlib HTML |
| `just publish <topic>` | File a query session into `content/outputs/YYYY-MM-DD-<topic>/` |

---

## 9. Project scaffolding and template self-update

### 9.1 Scaffolding new projects

`odin-master new <name> [--template game|lib|cli]` copies the chosen template directory and substitutes `<name>` placeholders. Output is a self-contained project with its own `justfile`, `ols.json`, `.gitignore`, `.odin-version`, and a starter `main.odin`. The scaffolded project depends on `tools/odin_lib/` via `-collection:odin_lib=<path>`.

### 9.2 Hot-reload template (`templates/game/`)

Lifts Karl Zylinski's `Game_API` pattern verbatim. Highlights:

- `Game_API` struct fields (in the host process): `lib: dynlib.Library`, `init_window`, `init`, `update`, `shutdown`, `shutdown_window: proc()`, `should_run: proc() -> bool`, `memory: proc() -> rawptr`, `memory_size: proc() -> int`, `hot_reloaded: proc(mem: rawptr)`, `force_reload`, `force_restart: proc() -> bool`, `modification_time: time.Time`, `api_version: int`.
- Game DLL `@(export)` proc surface mirrors the struct: `game_init_window`, `game_init`, `game_update`, `game_should_run`, `game_shutdown`, `game_shutdown_window`, `game_memory`, `game_memory_size`, `game_hot_reloaded`, `game_force_reload`, `game_force_restart`.
- `Game_Memory` heap struct holds all state. `game_memory()` is called before unloading the old DLL so the new DLL can rehydrate.
- **Windows DLL workaround**: copy `game.dll` → `game_<api_version>.dll` before loading to avoid the file-lock bug.
- **Cross-platform extensions and rpath**:
  - Linux: `.so`, copy vendored libs to `build/hot_reload/linux/`, link with `-Wl,-rpath=$ORIGIN/linux`.
  - macOS: `.dylib`, link with `-Wl,-rpath $ROOT/vendor/raylib/macos`.
  - Windows: `.dll`, plus `-pdb-name` rotation per reload to free the previous PDB.
- DLL build flags: `-build-mode:dll -define:RAYLIB_SHARED=true -strict-style -vet -debug -extra-linker-flags:...`.

**Naming option:** the template parameterizes `Game_*` → `App_*` for non-game projects (CLI / lib templates that still want hot-reload).

**Build orchestration:** ship Karl's Sokol-style unified `build.py` orchestrator instead of three OS-specific shell scripts. Cross-platform, no shell-quoting nightmare, and shares logic with the `odin-master` Python toolchain we already require.

### 9.3 Template self-update

A scaffolded project records the template SHA it was created from in `.odin-master/template-sha.txt`. Running `odin-master update-template` in a scaffolded project:

1. Compares the recorded SHA against the current `odin_master` repo HEAD.
2. For each template file: three-way diff between (recorded version, current template version, user's current copy).
3. Files the user hasn't touched → updated silently.
4. Files the user has touched and that have changed in the template → conflict marker; user resolves manually.
5. New files in the template → added.
6. Updates `template-sha.txt` on success.

This is opt-in per project. The master template repo itself updates via plain `git pull`.

---

## 10. Playground + bench + profile (first-class measurement)

### 10.1 Why this exists

Odin is young; LLMs and humans hallucinate about it. Two tightly-related sub-components share infrastructure because the workflow is the same:

- **Scratchpad** — sub-second compile-edit-run loop for verifying claims about Odin behavior in isolation. The "I just read X, is X actually true?" workflow.
- **Bench/Profile** — first-class instrumentation with one-line ergonomics, integrated with `core:prof/spall` and Tracy via `oskarnp/odin-tracy`.

### 10.2 Layout (recap)

- `playground/scratch/` (committed) — micro-experiments, one folder per claim.
- `playground/bench/` (committed) — formal benchmarks.
- `playground/profiles/` (gitignored) — large traces.
- `tools/odin_lib/` — the instrumentation library all template projects can import.

### 10.3 The `instrument` library (`tools/odin_lib/instrument.odin`)

Turns this:

```odin
my_function :: proc() {
    spall.SCOPED_EVENT(&spall_ctx, &spall_buffer, #procedure)
    // work
}
```

into this:

```odin
import "odin_lib:instrument"

my_function :: proc() {
    instrument.SCOPE()      // auto-uses #procedure, auto-routes to spall+tracy if compiled in
    // work
}
```

API:

- `instrument.SCOPE()` — opens a profile scope using `#procedure` as the name.
- `instrument.SCOPE_NAMED("custom-label")` — same, explicit name.
- `instrument.BENCH(name, fn)` — runs `fn` N times, records min/median/max/stddev, dumps JSON to `playground/bench/<name>/results/`.

Compile-time switches:

- `-define:INSTRUMENT=spall` → emit Spall events
- `-define:INSTRUMENT=tracy` → emit Tracy zones
- `-define:INSTRUMENT=both` → both
- `-define:INSTRUMENT=false` (default in release) → all calls compile to nothing (zero cost)

This is as close to decorator ergonomics as Odin idiomatically allows. Honest about what it does (`defer` + scoped event) — no magic, no preprocessing, the LSP and debugger see the real code.

### 10.4 Scratchpad workflow

```
$ just scratch new "slice-cow-semantics"
   → creates playground/scratch/2026-04-19-slice-cow-semantics/ from _template/
   → opens main.odin in $EDITOR

# main.odin pre-filled with:
package main
import "core:fmt"
main :: proc() {
    // CLAIM: "Odin slices share underlying data; modifying one affects another"
    a := []int{1, 2, 3, 4}
    b := a
    b[0] = 999
    fmt.printfln("a=%v b=%v same=%v", a, b, &a[0] == &b[0])
}

$ just scratch run        # or `just scratch watch` for sub-second auto-run
   → compiles in <1 s, runs, captures stdout to output.txt
   → prompts: "Confirmed? (y/n/surprising) — file as evidence in wiki/concepts/?"
```

If confirmed, `result.md` is written and a backlink is appended to the relevant `content/wiki/concepts/<topic>.md`:

```markdown
## Slice copy semantics
Slices share underlying data. Modifying via one slice affects others pointing at the same array.

**Empirically verified**:
[scratch/2026-04-19-slice-cow-semantics](../../playground/scratch/2026-04-19-slice-cow-semantics/) — output: `a=[999,2,3,4] b=[999,2,3,4] same=true`
```

So your wiki concept articles aren't just LLM-compiled summaries — they're empirically grounded with re-runnable evidence. This is the **backlink mechanism**.

### 10.5 Bench / profile workflow

For real benchmarks (not throwaway scratch):

```odin
// playground/bench/arena_alloc_vs_default/bench.odin
import "core:testing"
import "odin_lib:instrument"

@(test)
bench_arena :: proc(t: ^testing.T) {
    instrument.BENCH("arena_alloc", proc() {
        arena: mem.Arena
        mem.arena_init(&arena, make([]byte, 1<<20))
        for _ in 0..<10000 do _ = mem.alloc(64, allocator = mem.arena_allocator(&arena))
    })
}
```

Run via `just bench arena_alloc_vs_default` → emits JSON results + `.spall` trace + (if Tracy is wired) live Tracy capture. All written to `playground/bench/<name>/results/` and `playground/profiles/`.

For profiling running programs:

```
just profile run -- ./build/my_game
   → wraps the binary with Tracy/Spall capture, opens viewer when done
```

### 10.6 Allocation tracking

`mem.tracking_allocator` boilerplate is wired into `templates/game/` and `templates/cli/` debug builds for leak detection. Pattern from Karl Zylinski; gated on `when ODIN_DEBUG`. On exit:

- If `len(track.allocation_map) > 0` → print one line per leaked allocation with size + source location.
- If `len(track.bad_free_array) > 0` → print one line per double/invalid free.
- Exit code is non-zero if either array is non-empty (CI gate).

### 10.7 What this is NOT

- **Not a REPL.** Odin doesn't support REPL semantics; `just scratch` just compiles a tiny program in <1 s and runs it. Close enough to feel REPL-like.
- **Not an IDE.** A workflow on top of Neovim + the CLI. The instrumentation library + playground folder + just recipes are the entire surface.
- **Not a code-generation preprocessor.** No magic; everything is plain Odin you can read and step through.

---

## 11. Cross-machine state and failure modes

### 11.1 What lives where

| Location | Synced via | Rebuilt locally | Notes |
|---|---|---|---|
| `content/sources/` | git | no | raw mirrored content, always indexed verbatim |
| `content/wiki/` | git | no | LLM-compiled markdown, additive only |
| `content/outputs/` | git | no | filed query results |
| `content/manifest.yaml` | git | no | source registry |
| `templates/`, `tools/`, `playground/scratch/`, `playground/bench/`, `justfile`, `ols.json`, `.odin-version`, `.odin-master/versions.toml` | git | no | the template itself |
| `content/index/` (SQLite + USearch) | **gitignored** | yes (`odin-master reindex`) | per-machine; rebuilt from `content/` |
| `playground/profiles/` | **gitignored** | n/a | large traces |
| `~/.config/odin_master/settings.toml` | **per-machine** | n/a | enable_vector_search, ollama_url, embedding_model |
| Ollama models | not synced | `ollama pull` | per-machine concern |

### 11.2 Failure modes

- **No Ollama running** on a GPU machine → `odin-search` falls back to keyword-only and prints a one-line stderr warning. Doesn't fail.
- **`enable_vector_search=false`** (laptop) → keyword-only mode silently (expected).
- **`git pull` conflicts in `wiki/`** → standard text merge; markdown is human-resolvable.
- **Stale index after `git pull`** → `odin-master update` always runs `reindex` after pull. Incremental: only rehashes changed files. `manifest-hash.txt` mismatch triggers a full reindex.
- **Odin compiler version drift** → `just check-odin-version` warns; CI gates on the pin via `setup-odin@v2`.
- **Ingestion partial failure** (e.g., one transcript URL 404s) → indexer logs and continues; doesn't abort the run.
- **Scratch compile error** → `just scratch run` shows the compiler diagnostic inline; no evidence file is written.

### 11.3 Testing the template itself

- `tools/search/` has Rust unit tests for RRF, FTS5 query escaping, USearch wrapper, settings parsing.
- `tools/indexer/tests/` has pytest for chunkers, ingestors, manifest parsing.
- `.github/workflows/ci.yml` runs `cargo test` + `pytest` + a smoke `just bootstrap` + `just doctor` + scaffold compile.
- `templates/game/`, `templates/lib/`, `templates/cli/` each have a `just test` that CI runs to ensure scaffolds compile against the pinned Odin version.

### 11.4 `odin test` knobs

Standardized for both local use and CI. All set via `-define:` flags:

| Knob | Use |
|---|---|
| `ODIN_TEST_THREADS=N` | Worker threads for parallel test runs |
| `ODIN_TEST_TRACK_MEMORY=true` | Run each test under `mem.tracking_allocator` |
| `ODIN_TEST_NAMES=Pkg.test_foo` | Comma-separated subset filter |
| `ODIN_TEST_FANCY=false` | Disable interactive output for CI logs |
| `ODIN_TEST_RANDOM_SEED=<int>` | Reproducible randomization |
| `ODIN_TEST_JSON_REPORT=build/test-report.json` | Machine-readable output (CI canonical path) |

`odin-master test-summary` reads `build/test-report.json` and emits a markdown digest.

### 11.5 CI matrix

`ci.yml` matrix:

- **OS**: `ubuntu-latest`, `macos-latest` (Apple Silicon), `macos-13` (Intel), `windows-latest`.
- **Profile**: `debug`, `release`, `hot-reload` (game template only), `web` (Emscripten — opt-in only, not blocking).
- **Odin**: pinned `dev-2026-04` AND `nightly` (nightly is informational; pinned must pass).
- A daily cron build runs the same matrix on `nightly` to catch upstream regressions early.

`docs.yml` builds `pkg.odin-lang.org`-rendered HTML on push for the local stdlib mirror.

The template publishes a reusable workflow (`workflow_call`) so downstream scaffolded projects can `uses: <you>/odin_master/.github/workflows/ci.yml@main` instead of vendoring it.

### 11.6 Pre-commit hook (`tools/git-hooks/pre-commit`)

```sh
#!/usr/bin/env bash
set -e
git diff --cached --name-only --diff-filter=ACM | grep '\.odin$' | while read -r f; do
    odinfmt -stdin -overwrite < "$f" > "$f.tmp" && mv "$f.tmp" "$f"
    git add "$f"
done
odin check . -vet -strict-style
```

Installed by `just bootstrap` via `git config core.hooksPath tools/git-hooks/`.

---

## 12. Data flow walkthroughs

### 12.1 First-time install on a GPU desktop (~30 min)

```bash
git clone https://github.com/<you>/odin_master.git ~/.local/share/odin_master
cd ~/.local/share/odin_master
just bootstrap                       # Odin, OLS, odinfmt, ripgrep, fd, ollama; runs `odin-master setup`
ollama pull qwen3-embedding:4b
ollama pull qwen3:8b                 # optional local LLM for `summarize`
odin-master update                   # walks manifest.yaml, ingests, reindexes
just install-cli                     # `cargo install --path tools/search` -> ~/.cargo/bin/odin-search
echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.bashrc   # one-time
just doctor                          # confirm everything green
```

### 12.2 First-time install on an 8 GB laptop (~10 min)

```bash
git clone https://github.com/<you>/odin_master.git ~/.local/share/odin_master
cd ~/.local/share/odin_master
just bootstrap-lite                  # skips ollama; `odin-master setup` writes enable_vector_search=false
odin-master update --keyword-only    # ingests; builds SQLite+FTS5 only, skips USearch
just install-cli
echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.bashrc
just doctor
```

### 12.3 Daily edit loop

`odin-master new my_game --template game` → `nvim main.odin` (ols + odinfmt active) → `just run / test / bench / hot` → `<leader>od` for in-editor doc search.

### 12.4 Adding a new source

```bash
# Edit content/manifest.yaml to add the new source entry
just add-transcript https://youtu.be/<id>      # or hand-place in content/sources/...
just summarize content/sources/.../verbatim.md # writes wiki/concepts/* + wiki/summaries/*
odin-master reindex
git add content/ && git commit -m "add transcript: <title>" && git push
```

### 12.5 Scratch / claim verification

```bash
just scratch new slice-cow-semantics
# edit playground/scratch/<date>-slice-cow-semantics/main.odin
just scratch watch                   # auto-rerun on save
# when satisfied: confirm prompt → result.md + backlink into wiki/concepts/
git add playground/scratch/ content/wiki/ && git commit && git push
```

### 12.6 Bench + profile

```bash
just bench arena_alloc_vs_default    # JSON results + .spall trace
just profile run -- ./build/my_game  # wraps binary, opens Tracy viewer
```

### 12.7 Multi-machine sync

Desktop: `git add . && git commit && git push`. Laptop: `odin-master update`.

### 12.8 Filing a query result

```bash
# After a productive search session:
odin-master publish "context-allocator-patterns"
# → creates content/outputs/2026-04-19-context-allocator-patterns/
# → user pastes the synthesis they care about; future reindex picks it up
```

(Note: this is the "file output back into the corpus" command. It is **not** a release-publishing command — there is no GitHub Releases distribution pipeline. The repo itself is the distribution.)

### 12.9 Updating a scaffolded project to a newer template

```bash
cd ~/projects/my_game
odin-master update-template
# → three-way diff; auto-applies untouched files; lists conflicts for the user
```

---

## 13. Background / Ecosystem inventory

The decisions above were informed by four research subagent reports, archived verbatim under `docs/superpowers/research/`. Cite these for the source data behind any specific number or version claim in this spec.

| Topic | File |
|---|---|
| SOTA local embedding model selection (Qwen3-Embedding-4B rationale, MTEB scores, integration gotchas) | [research/2026-04-19-embedding-model-selection.md](../research/2026-04-19-embedding-model-selection.md) |
| Sub-100ms hybrid search CLI architecture (Rust + USearch + SQLite FTS5 + RRF) | [research/2026-04-19-search-cli-architecture.md](../research/2026-04-19-search-cli-architecture.md) |
| Odin official toolchain inventory (compiler, OLS, vendor libs, editor integrations, profiling) | [research/2026-04-19-odin-toolchain-inventory.md](../research/2026-04-19-odin-toolchain-inventory.md) |
| Odin community workflows (hot-reload, build wrappers, deps, testing, CI, formatting, prior-art templates) | [research/2026-04-19-odin-community-workflows.md](../research/2026-04-19-odin-community-workflows.md) |

Key facts that shaped this design (full citations in the linked files):

- Latest Odin = `dev-2026-04` (released 2026-04-03), monthly release cadence.
- Spall the standalone tool is deprecated; `core:prof/spall` API still works; community moving to Tracy via `oskarnp/odin-tracy`.
- nvim-treesitter archived 2026-04-03; Neovim 0.12+ built-in TS is the path forward.
- Karl Zylinski is the community reference (book, blog, hot-reload template) — his patterns are de facto standard.
- gingerBill explicitly opposes a package manager; community uses `vendor:` + git submodules.
- `laytan/setup-odin@v2` is the standard CI action.
- Qwen3-Embedding-4B: Apache 2.0, MTEB v2 English retrieval 68.46, MTEB Code ~80, MRL truncatable 32–2560 dim, official Ollama tag.
- USearch HNSW: pure C++ + mature Rust crate, mmap, label filtering, sub-ms top-K at 200K vectors.
- SQLite FTS5: BM25 built-in since 3.34, sub-ms at 200K chunks.

---

## 14. Known unknowns / deferred items

Items intentionally not pinned in v1, with the trigger for revisiting them.

| Item | Status | Trigger to revisit |
|---|---|---|
| `--ultrafast` query mode (potion-32M static-embedding dual index for laptops) | deferred to post-v1 | If a non-GPU machine ever needs semantic search and Ollama-on-laptop is still infeasible |
| Persistent Neovim helper for Windows (small daemon to amortize 50–100 ms process exec) | not built; mitigation flagged | If Windows Neovim picker latency proves intolerable in real use |
| `playground/profiles/` storage strategy (gitignore vs git-lfs) | gitignored in v1 | If cross-commit trace diffing becomes a regular workflow |
| `odin-master` packaging (single Python entry point vs Rust binary that shells to Python) | Python entry point in v1 | If startup cost of the cold-path CLI ever shows up in real workflows |
| Coverage / property-based / snapshot testing | no community standard exists; gap not filled in v1 | When the Odin community converges on one |
| Web-target (Emscripten) CI lane | optional / informational only in v1 | When a scaffolded project actually ships to web |
| Indexing throughput pinning | targeted at ~200K chunks → 10–15 min on a 4080, batch 32, ~512-token chunks; not tuned | If reindex turnaround becomes a daily friction |

## 15. Out of scope

- Windows-native (non-WSL) primary support (a small `install.ps1` exists for fallback bootstrap; not all features tested).
- Remote/cloud sync of indexes.
- Web UI as a first-class consumer (markdown + CLI + Neovim picker only; an external web viewer can read `content/` directly).
- Auto-updating already-scaffolded user projects without consent.
- Package manager for Odin.
- Multi-user / shared indexes.
- LLM-agent-specific tooling beyond `odin-search --json` and `CLAUDE.md`. Any harness can invoke the CLI as needed; we don't design agent-specific surfaces beyond that.
- A version manager like rustup (would be its own project).
- A REPL, an IDE, or a code-generation preprocessor.
