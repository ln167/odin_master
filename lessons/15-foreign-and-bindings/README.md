# Lesson 15 — foreign and C bindings  *(stub)*

## Concept
`foreign import` declares an external library. Inside a `foreign` block
you list the prototypes. Odin handles the C ABI; you use `cstring` /
`rawptr` / `^T` to match C types.

## TODO
- [ ] Bind `puts` from libc: minimal, zero-dependency.
- [ ] Show `cstring` (NUL-terminated) vs Odin `string` (length-tagged).
- [ ] `link_name` for renamed symbols.
- [ ] Low-level interlude: ABI matching, calling convention, why
      `cstring` isn't free to convert.

## Find more like this
    odin-search "foreign import" --top 5
    odin-search "binding to c" --top 5

## Next: `lessons/16-when-and-build-flags/`
