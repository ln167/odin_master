# Claim-verification harness — design

**Status:** Phases 0–4 built. Kinds: `compiles`/`fails`/`panics`/`output`/`equiv`/`faster`/`test`/`test-fails`. Phase 4 (lessons-as-claims) swept all 29 Odin lessons (2026-06-08); added `panics` (build-ok-then-crash), `test` (`odin test .`), whole-dir (`.`) builds, a `<...>` output wildcard, UTF-8 capture, and guards against vacuous/linker-on-stdout false passes. Post-sweep (2026-06-08): per-claim `flags.txt` (splices `-define:`/`-target:` into the build), the `test-fails` kind (suite must fail), and a `doctor` lesson↔claim drift check (orphan + `solution` expected-output byte-match) — which immediately caught a real lesson-15 buffering-order drift. · **Date:** 2026-06-07 (rev 2026-06-08)

## Thesis

One harness verifies **claims**. A claim is `witness program(s) + an assertion`. The
output-diff path (today's `verify`) and the timing path (today's `bench`) stop being
separate tools and become two **assertion backends** of the same runner. This is the
CLAUDE.md *pipeline* idea — stable I/O contract, interchangeable technique, benchmarked
variant-against-variant — mechanized.

Three sources feed the same harness, identically:
1. **Lessons** — a claim materialized from a lesson's runnable example.
2. **Code/pipeline variants** — A vs B comparisons.
3. **The assistant's own in-chat claims** — before asserting "do X, it's faster / it
   compiles / it prints Y," the assistant encodes it as a claim, runs it, and reports the
   verdict. This is a **workflow norm**, not enforced by a shell tool (like the existing
   two-outputs rule).

Every verdict must be **hermetic** (pinned toolchain, no network/clock/RNG/env leakage)
and **deterministic** (same inputs → same verdict). Perf verdicts are **orderings/ratios
with a margin**, never absolute milliseconds.

## The honest ceiling (accepted)

Measured run-to-run noise on this box is ~8% (the bresenham example swung 1.04–1.20×
across 5 runs). **Sub-1.3× "one fewer op" wins are below the noise floor and return
`INCONCLUSIVE`, not a pass.** The harness certifies algorithmic wins (k ≥ 1.5)
deterministically and *refuses* micro-wins rather than fake them. No per-machine
affinity-pinning or turbo-disabling (non-reproducible, against the grain). When the
assistant's claim is unresolvable, the assistant must **not** assert the speedup as proven.

## The claim atom

A claim is a **directory** holding witness `.odin` file(s) plus **one declaration line** —
no YAML/TOML, no operator grammar; parseable by `line.split()`. Six leaf kinds:

| Kind | Witnesses | Passes iff |
|---|---|---|
| `output` *(implicit)* | `main.odin` + `expected.txt` | run, normalized stdout == expected |
| `compiles main.odin` | one file | `odin build` exits 0 |
| `fails main.odin [substr]` | one file | build exits ≠ 0 (and `substr` in path/line-col-normalized stderr) |
| `equiv` | `variant.odin` (procs `variant_A`/`variant_B`) | build dir once (generated dispatcher), run each variant, both exit 0 and normalized stdout equal |
| `faster [k]` | `variant.odin` (procs `variant_A`/`variant_B` → u64) | B is ≥ k× faster than A (ratio = minA/minB ≥ k in both batches) under the perf protocol; else FAIL or INCONCLUSIVE. k defaults to 1.5 |
| *composite* *(unbuilt)* | fused `variant.odin` | **convention:** an `equiv` line **and** a `faster k` line in one dir — built once, asserted twice. No `AND` parser. |

The two variants are conventionally `variant_A`/`variant_B` in `variant.odin`, so the
claim line needs **no args** — `equiv` alone. (The earlier `equiv A B` grammar was
dropped once the procs were given fixed names.)

`output` is **implicit**: a dir with `main.odin`+`expected.txt` and no claim line *is* an
`output` claim, so all 11 existing `tests/<name>/` dirs are valid claims with **zero
edits**. New variant claims live in `claims/<name>/`; ad-hoc claims in `build/.adhoc/<ts>/`.

The runner's in-memory record is flat: `{dir, kind, witnesses:[paths], expected?, err_substr?, k?}`.

## Architecture

`tools/substrate/claim.py`, grown from the existing `verify_all.py` (its pool + rstrip-diff
spine is kept). The defining decision is the **per-claim mono-binary** for variant claims:
a claim's two variants are authored as named procs `variant_A` / `variant_B` in **one**
`package main`, plus a generated `switch os.args[1]` dispatcher. This co-compiles in a
single `odin build` and dispatches at runtime (**verified building + dispatching on this
box**). The generated dispatcher (`gen_dispatch.odin` — Odin forbids a leading `_` in
package filenames) prints `fmt.println(variant_X())`, so `equiv` runs the single fused
binary **twice** — once per variant, each its own OS process — and compares the
**normalized stdout** of each run. Two separate process invocations mean there is no
shared OS stdout handle to race. (`-out:.bin` yields `.bin` here, not `.bin.exe`; the
runner probes both.) Phase 3 `faster` will instead time the procs *in-process* within one
run — that is where the single-runtime fusion earns its keep.

Rivals rejected, each on a verified-fatal fact:
- **Persistent DLL claim-host** — each `-build-mode:dll` witness links its *own* Odin
  runtime, so the host cannot capture per-witness stdout in-process and allocator ownership
  is ambiguous. The in-process-timing *intent* survives via the single-runtime mono-binary.
- **All-witnesses mono-binary** — 14 witnesses each define `main`; symbols collide. Only
  *one claim's two variants* are ever fused.
- **Declarative `claim.yaml`** — YAML for 3-line files is anti-KISS; rejected. Directory +
  one keyword line replaces it.
- **Comment `@assert` micro-DSL** — a framework seed; rejected for the keyword line.

## Assertion backends

Six small pure functions over `(exit_code, stdout, stderr)`; dispatch is
`BACKENDS[kind](dir, witnesses, params)`. `verify` and `bench` are two of the six.

- `compiles` / `fails` — `odin build -file -o:none`; build-only, never run.
  `fails` checks exit ≠ 0 and (optional) a substring in **path/line-col-normalized** stderr.
  Negative-compile testing is **net-new** — the repo has no such capability today.
- `output` — today's `verify_all` body verbatim (`odin run`, normalize, ==). The `verify` path.
- `equiv` — write the generated dispatcher, build the dir `-o:none` once, run the binary
  with arg `A` then `B`, compare normalized stdout. **Both runs must exit 0** — a build
  failure or a runtime crash is FAIL, never a vacuous empty-equals-empty PASS (the exit-code
  guard is what prevents that, since both crash to empty stdout). Scoped to
  **refactor-equivalence** ("this change altered nothing"), *not* "two different algorithms
  are abstractly equal". The variants **must be deterministic**; the harness has no
  determinism guard by design (per the minimal-code rule), so a nondeterministic witness is
  user error, not a harness bug.
- `faster` — write the generated timing dispatcher, build the fused witness `-o:speed`
  once, run the perf protocol, apply the tri-state verdict. The `bench` path. **Witness
  contract:** `variant_A`/`variant_B :: proc() -> u64` returning a value that genuinely
  *depends on doing the work* — the dispatcher folds every return into a printed rolling-hash
  sink, which defeats dead-code elimination only for work whose result is observed. A variant
  that discards its work and returns a constant is DCE'd to 0 ns and correctly caught as
  INCONCLUSIVE (too fast), never a false PASS. Size kernels above the ~100 ns timer floor
  (tens of µs+) for a stable verdict; sub-µs kernels read INCONCLUSIVE. Two genuinely-identical
  kernels at k>noise may land on FAIL or INCONCLUSIVE run-to-run (the batches can disagree on
  ordering) — both are honest non-PASS answers. *(`min(B) ≥ k·min(A)` in the original table was
  ambiguous; as built it is ratio = minA/minB ≥ k, i.e. B's time is k× smaller.)*
- *composite* — convention only (two leaf lines sharing witnesses).

A new kind = one function + one switch arm.

## Compile + parallelization plan

Measured on this box (3-run medians): `odin build -file -o:none` ≈ **230 ms**;
`-o:speed` ≈ **1100 ms** (~4.7×). No Odin cross-build cache exists. (`-linker:radlink` was
tried and **removed** — no measured gain, and an older test suggested it was slower; the
default linker is used everywhere.)

1. **Separate build from run** so one artifact feeds both equiv and faster without rebuild,
   and compiles/fails never execute.
2. **Flags:** correctness backends (`compiles`/`fails`/`output`/`equiv`) build
   `-o:none` (~230 ms, default linker). **Only `faster` builds `-o:speed`** — codegen
   quality *is* the claim. Never `-debug` in the harness.
3. **Cap the compile pool at 4 workers** (the measured 11-wide → 1.6× contention ceiling
   means more workers buy nothing; the compiler is already internally multithreaded). This
   also fixes today's unbounded `verify_all.py`.
4. **Serialize timing:** all `faster` runs execute after every build completes, one at a
   time, so a timed witness never races a sibling 1100 ms compile.
5. **No cache** (none exists). The lever is fewer/cheaper builds (fuse A+B into one build;
   `-o:none` for correctness), not caching.
6. **One Python process per suite run** (43 ms startup paid once); never python-per-claim.

Estimates: full suite (~50 claims) ~8–12 s cold, build-bound. **Ad-hoc correctness claim
< 0.5 s.** Ad-hoc perf pair ~1.5–2.5 s (two `-o:speed` builds, can overlap; runs serial).

## Deterministic perf protocol (`faster`)

In-process timing inside the mono-binary (process-level would bury a microbench under the
~350 ms fixed `odin run` cost). The fused witness times only the variant proc.

- **Warmup:** discard the first 3 calls per variant.
- **Samples:** N = 15 **interleaved** rounds (one A then one B, back-to-back) so
  frequency/SMT drift hits both near-equally and cancels in the ratio. Bump to 50 if a
  single call is sub-microsecond.
- **Statistic:** **min-of-N** per variant (OS noise only adds time, so the min is closest
  to the unperturbed cost). Median available as a fallback for data-dependent-branch kernels.
- **DCE sink (load-bearing):** the variant contract is `variant :: proc() -> u64`; the
  dispatcher sums the returned sink and the harness prints it, so `-o:speed` cannot
  dead-code-eliminate an unobserved kernel into a bogus "infinitely faster" pass. (The
  existing `bench.odin` `proc()` has no sink and is inadequate as-is.)
- **Verdict:** PASS iff `min(B) ≥ k·min(A)` **and** the ordering holds across two
  independent interleaved batches. Default **k = 1.5**.
- **INCONCLUSIVE** (distinct nonzero exit) when: the two batches disagree on ordering; or
  the ratio lands in the noise band `[1/1.15, 1.15]` while claimed k is below it; or
  per-variant `max/min > 2.0` (machine too noisy this run). The assistant treats
  INCONCLUSIVE as "do not assert the speed claim."
- **No** affinity-pinning or turbo-disabling. Only the A/B ratio appears in a verdict.

## Hermeticity + determinism

- **Toolchain pin:** a root `.odin-version` already exists holding `dev-2026-04` (month
  granularity — the audit was wrong that it's absent). The runner asserts `odin version`
  **contains** it and hard-fails on drift, so it respects whatever granularity the file
  holds; tighten to the full `…-nightly:a896fb2` commit for reproducible `fails`-message
  verdicts. `check-odin-version` now actually verifies (was: just `cat`).
- **One shared `normalize()`** — adopt lessons-check's per-line `trim_right` + strip
  trailing newlines as the single definition, retiring `verify_all.py`'s rstrip-only
  divergence so lesson and `tests/` corpora agree on equality.
- `fails`-substring matching is inherently coupled to the pinned nightly's wording; the
  full-hash pin makes "why a re-bless is needed after an `odin upgrade`" explicit.

## Reused vs net-new

Net-new is **one Python file (~235 LOC)** + a **~20-LOC Odin dispatcher template**:
keyword parser (~25), six backends (~110), capped-pool + serialize-timing driver (~30),
`.odin-version` guard (~10), ad-hoc temp-dir writer (~30). **Reuses:** verify_all.py's
pool + diff spine, lessons-check's `extract_first_odin_block` + `normalize`, bench.odin's
min/median math (with warmup/interleave/DCE-sink fixes — giving the unused sampler a
purpose), the `bench/` A-vs-B convention, and `just verify`/`just bench` as thin aliases.
No daemon, no cache, no DLL host, no config format, no codegen-frontend.

## Phasing (value-first; defer the contested part)

0. **`.odin-version` pin + fix `check-odin-version` + cap pool to 4.** ~15 LOC, ships today.
1. **`compiles` + `fails` + the keyword parser** + the single shared `normalize()`.
   Deterministic, no runtime/timing/fusion. Delivers net-new negative-compile tests.
   Existing `tests/` dirs keep passing as implicit `output`. `just verify` aliases through.
2. **`equiv` + fused-witness build — BUILT (2026-06-08).** Generated dispatcher
   (`gen_dispatch.odin`), dir-build once, run A/B, compare normalized stdout, exit-code
   guarded. Adversarially tested with 10 isolated probes (build-fail, side-effect divergence,
   non-determinism, int/float format, trailing whitespace, unicode, void/multi return,
   vacuous `os.exit`, stale-rebuild) — all verdicts correct, no false PASS/FAIL, no crashes.
   Deterministic, no timing. (`just claim <name>` runs any named dir under `tests/`/`claims/`;
   the `build/.adhoc/` ad-hoc home remains unbuilt — names resolve under `tests/`/`claims/` only.)
3. **`faster` + the full perf protocol — BUILT (2026-06-08).** Fused
   `variant_A`/`variant_B :: proc() -> u64`, generated timing dispatcher (3 warmup, 15
   interleaved A/B rounds, two batches, min-of-N + max per variant), built `-o:speed`.
   Rolling-hash sink (printed) defeats DCE. Tri-state verdict PASS / FAIL / INCONCLUSIVE
   (exit 0/1/2); INCONCLUSIVE fires on min==0 (too fast), max/min>2.0 (noisy), batch
   ordering-disagreement, or sub-noise k. Adversarially tested with 8 isolated probes
   (DCE-constant-return, direction/sign, u64 overflow-trap, data-dependent noise, sub-µs
   overhead, real-win stability ×10, bad-k parsing, FAIL-vs-INCONC boundary) — all verdicts
   correct, no false PASS/FAIL, no crashes/traps. Example `claims/example-faster` (linear vs
   binary search, ~10× win, stable PASS). Multi-metric programs (`grid-vs-svo`) stay as
   `just bench`.
4. **Lessons-as-claims** (reuse the extractor), only if wanted; no fence-tag DSL.

## Non-goals

Conceptual prose claims (the largest bucket in the lessons) are **not** mechanically
verifiable and are out of scope for this harness. Multi-metric benches stay as human-read
profiling programs. The harness never certifies sub-1.3× wins on this hardware. "Green"
reports coverage, never "everything is correct."

## Open decisions (confirm during review)

- **normalize() reconciliation** — adopting the stricter shared `normalize` changes
  `verify_all.py`'s current rstrip-only semantics for `tests/` (verified no whitespace-
  sensitive fixtures exist, so low risk). OK to proceed, or keep them separate?
- **`fails` substring** — keep optional substring matching (version-coupled), or default to
  exit-code-only to avoid wording brittleness across nightlies?
- **Ad-hoc dir home** — `build/.adhoc/` (LLM-writable, not `scratch/`). **Still unbuilt** —
  `claim.py` resolves a claim name under `tests/`/`claims/` only; nothing reads `build/.adhoc/`.
- **Composite** — confirmed as a no-DSL convention (two leaf lines), not an `AND` combinator.
- **`equiv` witness shape — RESOLVED (built 2026-06-08).** Claim line is bare `equiv`; the
  two variants are fixed-name procs `variant_A`/`variant_B` in `variant.odin`; the dispatcher
  is generated as `gen_dispatch.odin` (a leading `_` is illegal in Odin package files); the
  built artifact is `.bin` here (runner probes `.bin` then `.bin.exe`). Trailing-whitespace
  insensitivity is inherited from the shared `normalize` and accepted as-is.
