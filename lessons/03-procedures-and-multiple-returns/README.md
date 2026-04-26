# Lesson 03 — procedures and multiple returns

## Concept
Procedures are values declared with `name :: proc(args) -> returns { … }`.
Odin lets you return more than one value, and lets you *name* return values
(which doubles as documentation).

## Setup
1. `cd lessons/03-procedures-and-multiple-returns`
2. Open `main.odin`.

## Do this
Type:

```odin
package main

import "core:fmt"

// One return.
square :: proc(x: int) -> int {
    return x * x
}

// Two returns. Caller can ignore the second with `_`.
divmod :: proc(a, b: int) -> (q: int, r: int) {
    q = a / b
    r = a %% b   // Odin's signed-safe modulo
    return       // bare return uses named values
}

main :: proc() {
    fmt.println(square(7))

    q, r := divmod(17, 5)
    fmt.printf("17 / 5 = %d rem %d\n", q, r)

    only_q, _ := divmod(20, 6)
    fmt.println("20 / 6 ->", only_q)
}
```

## Now do this
1. `:w`
2. `odin run main.odin -file`

3. **You should see:**

       49
       17 / 5 = 3 rem 2
       20 / 6 -> 3

## What just happened
- `proc(a, b: int)` is the same as `proc(a: int, b: int)` — adjacent args
  share a type.
- Named returns (`q: int, r: int`) double as zero-initialized locals
  inside the body, so `return` with no args works.
- `%%` is Odin's "real modulo" — for negative `a`, `a % b` and `a %% b`
  differ. `%%` returns a non-negative result when `b > 0`.

## Low-level interlude
Multiple returns aren't magic — they're just multiple values placed in
registers (or stack) per the calling convention. There's no allocation
and no tuple object on the heap. `q, r := divmod(...)` is a structured
binding, decided at compile time.

## Now break it
1. Drop `_` and write `only_q := divmod(20, 6)`. Read the error — Odin
   refuses to silently discard return values.
2. Change `return` (bare) to `return q`. The compiler tells you about
   missing values for named returns.

## Find more like this
    odin-search "multiple return values" --top 5
    odin-search "or_return" --top 5

## Next: `lessons/04-strings-and-runes/`
