# tests/ (executable verifications)

The correctness counterpart to `bench/`. Each subdirectory is an isolated
program that exercises one objective behavioral claim and compares actual
output to expected.

**Status:** implemented (2026-05-13). 11 lesson tests live; `just verify` and
`just verify-all` recipes wired.

## What's here

Each `lesson-NN-name/` directory contains a reference solution for one
graphics curriculum lesson under
`content/domains/graphics/vault/lessons/NN-name/`. The reference solution
fills in the TODOs from the lesson's skeleton and prints a deterministic
fingerprint (specific pixel values or projected coordinates) to stdout.
`expected.txt` is the canonical fingerprint; `just verify <name>` diffs.

| Test | Verifies |
|---|---|
| `lesson-00-frame-buffer` | framebuffer allocation + pixel write + line plot |
| `lesson-01-vectors-and-matrices` | dot, cross, homogeneous transform |
| `lesson-02-bresenham-lines` | all-octant Bresenham, multiple line directions |
| `lesson-02b-clipping` | Cohen-Sutherland line clipping, trivial accept/reject + intersect |
| `lesson-03-triangle-rasterization` | edge-function rasterization, CCW vs CW windings |
| `lesson-04-z-buffer` | depth-buffered triangle rasterization, tie-breaking on depth equality |
| `lesson-05-projection` | orthographic + perspective matrices, NDC + viewport remap |
| `lesson-06-camera` | look-at view matrix, orbit camera projection |
| `lesson-07-texture-sampling` | barycentric UV interp, perspective-correct vs naive, nearest sampling |
| `lesson-08-lambert-phong-gamma` | Lambert + Phong shading, gamma encode, per-pixel normal interp |
| `lesson-09-tangent-space-normal-mapping` | per-triangle tangent, TBN basis, normal-map decode |

## How to run

```sh
just verify lesson-00-frame-buffer   # one test
just verify-all                      # all tests; harness at tools/substrate/verify_all.py
```

Each test compiles a tiny binary via `odin run main.odin -file`, captures
stdout, diffs against `expected.txt`. A passing test prints
`PASS  lesson-NN-name`; a failing one prints expected vs actual.

## Why this exists

Curriculum lessons under `content/domains/graphics/vault/lessons/NN-name/`
have skeleton `main.odin` files with TODOs the user fills in. The skeletons
compile, but the *math in the TODO comments* could have typos that would
mislead the user. These reference solutions catch that: if the math is
right, the reference produces a known fingerprint; if a future edit
breaks the math, the test fails.

This also realizes the executable-verification idea sketched in
`docs/superpowers/specs/2026-05-08-executable-verification-idea.md`.

## Adding a test

1. `mkdir tests/lesson-NN-name/`
2. Write `main.odin` that implements the lesson's TODOs correctly and
   prints a deterministic fingerprint.
3. Run it once: `odin run main.odin -file > expected.txt`. Inspect; if the
   output looks right, commit.
4. `just verify-all` should now include it.

## Relationship to lab/, bench/, scratch/, profiles/

All five sit at repo root and are **foundational, not throwaway**.

| Dir | Lifecycle | Role |
|---|---|---|
| `lab/` | persistent | long-running hot-reload workshop; one host, swappable game DLL |
| `bench/<name>/` | one-shot | perf measurement; runs to completion, prints timings |
| `tests/<slug>/` | one-shot | correctness check; diffs actual vs expected |
| `scratch/<name>/` | throwaway | "I want to try a thing" |
| `profiles/` | output | Spall traces dropped here; gitignored |

`lab/` is the workshop you stay in. The others are isolated programs you
fire off, get an answer, move on.
