# Lesson 13 — procedures as values

## Concept
A `proc` is a first-class value. You can store it in a variable, pass it
into another proc, or stash it in a struct field — that's how callbacks
and (manual) vtables work in Odin.

## Setup
1. `cd content/domains/odin/vault/content/domains/odin/vault/lessons/13-procedures-as-values`
2. Open `main.odin`.

## Do this
Type:

```odin
package main

import "core:fmt"

Binop :: proc(a, b: int) -> int

add :: proc(a, b: int) -> int { return a + b }
sub :: proc(a, b: int) -> int { return a - b }
mul :: proc(a, b: int) -> int { return a * b }

apply :: proc(f: Binop, x, y: int) -> int {
    return f(x, y)
}

main :: proc() {
    // Procs are values.
    op: Binop = add
    fmt.println("add(3,4) =", op(3, 4))

    op = mul
    fmt.println("mul(3,4) =", op(3, 4))

    // A literal proc value, passed inline.
    fmt.println("inline div =", apply(proc(a, b: int) -> int { return a / b }, 20, 5))

    // A tiny dispatch table indexed by an enum.
    Op :: enum { Add, Sub, Mul }
    table := [Op]Binop{ .Add = add, .Sub = sub, .Mul = mul }

    for kind in Op {
        fmt.printfln("%v(8,3) = %d", kind, table[kind](8, 3))
    }

    // Procs in structs: callbacks.
    Button :: struct {
        label:   string,
        on_click: proc(label: string),
    }

    b := Button{
        label = "save",
        on_click = proc(label: string) { fmt.println("clicked:", label) },
    }
    b.on_click(b.label)
}
```

## Now do this
1. `:w`
2. `odin run main.odin -file`

3. **You should see:**

       add(3,4) = 7
       mul(3,4) = 12
       inline div = 4
       Add(8,3) = 11
       Sub(8,3) = 5
       Mul(8,3) = 24
       clicked: save

## What just happened
- `Binop :: proc(a, b: int) -> int` is a *type alias* for "any proc with
  this signature". Variables of type `Binop` accept `add`, `sub`, `mul`
  — anything matching.
- `[Op]Binop{…}` is an enumerated array — one slot per enum value, type-
  safe, no manual indexing.
- The struct field `on_click: proc(label: string)` is a procedure value
  stored alongside data — the C-with-extras way to do behavior without
  an OOP runtime.

## Low-level interlude
A proc value is just a function pointer (8 bytes on 64-bit). Calling
`f(x, y)` through it is one indirect call: the CPU loads the pointer,
branches to the target. Modern branch predictors handle steady call
sites well; the cost is real for cold/random dispatch but typically
negligible for the patterns above.

There are no closures here. The inline `proc(a, b: int) -> int { … }`
is a top-level proc the compiler hoists out — it can't capture locals
from `main`. If you need state, pass it explicitly (a `^Self` first
parameter is the common shape) or use a struct that bundles the state
with the proc pointer.

## Now break it
1. Add `div :: proc(a, b, c: int) -> int { return a/b/c }` and try
   `op = div`. The compiler refuses — signatures must match exactly.
2. Call `b.on_click` *after* setting it to `nil`:
   ```odin
   b.on_click = nil
   b.on_click(b.label)
   ```
   You'll get a null-pointer call at runtime. Always check before
   invoking optional callbacks: `if b.on_click != nil { b.on_click(...) }`.
3. Replace the enumerated array with `table := map[string]Binop{...}`
   and dispatch by name. Notice the cost: a hash + equality + indirect
   call vs. a direct array index + indirect call.

## Find more like this
    just substrate-search --bm25 "procedure value" --top 5
    just substrate-search --bm25 "callback" --top 5
    just substrate-search --bm25 "enumerated array" --top 5

## Next: `content/domains/odin/vault/lessons/14-parametric-polymorphism/`
