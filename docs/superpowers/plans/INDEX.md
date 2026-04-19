# Implementation plans — odin_master template

Ordered for incremental commitment: build the foundation, verify it, then expand the next plan into full detail before implementing.

## Strategy

Per the user's stated approach: only **Plan 1** is fully detailed at the time of writing. Plans 2–8 are short outlines describing scope, dependencies, files-touched, and acceptance criteria — enough to commit to a decomposition without over-investing in detail that may shift once Plan 1 lands and surfaces real constraints.

When the time comes to start Plan N, expand its outline file into a full TDD-style task-by-task plan (using the `superpowers:writing-plans` skill) by replacing the OUTLINE block with the same structure Plan 1 uses.

## Order

```
   ┌─────────────────────────┐
   │  Plan 1 — Foundation    │   (full detail)
   └────────────┬────────────┘
                │
   ┌────────────┼─────────────────────────────┐
   │            │                             │
   ▼            ▼                             ▼
┌────────┐  ┌────────┐  ┌────────────────┐  ┌─────────────────────────┐
│ Plan 2 │  │ Plan 3 │  │ Plan 4         │  │ Plan 5                  │
│Indexer │  │Search  │  │Hot-reload tmpl │  │Playground + instrument  │
└───┬────┘  └───┬────┘  └────────┬───────┘  └─────────┬───────────────┘
    │           │                │                    │
    └─────┬─────┘                │                    │
          │                      │                    │
          ▼                      ▼                    ▼
     (used by)              ┌──────────────────────────────────────┐
          │                 │ Plan 6 — Editor + remaining CLI subs │
          ▼                 └──────────────┬───────────────────────┘
   ┌─────────────────┐                     │
   │ Plan 8 — End-to-end integration │ ◄──┤
   └─────────────────┘                     │
                                           ▼
                                ┌──────────────────────────┐
                                │ Plan 7 — CI matrix       │
                                └──────────────────────────┘
```

## Plans

| # | Status | Plan | Depends on |
|---|---|---|---|
| 1 | **FULL** | [Foundation: repo skeleton + CLI shells](2026-04-19-plan-1-foundation.md) | — |
| 2 | SHIPPED | [Indexer (Python cold-path)](2026-04-19-plan-2-indexer.md) | 1 |
| 3 | SHIPPED | [Search CLI (Rust hot-path)](2026-04-19-plan-3-search-cli.md) | 1 |
| 4 | SHIPPED | [Hot-reload template](2026-04-19-plan-4-hot-reload-template.md) | 1 |
| 5 | SHIPPED | [Playground + instrumentation library](2026-04-19-plan-5-playground-instrumentation.md) | 1 |
| 6 | SHIPPED | [Editor wiring + remaining odin-master subcommands](2026-04-19-plan-6-editor-and-cli-subcommands.md) | 1, 5 |
| 7 | SHIPPED | [CI matrix + cross-platform validation](2026-04-19-plan-7-ci-matrix.md) | 2, 3, 4, 5, 6 |
| 8 | SHIPPED | [Default corpus + end-to-end integration](2026-04-19-plan-8-default-corpus-integration.md) | 1, 2, 3, 6 |

## Coding principles (apply to every plan)

This is a solo project; the user is the only reader. Optimize for **comprehension on cold-read**, not enterprise robustness.

- **No defensive error handling.** Validate at real boundaries (CLI args from the user, files at known interfaces). Trust internal calls. No `try/except` wrappers for things that can't actually fail in practice. No `Result<T, E>` ceremony in Rust where a `panic!` or `expect("...")` is the honest answer.
- **Use Odin's terse error sugar where applicable.** `or_return`, `or_else`, `or_break`, `or_continue` over multi-line `if err != nil` blocks. Example: `data := os.read_entire_file(path) or_return`.
- **Comments are 1–2 lines, only when the *why* isn't obvious from the code.** Section headers in larger files are fine. No multi-paragraph docstrings, no TSDoc/Sphinx ceremony.
- **No abstraction-for-its-own-sake.** Three similar lines beats a clever generic helper. No factories, no strategy patterns, no "for future flexibility."
- **No backwards-compat shims, feature flags, or migration paths.** When something changes, change it everywhere and move on.
- **Validation:** only at system boundaries (user CLI input, manifest YAML, settings.toml — things written by humans). Internal data is trusted.

When expanding Plans 2–8, default to the **leanest code that passes the test gates**. If a draft starts to feel "production-y", strip it.

## How to use this

1. Implement Plan 1 fully, run all its test gates locally, commit.
2. Pick the next outline you want to take on (Plans 2, 3, 4, 5 are all unblocked after Plan 1).
3. Re-invoke the `superpowers:writing-plans` skill against that outline + the spec **and these coding principles** to expand it into full TDD detail.
4. Implement, verify, commit.
5. Repeat. Save Plans 6, 7, 8 for last since they depend on the others.
