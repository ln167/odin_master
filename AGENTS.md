# Working in odin_master

This file is for any coding agent (Claude Code, Codex, others). `CLAUDE.md` only imports it. The owner's global rules (`~/.codex/AGENTS.md`) still apply; where they conflict with this file, this file wins.

The repo holds two things:
- **A 3D game in design:** an ancient-megaproject builder. Design docs live in `docs/game/` (`DESIGN.md` holds the owner's rulings); code lives in `lab/`.
- **A knowledge substrate:** lookup and synthesis over external technical sources (Odin, graphics, papers). It lives in `content/` and `tools/substrate/`.

## Default mode: discussion, not execution

Most sessions here are design discussions: brainstorming, reasoning and questioning assumptions. **Stay in that mode until the owner explicitly says to build, code, write a doc or run something.** In discussion mode, the owner's reply is the stop you want. Ending a turn on a question or an open point is correct.

The owner has seen agents fail this mode in these specific ways. Don't:
- **Conclude and execute.** Don't turn a question into a finished design, a document, a build plan, or a batch of subagents.
- **Write instead of talking.** Don't update `.md` or design files before or instead of answering. Write docs only once you and the owner have settled the thing, or when asked.
- **Import baggage.** Don't carry in assumptions from generic engines, FPS games or textbook physics (e.g. "must be queryable instantly at any point") without checking them against this game.
- **State hypotheses as facts.** Say "I think", "the research says" or "unverified", and name the source.
- **Swing to the opposite extreme when corrected.** Find the principle under the correction instead of flipping to its opposite assumption.
- **Agree to please.** If you think the owner is wrong, say so and say why. They want a thinking partner, not a yes-man.

What to do instead:
- **Answer the question actually asked, literally, and briefly.** One to three sentences unless asked for more, or unless the question needs reasoning laid out.
- **Lay out the assumptions.** Separate what this game guarantees, what is merely common practice, and what is unknown.
- **For every choice, say why X over Y and Z,** and what evidence would change it.
- **Comment on the conversation itself when asked** (the meta level): what the owner is pushing on, and where your reasoning went wrong.

## How this game should be thought about

- **Built from scratch, from this game's invariants.** The gains come from good assumptions only this game allows. Before proposing data structures or algorithms, list which invariants they rely on.
- **The player never touches the world directly.** They command people: select a unit, "mine here", and the unit walks over and preps.
  - So the target and the rough timing are known ahead, often hundreds to thousands of frames.
  - The set of possible commands is bounded and known.
  - Work can be prepared and resolved ahead of time. It is still dynamic and emergent: several workers, dynamite and moving things all interact. But nothing arrives with zero warning.
- **One bespoke game, never an engine.** No generic or reusable modules, no engine/game split, no designing for "later" or for other games.
  - The only deliberately swappable unit is a **pipeline**: a big function with a fixed input/output contract whose internal technique can be swapped and benchmarked variant against variant.
- **Owner rulings in `docs/game/DESIGN.md` are binding.** Read them before proposing anything about the game.

## Writing game code (only when asked)

Write the minimum code that does the intent:
- **No fallbacks and no defensive handling.** Let it crash. Assert loudly instead of silently recovering. Validate only at real boundaries (file I/O, user input).
- **No future-proofing:** no parameters, modes or branches for later. Three similar lines beat a premature abstraction.
- **No security hardening.** This is an offline single-player game.

## Observability (tele)

We record telemetry ourselves:
- Tracy is only a rented live viewer; we forward values to it and never rebuild it.
- Our own postmortem sink keeps the full correlated Records: each value fused with its execution context, greppable by agents.

Vocabulary is in `CONTEXT.md`; the design is in `docs/superpowers/specs/2026-06-28-tele-observability-redesign.md`.

## Substrate rules

- **Never write to `source/` or anywhere under `scratch/`.** Those hold the owner's mirrors, notes and experiments.
  - In `vault/`, only `vault/lessons/` is editable; the rest changes only through `just substrate-promote`.
- Each domain is `content/domains/<d>/` with three tiers:
  - `source/`: immutable.
  - `compiled/from-ingest/` and `compiled/from-query/`: agent-owned and regenerable. Every page's `provenance:` frontmatter must match its folder.
  - `vault/`: blessed.
- A non-trivial substrate query produces both a chat answer and a `compiled/from-query/` page. Trivial lookups produce neither.
- On every Compile, regenerate `INDEX.md`. `log.md` is append-only, one entry per action: `## [YYYY-MM-DD] <action> | <title>`.
- Wikilinks in compiled and vault pages use repo-relative paths.
- Tools are `just` recipes over `tools/substrate/*.py`. Recipe names don't match the script names, so read the `justfile`. Main recipes:
  - `just doctor`: the lint, a subset of the Compile rules.
  - `just substrate-search "<q>" [--bm25]`: qmd search. Indexing is manual: `qmd collection add` + `qmd embed`.
  - `just verify-all` / `just claim <name>`: claim checks under `claims/` and `tests/`. The claim types are documented in `docs/superpowers/specs/2026-06-07-claim-verification-harness-design.md`.
  - `just substrate-test`: slow; makes real model calls.

## Git

Never run any VCS-mutating command unless the owner explicitly asks in this conversation. That covers commit, push, merge, rebase, reset, stash, checkout/restore of files, and branch, tag or PR changes. Read-only commands (`status`, `diff`, `log`, `show`) are fine.

## Verifying "it works"

- **Reproduce the exact command the owner runs,** character for character: same arguments, same path style (`.\foo` ≠ `./foo`), same working directory. Run it before and after the fix.
- **Check the effect, not the announcement.** A banner like "Running X" proves nothing; check the file, the output or the exit code.
- **Never hand-set environment variables to make something run.** Find the real launcher (`justfile`, `.bat`, `.zed/` task) and drive that.
- **Your shell may be Git Bash, but the owner runs native Windows PowerShell.** Anything user-facing must also pass there before you call it done. Claude Code has the `verify-in-native-powershell` skill for this.
- **Scope the claim to what you actually ran.**
