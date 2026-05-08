# Conversation Context — 2026-05-04 Substrate Redesign

This file captures the design conversation that produced the spec and plan. Subagents reviewing the work need this context — they don't have visibility into the live chat. Read alongside the spec, plan, and plan-review.

## Origin

User started by comparing their existing `odin_master` (an Odin-language reference repo with mirrored docs, hand-curated wiki, BM25 search) to **Open Brain (OB1)** at `C:\Users\user1\dev\OB1`. They wondered if their attempt was the same idea as Open Brain.

I argued initially they were different (lookup tool vs. personal-memory store). User pushed back: **the intent was always a multi-domain knowledge substrate** — Odin is v1 proof, planned domains are SDL3, engines, computer graphics, papers, and other technical fields. Open Brain's plumbing matches that intent partially but its corpus bias (personal-life data) is wrong.

User then pointed at Andrej Karpathy's **LLM Wiki gist** (https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f) and said "let's go all in on his setup." Karpathy's pattern: raw sources directory + LLM-maintained wiki + INDEX.md + log.md + Obsidian as IDE + optional CLI search (he names `qmd`).

## Layered review

Three reviewer passes shaped the design beyond Karpathy's text:

1. **Karpathy gist comments** (~13k lines, 435 comments). Subagent extracted nuggets:
   - Drift / error accumulation if LLM owns wiki entirely (laphilosophia, frosk1)
   - INDEX.md doesn't scale past ~100 pages (mpazik, singularityjason, manavgup)
   - Two-outputs-per-task rule (bluewater8008): every Q&A produces answer + wiki update
   - Editor-not-writer + mechanical cross-links (peas)
   - Validator-at-write-time: every claim cites resolvable source (badwally)
   - Forced "Caveats / Common Misconceptions" section (localwolfpackai)
   - Per-source-type templates (dkushnikov)
   - Reflect step (bendetro)
   - SHA-256 source-hash provenance (Jwcjwc12)
   - Multi-agent failure modes (AEVYRA)

2. **Nate (OpenBrain) reaction transcript** at `C:\Users\user1\Desktop0\llm_vs_open_brain.txt`. Subagent extracted:
   - **Source/compiled split as keystone fix** for drift (the load-bearing idea — see below)
   - Compiled view as derived artifact, regenerable
   - Staleness as correctness issue (stale wiki lies confidently)
   - Contradictions as signal, not bug
   - Multi-agent write contention
   - Karpathy's envelope is ~100–10,000 docs
   - Domain-by-churn-rate tagging

3. **Final compare** of the written spec vs. Karpathy's gist (subagent). Surfaced the spec's deviations:
   - Three-tier (vs Karpathy's two-tier) due to vault addition
   - Wiki as build artifact (vs living document)
   - Two-outputs as required (vs suggestion) → user asked to soften to "non-trivial only"
   - Hard validators (vs Karpathy's "everything optional")
   - Tier 1/2/3 as additive (not in Karpathy's pattern)
   - Provenance split (`from-ingest` vs `from-query`)

## Key design decisions (in order, with rationale)

### Three-tier storage (source / compiled / vault)

Not in Karpathy. Came from Nate transcript's source/compiled fork + user's clarification that existing `studies/` and `lessons/` are LLM-generated but **TIP-TOP** and must remain untouched. They became the seed for the `vault/` tier — frozen, blessed artifacts that the compile pipeline never regenerates.

User-confirmed: "I really want to keep those untouched. they are tip-top right now."

### Five-domain scaffold

User picked option C from Q1: all four planned domains (papers, sdl3, engines, graphics) scaffolded as **empty shells** in v1 alongside the populated odin domain. No content fetching for shells; just structure + empty INDEX/log + skill stubs.

Rationale (user): "the domains i want and that karpathy outlines are pretty clear. lets do C. we just dont needt o FILL them with anything yet."

### Existing wiki disposition

Old `content/wiki/concepts/` and `content/wiki/summaries/` were entirely LLM-generated under the no-discipline regime. User confirmed: "i didn't write anything myself the stuff that currently exists was gather and refined by LLMs completely." Decision: archive to `content/_archive/`, regenerate from scratch via the new compile pipeline.

This added a memory: `feedback_llm_authored_content.md` — user does NOT hand-author wiki content; the LLM owns everything except upstream-mirrored material.

### Search backend = qmd, deferred

User chose Karpathy's full recommendation: INDEX.md at v1 scale, qmd when it hurts. **Reverses** the user's earlier "vector/semantic search deferred" stance because qmd is on-device with no Ollama dependency. Memory updated: `feedback_defer_semantic_search.md` now reflects qmd-yes-when-needed.

Rationale (user): "i want to best search capabilities."

### Heavy ops via skill, mechanical ops via shell

Compile / Ingest / Query / Lint are skill workflows (LLM-driven). Doctor / Promote / Test / Domain-scaffold are shell tools (Python). User picked option A: "this isn't a code base" — keep tooling minimal.

### Validation strategy = structural + semantic gold-set

Beyond `doctor` (mechanical), `quality-checks.yaml` gains a structural block (subset of doctor) and semantic block (gold queries that must cite specific source IDs when answered through the skill). End-to-end smoke test runbook validates the whole substrate.

User picked option B: "appropriate weight class for personal tooling — automated and useful, not a research project."

### Two-outputs rule — softened

After the post-spec Karpathy compare, user agreed to soften the rule from "every Q&A produces a wiki update" to **non-trivial only**. Trivial queries (signature lookups, single-fact recall) skip both wiki update and log entry. Hard validators stay hard.

### Three categories of content

User's insight, not Karpathy's:

1. **Wrote it myself.** Currently empty (user doesn't hand-author).
2. **LLM-from-source (ingest).** LLM read raw upstream and synthesized.
3. **LLM-from-query.** LLM responded to user's question; answer is LLM's words but the question's framing carries user's fingerprint.

Spec response: `provenance:` field in compiled-page frontmatter (`from-ingest` | `from-query`), enforced by validator and folder split (`compiled/from-ingest/` and `compiled/from-query/`). Verbatim user questions go in `log.md` as the closest category-2 trace the substrate can produce.

User explicitly said: "Category 1 should never bleed into category 2." Spec adopts this as architectural framing.

### Category 1 vs Category 2 (philosophical reframe)

After my proposal of executable validation and the user's reflection on whether any of these knowledge-base systems actually help understanding, we agreed:

- **Category 1**: lookup-and-synthesis tool. The substrate. A wiki is not understanding.
- **Category 2**: model of user's understanding. Out of scope for this substrate. Possibly a sibling project later, seeded by `log.md` question history.

User: "I find that's very useful It's like it's like our own mini internet. That's local. I think it's a great idea Now But but it does it really is category one and category two are very different a Category one should never bleed into category two."

### KISS, narrow scope, suspicious of unproven tools

User reviewed several similar repos in the gist comments (swarmvault, synthadoc, OmegaWiki, link-mcp, etc.) and judged most as "advertising their shit riding off this thread" rather than genuine attempts. KISS principle reaffirmed.

Memory added: `feedback_kiss_and_scope.md`. Substrate is for **learning Odin + game programming + graphics programming** in v1. Other domains exploratory. Don't adopt third-party tools without independent validation. Don't add knowledge-graph / typed-ontology infrastructure without rigorous justification.

User: "we can expand out as we learn what is useful and working and what isn't. These people that want to optimize learning with this whole swarm thing, I don't think they know what they're doing."

### v1 intent statement

Added to spec Goals after KISS conversation:
> Primary intent (v1): substrate exists to support learning Odin + game programming + graphics programming. Other domains scaffolded but not actively populated. Success criterion is "did this help me learn the things I'm trying to learn," not "is this a comprehensive personal knowledge tool."

## Memory artifacts (read these too)

User has saved memories at `C:\Users\user1\.claude\projects\C--Users-user1-dev-odin-master\memory\`:

- `feedback_personal_scope.md` — drop "shipping-quality" / enterprise framing
- `feedback_no_git_unless_asked.md` — never commit/push/merge without explicit authorization
- `feedback_defer_semantic_search.md` — search backend is qmd; no Ollama/DIY embeddings
- `project_substrate_intent.md` — multi-domain substrate, not Odin-specific tool
- `feedback_llm_authored_content.md` — user does not hand-author wiki content
- `feedback_kiss_and_scope.md` — KISS, narrow scope, suspicious of unproven tools

## Plan execution decisions

After plan was written, the plan-vs-spec reviewer subagent flagged 4 items. User picked the no-skip / no-defer option:

1. **Phase 7 split** applied: T42 (`doctor.py`) runs alone first; T43/T44/T45 (`promote`, `test`, `domain-scaffold`) run in parallel as P7-tools-rest. Resolves race condition where T44/T45 sanity-checks invoke doctor.py.
2. **Vault subfolder coexistence** documented in plan's Tooling map: existing `vault/studies/` and `vault/lessons/` keep custom names; new promotions go to `vault/<page-type>/`. Both schemes coexist; doctor does not enforce vault subfolder structure.
3. **T50 update recipe** changed from misleading shell-out to echo-only stub explaining the `update` fetcher pipeline is deferred for v1.
4. **`docs/adding-sources.md` update** added as Step 4 of T51 — documents the new `domain:` manifest field.

User then asked for **a comprehensive independent review of everything** (this conversation, spec, plan, memories) before execution kicks off. That's the review you're now doing.

## What "PASS" means here

The user is solo, this is personal tooling, KISS applies. PASS = "ready to execute as-is." NEEDS REVISION = "real issue worth pausing for." BLOCK = "execution would harm something." The bar isn't enterprise; it's "did we miss anything that the user explicitly asked for, or that the conversation surfaced as important, or that the spec says but the plan doesn't deliver?"

The user explicitly cares about: faithful to Karpathy where the spec doesn't deviate; deviations are deliberate and acknowledged; KISS upheld; no scope creep; learning Odin/game/graphics is the actual goal.
