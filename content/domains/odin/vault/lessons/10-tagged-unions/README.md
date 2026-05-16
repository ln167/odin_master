# Lesson 10 — tagged unions

## Concept
A `union { A, B, C }` is a discriminated (tagged) sum type. The value at
runtime is either one of the named variants or `nil`. The active variant
is interrogated with `switch v in val { case A: …; case nil: … }` or with
type assertions: `a, ok := val.(A)`.

## Setup
1. `cd content/domains/odin/vault/lessons/10-tagged-unions`
2. Open `main.odin`.

## Do this
Type:

```odin
package main

import "core:fmt"

Circle   :: struct { r: f32 }
Square   :: struct { side: f32 }
Triangle :: struct { base, height: f32 }

Shape :: union {
    Circle,
    Square,
    Triangle,
}

area :: proc(s: Shape) -> f32 {
    switch v in s {
    case Circle:   return 3.14159 * v.r * v.r
    case Square:   return v.side * v.side
    case Triangle: return 0.5 * v.base * v.height
    case:          return 0   // nil
    }
}

main :: proc() {
    shapes := [3]Shape{
        Circle{r = 2},
        Square{side = 3},
        Triangle{base = 4, height = 5},
    }
    for sh in shapes {
        fmt.printfln("area = %.3f  (variant: %v)", area(sh), sh)
    }

    // Safe extraction with the optional-ok form.
    s: Shape = Circle{r = 7}
    if c, ok := s.(Circle); ok {
        fmt.printfln("it was a Circle with r=%.1f", c.r)
    }

    // Default variant is nil.
    none: Shape
    fmt.println("none == nil ->", none == nil, " area:", area(none))
}
```

## Now do this
1. `:w`
2. `odin run main.odin -file`

3. **You should see:**

       area = 12.566  (variant: Circle{r = 2})
       area = 9.000  (variant: Square{side = 3})
       area = 10.000  (variant: Triangle{base = 4, height = 5})
       it was a Circle with r=7.0
       none == nil -> true  area: 0

## What just happened
- `Shape :: union { Circle, Square, Triangle }` gives `Shape` a hidden
  discriminant (the *tag*) plus enough storage for the largest variant.
- `switch v in s` is the type-switch: each `case Circle:` rebinds `v` to
  the `Circle` payload (no manual cast).
- The plain `case:` arm catches `nil`. If you cover every named variant
  Odin still requires either a `case:` or `case nil:` for the nil state
  — *unless* you use `#partial switch`, which says "I know I'm not
  handling everything; don't warn me".
- `s.(Circle)` returns `(Circle, bool)` (or panics with the single-result
  form). Always prefer the `, ok` form when in doubt.

## Low-level interlude
A union's size is `max(sizeof(variant)) + tag` (with alignment padding).
For `Shape` above: largest variant is `Triangle` (8 bytes: two `f32`s),
plus a tag byte/word, plus padding — likely 16 bytes total on 64-bit.

The tag is *not* free. If you have a 1-million-element `[1_000_000]Shape`,
each element pays the discriminant, even ones that don't need it. For
hot inner loops, consider parallel arrays per variant or a struct with a
`kind: enum` field.

You can opt out of the nil state with `union #no_nil { … }` — the first
variant becomes the default. Saves nothing in size, but lets the compiler
prove your switches are total.

## Now break it
1. Drop the `case:` arm. The compiler insists on completeness — read the
   error.
2. Replace `switch v in s` with `#partial switch v in s` and remove a
   `case`. Compiles. At runtime, the missing variant simply falls through
   the switch with no work done.
3. Do `c := s.(Square)` when `s` holds a `Circle`. Single-result type
   asserts panic on mismatch. Switch to `c, ok := s.(Square)` and check
   `ok` instead.

## Find more like this
    just substrate-search --bm25 "tagged union" --top 5
    just substrate-search --bm25 "type switch" --top 5
    just substrate-search --bm25 "no_nil shared_nil" --top 5

## Next: `content/domains/odin/vault/lessons/11-error-handling-or-return/`
