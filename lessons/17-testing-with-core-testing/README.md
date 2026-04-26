# Lesson 17 — testing with `core:testing`  *(stub)*

## Concept
A test is `@(test) name :: proc(t: ^testing.T)`. Run with `odin test .`
in a package directory. `testing.expect`, `testing.expectf` are the
assertions.

## TODO
- [ ] Write a tiny pure proc + a test that exercises 3 cases.
- [ ] Run `odin test .` and read the output format.
- [ ] Show table-driven tests with `for case in cases { ... }`.

## Find more like this
    odin-search "core:testing" --top 5

## Next: `lessons/18-hot-reload-tour/`
