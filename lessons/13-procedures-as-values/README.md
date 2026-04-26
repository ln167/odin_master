# Lesson 13 — procedures as values  *(stub)*

## Concept
`proc` is a first-class type. You can store one in a variable, pass it as
an argument, or stash it in a struct (callbacks, vtables).

## TODO
- [ ] `op: proc(a, b: int) -> int = proc(a, b: int) -> int { return a + b }`
- [ ] Pass it: `apply :: proc(f: proc(int, int) -> int, x, y: int) -> int`.
- [ ] Build a tiny dispatch table: `[3]proc(int) -> int`.
- [ ] Low-level interlude: function pointers are just pointers; an indirect
      call is one extra branch over a direct call.

## Find more like this
    odin-search "procedure value" --top 5
    odin-search "callback" --top 5

## Next: `lessons/14-parametric-polymorphism/`
