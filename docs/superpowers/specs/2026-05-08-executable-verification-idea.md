# Executable Verification — Idea Doc (Future)

- **Date:** 2026-05-08
- **Status:** IDEA only — not implemented, no plan committed yet.
- **Origin:** conversation thread on contradiction-noticing; the user observed that subjective claims (*"this is a bad idea"*) need experience to evaluate, but objective behavioral claims (*"X is faster than Y"*, *"this is the syntax"*, *"this function returns Z"*) can be verified by running code.
- **Related future-work:** the spec's "Open questions / future work" already lists "Executable validation extension"; this doc expands that bullet into a concept sketch.

## The two kinds of claims (the framing)

Every claim about code falls into one of two buckets:

| Kind | Example | Verifiable? |
|---|---|---|
| Subjective / experiential | "Don't use a linked list here, you'll regret it" | No — needs experience and context the substrate doesn't have |
| Objective / behavioral | "`make([]int, 0, 5)` allocates capacity 5", "this syntax compiles", "X completes faster than Y for N=1M" | **Yes** — write code, run it, compare output to claim |

The substrate today is text-on-text — every claim is asserted prose, with no empirical grounding. The wiki *appears* authoritative even when nothing in it has been run. That's the gap this idea closes.

## The core idea

An **isolated function-runner** that both the human (in an editor) and the agent (via CLI / skill) invoke through the *same primitive*. The same code path runs the same isolated function with the same inputs whether it's invoked by:

- The user hovering over a function in nvim and hitting `<leader>oV`
- The agent shelling out to `just verify <name>` from a Claude Code session
- CI / `just substrate-test` running the verification gold-set

Same primitive, same isolation, same output format. No drift between "what the user sees when they verify by hand" and "what the agent does when it claims something is true."

## What it gives the user

- **Bug isolation with minimal setup.** When something doesn't behave as expected, a one-keystroke "run this function alone with these inputs and show me the output" eliminates an entire class of debugging guesswork. The setup is once; the payoff is every subsequent bug.
- **Claims in the wiki get teeth.** Any claim about code behavior in `compiled/from-ingest/` or `compiled/from-query/` can link to a verification. `doctor` flags claim pages whose verification is `unverified`, `failed`, or `drifted` (verified once, source has changed since).
- **The agent can prove (or disprove) its own claims before stating them.** Behavioral discipline shift: when the LLM is about to assert "X behaves like Y", it runs the verification first. If the verification fails, the answer changes from "X behaves like Y" to "X *appears* to behave like Z, here's the evidence."
- **Contradictions become resolvable.** When two sources disagree on objective behavior, write a verification, run it, settle it. The contradictions queue stops being a permanent backlog of "TBD" entries.

## Sketch of how it would work

This is a sketch, not a design. Real design happens when this becomes a real project.

### Directory layout

```
playground/
├── bench/                    # already exists — perf benchmarks
│   └── <name>/
│       └── main.odin
├── profiles/                 # already exists — Spall traces
└── verifications/            # NEW — claim verifications
    └── <slug>/
        ├── main.odin         # isolated program exercising one claim
        ├── expected.txt      # expected output (or `expect` block in source)
        └── meta.yaml         # claim text, source page links, last-verified info
```

### justfile recipes

```just
# Run one verification, compare actual to expected, exit 0/1.
verify name:
    @cd playground/verifications/{{name}} && odin run . -file > .actual.txt
    @diff playground/verifications/{{name}}/expected.txt playground/verifications/{{name}}/.actual.txt

# Run all verifications; produce a summary.
verify-all:
    @python tools/substrate/verify.py

# Generate a verification stub for the function under cursor (called from nvim).
verify-stub file lineno:
    @python tools/substrate/verify-stub.py {{file}} {{lineno}}
```

### Editor integration (nvim)

Add `<leader>oV` to `tools/nvim/lua/odin_master/init.lua`. Picks up the function under cursor (via tree-sitter), checks if a verification exists at `playground/verifications/<package>__<func>/`, runs it if so, otherwise generates a stub and opens it for the user to fill in inputs.

Both the keymap and the agent's CLI invocation route through the same `verify-stub` and `verify` recipes — same primitive.

### Wiki integration (new page-type)

Add `claim.template.md` to `templates/page-types/`:

```yaml
---
title: <claim, one sentence>
type: claim
domain: <d>
tier: <1|2|3>
provenance: <from-ingest | from-query>
verified_by: playground/verifications/<slug>/
verification_status: <verified | failed | unverified | drift>
verified_at: <ISO timestamp or null>
verified_with: <odin version>
source_ids:
  - path: ...
    sha256: ...
compiled_at: ...
compiled_by: ...
status: draft
---
```

`doctor` extends with a check: if any compiled page has `type: claim`, its `verified_by` directory must exist, the verification must run, and `verification_status` must reflect actual current state (re-run via `just verify <slug>` to refresh).

### Skill integration

`knowledge-substrate-core` SKILL.md gains a new mandate: **before stating an objective behavioral claim, attempt to verify it**. If a verification exists, run it and cite the result. If none exists, optionally write one (and route the new page through Compile as `type: claim`). When verification fails, the answer must report the failure rather than restate the original claim.

## Integration with the existing benchmarking infrastructure

`playground/bench/` and `playground/profiles/` already exist for performance work. Verifications are the **correctness counterpart** to benchmarks. They share infrastructure:

- Same isolated-program model (`playground/<kind>/<name>/main.odin`).
- Same Spall instrumentation pattern (verifications can produce Spall traces too if useful).
- Same `tools/domains/odin/odin_lib/{bench, instrument, scratch}/` helpers.
- Same `just` invocation idiom (`just bench <name>` ↔ `just verify <name>`).

A perf claim ("X is faster than Y for N=1M") is a verification *and* a benchmark — same artifact, different output dimension. The two recipes can share the underlying program; one runs it for correctness, the other for timing.

## Open design questions (for when this becomes a real project)

1. **Expected-output format.** Plain-text diff is simplest but brittle for non-deterministic output. Alternatives: structured assertions in the program (`assert(x == 5)`), JSON-schema match, snapshot files.
2. **Input parameterization.** Hard-coded inputs in `main.odin` are simple but limited. Should verifications accept external test vectors (CSV / YAML)? Probably yes, eventually.
3. **What counts as "the function" for hover-and-run?** Pure functions are trivial; functions that touch global state, allocator, IO need a setup/teardown convention.
4. **Claim drift detection.** When the source code changes underneath a verification, is the claim still meaningful? Probably needs a SHA-256 of the *claim's referenced source range*, not just the file.
5. **Verification quality gates.** Should a `failed` verification block Compile? Or just flag the page as `verification_status: failed` and let the human decide? KISS would say flag-only; never block.
6. **Cross-language.** v1 is Odin-only. SDL3 / engines might be C/C++. Graphics might involve shader compilation. Each language needs its own runner; the abstraction needs to accommodate.

## What this is NOT

- Not a replacement for the substrate's existing structural validators (`doctor`).
- Not a substitute for a real test suite for application code (use Odin's `core:testing` for that).
- Not a contradiction-resolution oracle — it can resolve *behavioral* contradictions only. Subjective contradictions remain the human's call.
- Not a feature flag / scope creep into v1. **This is a future-idea doc; do not implement now.**

## When to revisit

Revisit this when one of:

1. The first time you run into a wiki claim that turns out to be wrong, and the cost of finding that out felt avoidable.
2. The first time the contradictions queue grows past ~10 entries and most of them are settle-able by running code.
3. When learning extends into graphics or SDL3 work where empirical "does this API actually behave like the docs claim" questions outnumber lookup questions.

Until then, the substrate stays text-on-text. This doc preserves the framing so future-you (or future-LLM) doesn't have to re-derive it.
