# Lesson 11 — error handling with `or_return` / `or_else`  *(stub)*

## Concept
Odin doesn't have exceptions. Procs return `(value, err)` pairs.
`or_return` propagates the error early; `or_else` provides a default.

## TODO
- [ ] `data, err := os.read_entire_file(path); if err != nil { … }`
- [ ] Refactor with `data := os.read_entire_file(path) or_return`.
- [ ] Show `n := strconv.parse_int(s) or_else 0` for the default form.
- [ ] Low-level interlude: it's just an early return — no exception
      tables, no stack unwinding.

## Find more like this
    odin-search "or_return" --top 5
    odin-search "error handling" --top 5

## Next: `lessons/12-structs-and-soa/`
