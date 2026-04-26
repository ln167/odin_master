# Lesson 16 — `when` and build flags  *(stub)*

## Concept
`when` is the compile-time `if`. Branches that don't match are *not
compiled*. `ODIN_OS`, `ODIN_ARCH`, `ODIN_DEBUG` are built-in constants.
Custom flags via `odin run -define:NAME=value`.

## TODO
- [ ] `when ODIN_OS == .Windows { … } else when ODIN_OS == .Linux { … }`.
- [ ] Define a custom flag and read it inside `when`.
- [ ] Low-level interlude: `when` vs `if` — generated code is exactly
      one branch.

## Find more like this
    odin-search "when statement" --top 5
    odin-search "ODIN_OS" --top 5

## Next: `lessons/17-testing-with-core-testing/`
