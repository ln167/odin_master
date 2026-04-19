---
title: Sub-100ms local hybrid search CLI architecture (April 2026)
date: 2026-04-19
agent: general-purpose research subagent
prompt_summary: |
  Recommend the architecture for a sub-100ms local CLI that combines
  fulltext (BM25/FTS5) and vector search over ~50k–200k documentation
  chunks. Single binary preferred. Cross-platform. Embeddable as both
  a CLI for LLM agents and a backend for various UIs.
status: raw agent output (unedited)
---

# Architecture Recommendation: Sub-100ms Local Hybrid Search CLI (April 2026)

I have enough. Let me synthesize.

## 1. Recommended architecture (one stack, opinionated)

**Pure single-binary Rust CLI. No daemon. Static-embedding query model. Two indexes side-by-side in one project directory.**

```
project/
  .odin-search/
    docs.db            # SQLite: chunks + metadata + FTS5 (BM25)
    vectors.usearch    # USearch HNSW index, mmap'd
    potion-32M.safetensors  # ~30MB static embedding model (bundled or fetched once)
```

The Rust CLI (`odin-search "query" --tier=1,2 --json`) does on each invocation:

1. `mmap` the USearch HNSW file and `open` the SQLite file. Both are O(1) header reads.
2. Embed the query with **model2vec-rs** (`potion-retrieval-32M`). This is a tokenizer + token-vector lookup + mean pool. No neural net forward pass, no ONNX runtime, no GPU. Sub-millisecond per query, no model warm-up.
3. Run two queries in parallel (rayon): (a) USearch HNSW top-K (K≈100) over the dense vectors, (b) FTS5 `MATCH` with BM25 ordering over the same K candidates. Both with metadata filters pushed down through SQLite/USearch label filters.
4. Reciprocal Rank Fusion (`1/(60+rank)`) to merge the two ranked lists.
5. Look up final top-N rows in SQLite for chunk text + metadata, `serde_json` to stdout.

This stays well under 50ms cold on Linux/WSL2/macOS, requires no daemon, ships as a single static binary via `cargo install`, and the index sits next to the markdown files exactly like you wanted. The vector and FTS layers stay decoupled so you can swap either without rewriting the other.

The frankensearch project (https://github.com/Dicklesworthstone/frankensearch) is essentially the existing reference implementation of this pattern — Tantivy BM25 + memory-mapped vector index + RRF + potion fast-tier — and you should read its source before writing your own.

## 2. Component table

| Layer | Pick | Rationale | Second-best |
|---|---|---|---|
| Vector store | **USearch HNSW (mmap'd file)** | Pure C++ with mature Rust crate (`usearch`), `f16` quantization, label-based metadata filtering, opens via mmap (~1ms), HNSW gives sub-ms top-K at 200k vectors. Same algo as FAISS, ~10x faster. | **LanceDB** (also Rust-native, more featureful, but pulls in Arrow + DataFusion = larger binary and slower cold open) |
| Fulltext | **SQLite FTS5** | Already there since SQLite is your row store, BM25 built-in since SQLite 3.34, sub-ms for 200k chunks, trivial filtering via SQL WHERE. | **Tantivy 0.26** (faster at 1M+ docs, but ~10ms index open and a separate index dir to manage; not worth the complexity at 200k) |
| Query embedding | **model2vec-rs + potion-retrieval-32M** | Static embedding (no neural net), pure Rust, no ONNX runtime, no tokio, ~30MB on disk, sub-ms per query, zero warm-up. Kills the cold-start problem entirely. Quality ≈ 92% of all-MiniLM-L6-v2 on MTEB. | **fastembed-rs + ort + bge-small-en-v1.5** (better recall, but ~50–150ms cold start to load ONNX runtime + model — needs a daemon to amortize) |
| SQLite driver | **rusqlite** (bundled feature) | Sync, no async runtime tax, statically links libsqlite3, FTS5 enabled. Compile-time is fine for a CLI. | **libsql** (Turso fork; only useful if you want remote sync later) |
| HNSW alternative | (kept above as primary) | — | **`hnsw_rs`** pure-Rust if you want to drop the C++ dep |
| CLI / JSON / parallel | clap + serde_json + rayon | Uncontroversial. | — |
| Daemon | **None.** | Static-embedding model removes the only reason you'd need one. | If you later switch to a transformer model for quality, add an optional `--server` mode using `interprocess` Unix sockets / named pipes. |

Note on **sqlite-vec**: it's now shipping ANN (DiskANN) in alpha as of late 2025/early 2026, which fixes the brute-force scaling issue. If you want to live in *one* file (vectors + FTS + metadata in `docs.db`) it's the simplest possible stack and should hit your latency budget at 200k. The reason I still pick USearch + SQLite over sqlite-vec: USearch's HNSW is more battle-tested, SIMD-tuned, and has predictable performance characteristics; sqlite-vec's DiskANN is brand new. Cost is one extra file in the index dir.

Note on **DuckDB VSS / LanceDB**: LanceDB is Rust-native and supports hybrid search natively (it uses Tantivy under the hood for BM25, plus IVF_PQ vector index, plus built-in RRF reranker). It's a perfectly defensible alternative to the USearch+SQLite split — single API, single dependency, very nice DX. The reason it's not my pick: it pulls in Arrow + DataFusion + the Lance file format machinery, which means a fatter binary and a slower cold open from a CLI invocation. For a daemon it would be the right answer; for a one-shot CLI, USearch+SQLite is leaner.

## 3. Latency budget (200k chunks, 384-d vectors, cold CLI invocation, NVMe)

| Stage | Estimate | Notes |
|---|---|---|
| Process exec + dynamic linker | 3–8 ms | Static binary on Linux; Windows is the worst case (~20ms) |
| Parse argv (clap) | <1 ms | |
| `open` SQLite + `mmap` USearch index | 2–5 ms | Both are header reads; OS pre-caches after first invocation |
| Tokenize + static-embed query (model2vec) | <1 ms | Pure lookup table + mean pool |
| USearch HNSW top-100 (with label filter) | 1–3 ms | f16, SIMD, 384-d, 200k vectors |
| FTS5 MATCH top-100 (with WHERE filter) | 2–8 ms | BM25 in SQLite is fast at this scale |
| RRF fusion (200 candidates) | <1 ms | |
| SQLite row fetch for top-N (N=20) | 1–3 ms | Single primary-key lookups |
| serde_json serialize + write to stdout | <1 ms | |
| **Total** | **~12–30 ms cold, ~5–15 ms warm** | Comfortably under your 50ms preferred budget. |

The static-embedding choice is what makes this work without a daemon. If you used a transformer (BGE/MiniLM) via ONNX, the embedding step alone would be 50–150ms cold and you'd be forced into a daemon.

## 4. Risks / unknowns

- **Recall of static embeddings.** potion-retrieval-32M is ~92% of all-MiniLM-L6-v2 quality; on highly technical / out-of-distribution Odin programming language jargon, that gap may widen. Mitigation: build the indexer (Python, runs on your 4080) with *both* a static potion vector and a real BGE-small vector per chunk. CLI uses static by default; add `--quality` flag that triggers an optional daemon (or a slower CLI path) using ONNX + BGE for the rare query where you care.
- **USearch label filtering performance with HNSW.** Pre-filtering inside HNSW can collapse to brute force when the filter is highly selective. For your `--tier=1,2` filters this is usually fine since tiers aren't tiny, but be ready to fall back to over-fetch + post-filter if you see a regression.
- **Windows / WSL2 cold start.** Process exec on Windows is much slower than Linux (50–100ms is not unusual for any CLI). WSL2 is closer to native Linux. For the Neovim picker on Windows you may want a small persistent helper after all.
- **sqlite-vec ANN landing.** If sqlite-vec's DiskANN ships stable and benchmarks well in mid-2026, the *single-file* simplicity argument becomes compelling enough to consolidate. Keep your vector storage layer behind a trait so you can swap.
- **Tokenizer cost.** model2vec-rs uses HuggingFace tokenizers; first invocation pays a small JSON-parse cost for the tokenizer file (~5ms). Bundle the tokenizer.json next to the model and read with `mmap` if this shows up in profiling.
- **mmap on Windows.** Both USearch and SQLite mmap behavior is fine on Windows but eats virtual address space; on a 64-bit binary this is a non-issue.
- **The frankensearch project** is one person's WIP and may not be production-ready. Use it as a reference, not a dependency.

## Note on subsequent design pivot (not from this agent)

The `odin_master` design ultimately pivoted away from this agent's "static-embedding via potion" recommendation because subsequent decisions established:

1. Ollama would already be running on GPU machines (it's the standard local LLM runner the user has anyway), making a daemon "free."
2. SOTA quality (Qwen3-Embedding-4B) was preferred over the static-embedding's ~92% MiniLM quality.
3. Non-GPU machines would not do semantic search at all (use keyword + LLM-agent path instead).

The architecture (single Rust binary, USearch HNSW + SQLite FTS5 + RRF, no custom daemon) was kept; only the query-embedding mechanism changed (Ollama HTTP call to local Qwen3-4B instead of model2vec static lookup).

## Sources

- [frankensearch (reference architecture: potion + Tantivy + RRF, single binary)](https://github.com/Dicklesworthstone/frankensearch)
- [model2vec-rs (pure-Rust static embeddings, Apache-2.0)](https://github.com/MinishLab/model2vec-rs)
- [model2vec / potion models (500x faster than transformer baselines)](https://github.com/MinishLab/model2vec)
- [potion-retrieval-32M (32M-param static retrieval model)](https://huggingface.co/minishlab/potion-retrieval-32M)
- [USearch (HNSW, Rust crate, mmap)](https://github.com/unum-cloud/usearch)
- [USearch Rust crate on crates.io](https://crates.io/crates/usearch)
- [sqlite-vec (vector search SQLite extension)](https://github.com/asg017/sqlite-vec)
- [sqlite-vec ANN tracking issue (DiskANN alpha)](https://github.com/asg017/sqlite-vec/issues/25)
- [sqlite-vec performance issue thread](https://github.com/asg017/sqlite-vec/issues/186)
- [Alex Garcia — hybrid FTS5 + sqlite-vec with RRF (canonical example)](https://alexgarcia.xyz/blog/2024/sqlite-vec-hybrid-search/index.html)
- [Simon Willison's notes on the sqlite-vec hybrid pattern](https://simonwillison.net/2024/Oct/4/hybrid-full-text-search-and-vector-search-with-sqlite/)
- [LanceDB (Rust, embedded, Tantivy + RRF built-in)](https://github.com/lancedb/lancedb)
- [LanceDB Rust crate](https://docs.rs/lancedb/latest/lancedb/)
- [LanceDB Jan 2026 newsletter (Lance × DuckDB SQL retrieval)](https://lancedb.com/blog/newsletter-january-2026/)
- [Tantivy (Rust BM25 search)](https://github.com/quickwit-oss/tantivy)
- [Tantivy 0.24 release notes](https://quickwit.io/blog/tantivy-0.24)
- [fastembed-rs (ONNX-based, the alternative if you go transformer)](https://github.com/Anush008/fastembed-rs)
- [ort crate (ONNX Runtime in Rust)](https://github.com/pykeio/ort)
- [vectorlite (HNSW SQLite extension, sqlite-vec alternative)](https://github.com/1yefuwang1/vectorlite)
- [Marco Bambini — State of Vector Search in SQLite](https://marcobambini.substack.com/p/the-state-of-vector-search-in-sqlite)
- [Rust ORMs in 2026 (rusqlite remains right choice for SQLite-only)](https://aarambhdevhub.medium.com/rust-orms-in-2026-diesel-vs-sqlx-vs-seaorm-vs-rusqlite-which-one-should-you-actually-use-706d0fe912f3)
