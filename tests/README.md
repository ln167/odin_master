# tests/ (slot — not yet implemented)

The correctness counterpart to `bench/`. Each subdirectory will be a small
isolated program that exercises one objective behavioral claim and compares
actual output to expected.

**Status:** schema slot exists so the spec can land into it. No verifications
written yet, no tooling wired up yet. **Do not implement this without
re-reading the design first.**

## Why this exists

Wiki claims about code behavior ("`make([]int, 0, 5)` allocates capacity 5",
"X completes faster than Y for N=1M") are objective and verifiable by running
code. The substrate today is text-on-text. This directory is reserved for
running-code-backed claims when the design proceeds.

## Design

See `docs/superpowers/specs/2026-05-08-executable-verification-idea.md`.

## Relationship to lab/, bench/, scratch/, profiles/

All five sit at repo root and are **foundational, not throwaway**. Each plays
a different role:

| Dir | Lifecycle | Role |
|---|---|---|
| `lab/` | persistent | long-running hot-reload workshop; one host, swappable game DLL |
| `bench/<name>/` | one-shot | perf measurement; runs to completion, prints timings |
| `tests/<slug>/` (future) | one-shot | correctness check; diffs actual vs expected |
| `scratch/<name>/` | throwaway | "I want to try a thing" |
| `profiles/` | output | Spall traces dropped here; gitignored |

`lab/` is the workshop you stay in. The others are isolated programs you fire
off, get an answer, move on.
