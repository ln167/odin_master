# Lesson 19 — search-driven learning

## Concept
The substrate's `odin-source` collection lives next to your editor —
the official site, the wiki, `~/odin/dist/core/` & `vendor/`, Karl
Zylinski's blog, gingerBill's articles, `odin-examples`. When you hit
something you don't understand, search the local corpus *before*
opening a browser. It's faster (no round trip), authoritative (the
collection is curated), and citable (every result prints a path you
can open).

The habit you're building: stuck → search the corpus → open the file
at the listed path. Browser tab is the last resort, not the first.

## Setup
1. Verify qmd is on your PATH:

       qmd --version

   You should see `qmd 2.1.0` or similar.

2. Confirm the `odin-source` collection is registered:

       qmd collection list

   You should see `odin-source` listed alongside any other domains
   you've added.

3. Confirm BM25 search works end-to-end:

       just substrate-search --bm25 "context"

   You should see a numbered list of hits with paths and snippets. If
   the collection is empty, run `qmd status` to see why.

## Do this
Run each query. Read the top result. Open the file at the listed path.

    just substrate-search --bm25 "context allocator"
    just substrate-search --bm25 "tagged union"
    just substrate-search --bm25 "hot reload"
    just substrate-search --bm25 "or_return"
    just substrate-search --bm25 "soa struct"

The first hits these queries on this corpus:

- `context allocator` → the `core:runtime` Context page (lesson 08).
- `tagged union` → gingerBill's tagged-union write-up (lesson 10).
- `hot reload` → Karl's reload posts (lesson 18).
- `or_return` → the error-handling page (lesson 11).
- `soa struct` → the SOA wiki entry (lesson 12).

Each result is a path, a score, and the matching snippet. The paths
are clickable in WezTerm (Ctrl-click) and any modern terminal.

## Now do this — going hybrid
BM25 is keyword-only: it ranks pages by exact term frequency. That's
fast and dependency-free, but it misses anything phrased differently
from your query. The default `qmd query` mode is **hybrid** — BM25
plus vector similarity plus an LLM rerank — and finds pages even when
the words don't line up.

Hybrid needs embeddings on disk. Generate them once:

    qmd embed

This walks the collection and writes vectors next to the existing
BM25 index. It runs entirely on-device and takes about a minute on a
fresh corpus. Re-run after `qmd ingest` adds new content.

Now drop the `--bm25` flag and try queries phrased the way *you*
think, not the way the docs are written:

    just substrate-search "lifecycle of an allocator"
    just substrate-search "what does the caret mean"
    just substrate-search "cleanup on early return"

`lifecycle` likely doesn't appear in the allocator pages at all —
they say *scope* and *arena reset*. BM25 returns nothing useful;
hybrid finds the right pages. Same story for `caret` (the docs say
*pointer dereference*) and `cleanup on early return` (the docs say
*defer*).

Use BM25 when you know the exact term. Use hybrid when you don't.

## Now break it
Run:

    just substrate-search --bm25 "the variable that holds allocator and logger"

Zero useful hits. You're querying in your own voice; the corpus uses
the word **context**. Refine to:

    just substrate-search --bm25 "context"

Top result is the runtime page. Lesson: BM25 wants the corpus's
vocabulary, not yours. When you can't guess the word, that's the
signal to drop `--bm25` and go hybrid.

Also try:

    just substrate-search --bm25 "core:mem.Tracking_Allocator.bad_free"

Probably zero hits — too specific, no chunk happens to contain that
exact dotted string. Broaden one term at a time:
`Tracking_Allocator bad_free` → `tracking allocator leak` until you
find the page, then read up from there.

## The bigger picture
Search is one of three layers. Use them in order:

1. **`content/domains/odin/compiled/INDEX.md`** — the substrate's compiled navigation map (regenerated on every Compile pass).
   Faster than search when you already know roughly *where* the
   answer lives ("the allocators page", "the hot-reload template").
   Open it first for navigation.
2. **`just substrate-search`** (this lesson) — when you know *what*
   you're looking for but not *where* it is. BM25 for known terms,
   hybrid for fuzzy intent.
3. **The `odin` skill in Claude Code** — for "*why* does X work this
   way" questions that need synthesis across multiple sources. The
   skill reads the same corpus you just searched, plus it can run
   code and reason about tradeoffs.

The substrate has a **two-outputs rule**: when you ask a non-trivial
question and arrive at an answer worth keeping, file the distilled
version back to `content/domains/odin/compiled/from-query/`. Future-you (and
future-search) gets a clean canonical answer instead of having to
re-derive it. The corpus grows by use.

End of curriculum — you're done. From here, the reps come from real
projects, the **break-it** sections of earlier lessons, and the
search habit you just built.
