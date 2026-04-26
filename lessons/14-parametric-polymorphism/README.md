# Lesson 14 — parametric polymorphism  *(stub)*

## Concept
`proc($T: typeid)` is Odin's generics: the compiler monomorphizes one
copy of the proc per type used. No runtime cost, no boxing.

## TODO
- [ ] Write `min :: proc(a, b: $T) -> T where intrinsics.type_is_ordered(T)`.
- [ ] Use it for `int`, `f32`, `string`.
- [ ] Show `where` clauses constraining T.
- [ ] Low-level interlude: monomorphization vs C++ templates vs Go interfaces.

## Find more like this
    odin-search "parametric polymorphism" --top 5
    odin-search "where clause" --top 5

## Next: `lessons/15-foreign-and-bindings/`
