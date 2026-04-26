# Lesson 10 — tagged unions  *(stub)*

## Concept
`union { A, B, C }` is a type-safe tagged union. The current variant is
queried with `switch v in val { case A: …; case B: … }`. The default
variant is `nil`.

## TODO
- [ ] Define `Shape :: union { Circle, Square, Triangle }`.
- [ ] `switch v in shape { case Circle: …; case nil: … }`.
- [ ] Show `_, ok := shape.(Circle)` for safe extraction.
- [ ] Low-level interlude: the discriminant tag, layout, why this isn't
      free (some space cost vs raw `struct`).
- [ ] Break it: forget a case and use `#partial switch` vs full switch.

## Find more like this
    odin-search "tagged union" --top 5
    odin-search "switch in" --top 5

## Next: `lessons/11-error-handling-or-return/`
