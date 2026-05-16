# Lesson 14 — parametric polymorphism

## Concept
Odin's generics are *monomorphized*: the compiler emits a fresh copy of
your procedure for each unique combination of type parameters. The
`$T: typeid` syntax declares `T` as a compile-time type. A `where`
clause on the proc or its type parameters constrains what counts as a
valid `T`.

No boxing. No vtable. No runtime cost vs. hand-written code per type.

## Setup
1. `cd content/domains/odin/vault/lessons/14-parametric-polymorphism`
2. Open `main.odin`.

## Do this
Type:

```odin
package main

import "core:fmt"
import "base:intrinsics"

// Implicit type parameter: $T is inferred from the call site.
// `where` constrains T to types `<` is defined on.
min_of :: proc(a, b: $T) -> T where intrinsics.type_is_ordered(T) {
    return a if a < b else b
}

// Explicit type parameter: pass `T` as an argument.
new_zero :: proc($T: typeid) -> ^T {
    p := new(T)
    p^ = T{}
    return p
}

// Polymorphic struct.
Pair :: struct($A, $B: typeid) {
    first:  A,
    second: B,
}

show :: proc(p: $P/Pair) {
    fmt.printfln("Pair{%v, %v}", p.first, p.second)
}

main :: proc() {
    fmt.println("min_of(3, 7) =", min_of(3, 7))
    fmt.println("min_of(2.5, 1.0) =", min_of(2.5, 1.0))
    fmt.println("min_of(\"alpha\", \"bravo\") =", min_of("alpha", "bravo"))

    pi := new_zero(int);   defer free(pi);   pi^ = 99
    pf := new_zero(f32);   defer free(pf);   pf^ = 3.14
    fmt.println("new_zero ints:", pi^, "floats:", pf^)

    p := Pair(string, int){first = "answer", second = 42}
    show(p)
}
```

## Now do this
1. `:w`
2. `odin run main.odin -file`

3. **You should see:**

       min_of(3, 7) = 3
       min_of(2.5, 1.0) = 1
       min_of("alpha", "bravo") = alpha
       new_zero ints: 99 floats: 3.14
       Pair{answer, 42}

## What just happened
- `min_of` is a single source-level definition, but the compiler emits
  three machine-code copies — one for `int`, one for `f64`, one for
  `string`. Each copy uses the right comparison instructions for its
  type.
- `where intrinsics.type_is_ordered(T)` rejects types where `<` doesn't
  make sense (booleans, pointers, complex numbers). The error happens
  at *call site*, not at template definition.
- `new_zero($T: typeid)` takes the type itself as a value; you call it
  as `new_zero(int)`. Useful when there's no value to infer from.
- `Pair($A, $B: typeid)` is a polymorphic struct. `Pair(string, int)`
  is a concrete type. `proc(p: $P/Pair)` accepts any specialization of
  `Pair`.

## Low-level interlude
Monomorphization makes generics zero-cost at runtime but pays at
compile-time and binary size — each unique instantiation is a new
function. In practice you don't notice unless you're going wild
with deep recursion of generic types.

Compare:
- **C++ templates**: also monomorphize. SFINAE / concepts ≈ Odin's `where`.
- **Go interfaces**: dynamic dispatch via vtable. Boxing for non-pointer
  receivers. Different cost model.
- **Rust generics**: monomorphize, with `trait` bounds doing what `where`
  here does.

Odin sits closest to C++/Rust: nothing dynamic happens, everything is
resolved at compile time.

## Now break it
1. Call `min_of(true, false)`. The `where` clause fails — read the error
   for the actual constraint phrasing.
2. Drop the `where` clause and try `min_of(true, false)` again. Now the
   error names `<` not being defined on `bool`. Same outcome, different
   message — `where` lets *you* author the diagnostic.
3. Make `Pair(int, f32)` and `Pair(int, f64)` and pass each to `show`.
   Notice the compiler emits two `show` instances. `odin build . -no-llvm-build`
   plus `nm` (or your platform equivalent) shows the duplicated symbols.

## Find more like this
    just substrate-search --bm25 "parametric polymorphism" --top 5
    just substrate-search --bm25 "where clause" --top 5
    just substrate-search --bm25 "intrinsics type_is" --top 5

## Next: `content/domains/odin/vault/lessons/15-foreign-and-bindings/`
