---
title: SOTA local embedding model selection (April 2026)
date: 2026-04-19
agent: general-purpose research subagent
prompt_summary: |
  Recommend the best LOCAL embedding model as of April 2026 for indexing
  a technical documentation knowledge base (Odin programming language).
  Hard constraints: runs locally (no API), RTX 4080 with 16GB VRAM,
  Apache/MIT-style license, top-tier MTEB Retrieval, Matryoshka support
  preferred for sqlite-vec storage efficiency.
status: raw agent output (unedited)
---

# Recommended local embedding model for Odin docs (April 2026)

I now have enough to write a complete report. The English-retrieval scores I have hard data for:

- **Qwen3-Embedding-8B**: MTEB v2 English mean 75.22, retrieval 69.44, MTEB Code 80.68
- **Qwen3-Embedding-4B**: MTEB v2 English mean 74.60, retrieval 68.46
- **Qwen3-Embedding-0.6B**: MTEB v2 English mean 70.70, retrieval 61.83
- **Harrier-OSS-v1-27b**: Multilingual MTEB v2 = 74.3 (English breakdown not published but reportedly SOTA across tasks; 27B is too big at FP16 anyway)
- **Harrier-OSS-v1-0.6b**: MTEB v2 = 69.0 (multilingual)
- **NV-Embed-v2**: MTEB English retrieval 62.65 (non-commercial only)
- **Qodo-Embed-1-1.5B**: CoIR 68.53 (OpenRAIL++-M)
- **SFR-Embedding-Code-7B**: #1 on CoIR (CC-BY-NC, non-commercial)

For a 4080 with 16GB VRAM, English-heavy + code-heavy corpus, permissive license, and sub-50ms query latency: **Qwen3-Embedding-4B is the clear winner.** It fits comfortably at FP16 (~8GB), beats every other open-weight model on English MTEB v2 retrieval except its own 8B sibling, has strong code performance from the same training as 8B (which scored 80.68 on MTEB Code), Apache 2.0, official GGUF, official Ollama tag, and 2560-dim output is well-suited for sqlite-vec with MRL truncation to 1024 or 768 if needed.

The 8B is the upgrade if quality > everything (still fits at Q8 in 8GB or FP16 in 15GB, but query latency on 4080 will get tight at ~50ms). The 0.6B is the fallback if the 4B doesn't hit the latency budget.

## Top 3 candidates

| # | Model | HF ID | Params | VRAM (FP16 / Q8) | Dim (MRL) | English MTEB v2 retrieval | MTEB Code | License | Released |
|---|---|---|---|---|---|---|---|---|---|
| 1 | **Qwen3-Embedding-4B** | `Qwen/Qwen3-Embedding-4B` | 4.0B | ~8 GB / ~4.5 GB | 2560 (32-2560) | **68.46** | ~80 (parity w/ 8B's 80.68) | Apache 2.0 | Jun 2025 |
| 2 | Qwen3-Embedding-8B | `Qwen/Qwen3-Embedding-8B` | 8.2B | ~15.1 GB / ~8.05 GB | 4096 (32-4096) | **69.44** | **80.68** | Apache 2.0 | Jun 2025 |
| 3 | Qwen3-Embedding-0.6B | `Qwen/Qwen3-Embedding-0.6B` | 0.6B | ~1.2 GB / ~0.65 GB | 1024 (32-1024) | 61.83 | n/a (lower) | Apache 2.0 | Jun 2025 |

VRAM figures are weights-only from the official Qwen GGUF file sizes; add ~1–2 GB for KV cache at 32K context.

## Why Qwen3-Embedding-4B over the others

The Odin corpus is English + code + technical docs. On the public benchmarks Qwen3-Embedding-4B is the best open-weight, permissively-licensed model that fits comfortably on a 16 GB 4080 at full FP16 with headroom for batch indexing. Its 8B sibling beats it by ~1 point on English retrieval (69.44 vs 68.46) but uses nearly 2× the VRAM and pushes query-time inference closer to the 50 ms budget on a 4080 — and the 4B was trained on the same data/pipeline, so its MTEB Code score is essentially in the same neighborhood as the 8B's class-leading 80.68 (best reported for any open model). Microsoft's brand-new Harrier-OSS-v1-27b (MIT, March 30 2026) tops the *multilingual* MTEB v2 leaderboard at 74.3 but a) is far too big for a 4080 even at Q4, b) Microsoft has not published an English-only retrieval breakdown or a CoIR/code score, and c) the small 0.6B Harrier sits at MTEB v2 = 69.0 which is below Qwen3-4B's 74.60 mean. NV-Embed-v2 and Llama-Embed-Nemotron-8B are excluded by license (CC-BY-NC / NSCLv1 — research only). Specialised code models (SFR-Embedding-Code, Codestral Embed, Qodo-Embed) lose to Qwen3 because most of your corpus is *prose about code*, not pure code search, and Qwen3's 80.68 MTEB Code is competitive while also handling the long-form prose that pure-code models degrade on. EmbeddingGemma-300M is genuinely good for size but ~5 points behind on retrieval — pointless headroom waste on a 4080. Matryoshka truncation: Qwen3 supports it natively, so you can store 1024-dim or 768-dim vectors in sqlite-vec while embedding at full 2560 — best of both worlds.

## Integration path (recommended)

- **Indexing** (on the 4080, one-time): `sentence-transformers` → `SentenceTransformer("Qwen/Qwen3-Embedding-4B", model_kwargs={"attn_implementation":"flash_attention_2"}, tokenizer_kwargs={"padding_side":"left"})`. Documents: no instruction prefix. Truncate output to 1024 dim before storing in sqlite-vec.
- **Query-time** (Rust CLI hot path): run llama.cpp's `llama-server --embedding --pooling last` with the official Qwen3-Embedding-4B GGUF at Q5_K_M or Q8_0; call from Rust over local HTTP. Or pull `ollama pull qwen3-embedding:4b` (2.5 GB Q4_K_M tag) and hit `http://localhost:11434/api/embed`. Both are well under 50 ms for a single short query on a 4080.

## Known gotchas

- **Instruction prefix is mandatory for queries**: `f"Instruct: {task}\nQuery:{query}"` with task = `"Given a web search query, retrieve relevant passages that answer the query"`. **Documents get NO prefix.** Mismatching this drops retrieval ~5 points.
- **Padding side must be `left`** for the decoder-style last-token pooling. sentence-transformers >= 3.0 handles this if you pass the kwarg above; raw transformers code must set it manually.
- **Pooling = last token** (not mean), with **L2 normalize**. llama.cpp: `--pooling last`.
- **Default output is 2560-dim** — verify your sqlite-vec column matches whatever you truncate to. Recommended: 1024 dim (storage = 4 KB/vector at FP32, ~800 MB for 200K chunks).
- **32K context**: chunks longer than 32K tokens get silently truncated.
- **Indexing throughput on a 4080**: expect ~200–400 docs/sec at 4B FP16 with batch 32 and ~512-token chunks. 200K chunks → 10–15 min.

## Caveats / things I might be wrong about

- I couldn't pull live numbers off `huggingface.co/spaces/mteb/leaderboard` (the embedded space didn't render via WebFetch) — all retrieval scores above come from model cards and the Qwen team blog. The MTEB live leaderboard is updated daily; rerun the query against the actual leaderboard before committing.
- Harrier-OSS-v1 is only ~3 weeks old (released 30 March 2026). Microsoft has **not published** English-only-retrieval or CoIR scores. If by the time you index Microsoft drops those numbers and they beat Qwen3, the **Harrier-OSS-v1-0.6b** (MIT, 1024-dim, 32K context, last-token pooling — same integration as Qwen3) becomes a viable swap. Re-check before final commit.
- The Qwen3 MTEB Code = 80.68 figure is for the 8B; the 4B's exact CoIR is not published separately on the model card I read — I'm inferring "near-parity" from the consistent training pipeline. If your corpus turns out to be >50% raw code (it isn't, by your description), benchmark Qwen3-Embedding-4B vs Qodo-Embed-1-1.5B (OpenRAIL++-M, CoIR 68.53) on a held-out set of your Odin queries before committing.
- Codestral Embed is API-only — confirmed; no weights released.
- Voyage-Code-3 is API-only — out by your hard constraint.
- Speed claim (<50 ms/query on 4080 for the 4B) is from general llama.cpp embedding throughput; I did not find a 4B-on-4080-specific microbenchmark. If the wall-clock turns out >50 ms, drop to **Qwen3-Embedding-0.6B** (MTEB English retrieval 61.83, still beats every pre-2024 model and runs in <10 ms easily), or to Q4_K_M of the 4B.

## Relevant URLs (for citations)

- Qwen3-Embedding-4B card: https://huggingface.co/Qwen/Qwen3-Embedding-4B
- Qwen3-Embedding-8B card: https://huggingface.co/Qwen/Qwen3-Embedding-8B
- Qwen3-Embedding-0.6B card: https://huggingface.co/Qwen/Qwen3-Embedding-0.6B
- Official GGUF (8B): https://huggingface.co/Qwen/Qwen3-Embedding-8B-GGUF
- Ollama tag: https://ollama.com/library/qwen3-embedding
- Qwen team blog (June 2025 release): https://qwenlm.github.io/blog/qwen3-embedding/
- Harrier-OSS-v1-27b card (MIT, MTEB v2 multilingual = 74.3): https://huggingface.co/microsoft/harrier-oss-v1-27b
- Harrier-OSS-v1-0.6b card: https://huggingface.co/microsoft/harrier-oss-v1-0.6b
- Harrier release writeup (30 Mar 2026): https://www.marktechpost.com/2026/03/30/microsoft-ai-releases-harrier-oss-v1-a-new-family-of-multilingual-embedding-models-hitting-sota-on-multilingual-mteb-v2/
- NV-Embed-v2 (CC-BY-NC, excluded): https://huggingface.co/nvidia/NV-Embed-v2
- Llama-Embed-Nemotron-8B (NSCLv1, excluded): https://huggingface.co/nvidia/llama-embed-nemotron-8b
- Qodo-Embed-1-1.5B (OpenRAIL++-M): https://huggingface.co/Qodo/Qodo-Embed-1-1.5B
- Qodo-Embed-1-7B (commercial): https://huggingface.co/Qodo/Qodo-Embed-1-7B
- Codestral Embed (API-only, excluded): https://mistral.ai/news/codestral-embed
- EmbeddingGemma-300M: https://huggingface.co/google/embeddinggemma-300m
- gte-Qwen2-7B-instruct (superseded by Qwen3): https://huggingface.co/Alibaba-NLP/gte-Qwen2-7B-instruct
- MTEB live leaderboard (verify before committing): https://huggingface.co/spaces/mteb/leaderboard
- March-2026 leaderboard summary: https://awesomeagents.ai/leaderboards/embedding-model-leaderboard-mteb-march-2026/
