# Lesson 02 — types and printing

## Concept
Odin's built-in scalar types, variable declarations (`:=` vs `: T =`), and
the difference between `fmt.println` and `fmt.printf`.

## Setup
1. `cd lessons/02-types-and-printing`
2. Open `main.odin`.

## Do this
Type:

```odin
package main

import "core:fmt"

main :: proc() {
    a := 42                  // inferred: int
    b: f32 = 3.14            // explicit: 32-bit float
    c := "ok"                // string (immutable, length-tagged)
    d: bool = true

    fmt.println(a, b, c, d)
    fmt.printf("a=%d  b=%.2f  c=%q  d=%v\n", a, b, c, d)
}
```

## Now do this
1. `:w`
2. `odin run main.odin -file`

3. **You should see:**

       42 3.14 ok true
       a=42  b=3.14  c="ok"  d=true

## What just happened
- `:=` infers the type from the right-hand side. `:= 42` gives you `int`.
- `: f32 = 3.14` is the explicit form when the literal is ambiguous or
  you want a non-default type (default float is `f64`).
- `fmt.println` separates args with one space and adds a newline.
- `fmt.printf` is C-style. `%v` is "any value, default formatting" — the
  workhorse verb. `%q` quotes strings.

## Low-level interlude
- `int` is platform-pointer-sized (`i64` on 64-bit). For a fixed width
  use `i32`, `u8`, `i64`, `u32`, etc.
- `string` is **two words**: a pointer + length. It does NOT own its
  bytes — the literal `"ok"` lives in read-only memory. We'll see what
  happens when you need to *build* a string in lesson 04.
- `bool` is one byte. The compiler still aligns it inside structs.

## Now break it
1. Change `b: f32 = 3.14` to `b: i32 = 3.14`. The compiler refuses —
   read the error.
2. Try `fmt.printf("%d\n", "hello")`. The error tells you exactly which
   verb mismatched which arg.

## Find more like this
    odin-search "fmt.printf verbs" --top 5
    odin-search "type inference" --top 5

## Next: `lessons/03-procedures-and-multiple-returns/`
