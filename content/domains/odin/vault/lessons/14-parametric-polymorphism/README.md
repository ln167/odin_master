# Lesson 14 - parametric polymorphism (generics)

## Concept

Parametric polymorphism is what other languages call **generics**: one
procedure or struct definition that works for many different types. In
Odin, a parameter prefixed with `$` is **resolved at compile time**.
`$T: typeid` means "T is a type, supplied at the call site"; `$N: int`
means "N is a constant integer, supplied at the call site".

Odin's generics are **monomorphized**. That word is doing a lot of work,
so spell it out: when you call `max(a, b)` with `int` arguments, the
compiler generates a brand-new copy of `max` specialized for `int` and
calls that copy. If you also call `max(a, b)` with `f32` arguments
somewhere else, the compiler generates a second copy specialized for
`f32`. There is no shared, type-erased runtime function with a hidden
boxed value; there are N concrete functions, each as direct as if you'd
written them by hand.

This is the same model C++ templates and Rust generics use. It is NOT
the same as Java generics (which erase the type at runtime and box
primitives) or C# generics (which keep one IL definition and either
share code via type info or specialize per value type lazily at JIT
time).

---

## Leveling with you (if you come from OOP)

You already know generics. You've written `List<T>`, `Dictionary<K, V>`,
`Func<T, U>`, `IEnumerable<T>` for years. The mental model carries over
cleanly: "write the algorithm once, plug in the type later." Nothing
new there.

What's actually different in Odin is small and concrete:

1. **Spelling.** Where C# writes `<T>` as a separate clause on the
   procedure name, Odin writes `$T` inline on the parameter that
   introduces it. The `$` is the "this is a compile-time parameter"
   marker. So `T Max<T>(T a, T b)` in C# becomes
   `max :: proc(a, b: $T) -> T` in Odin. The `$` appears on the FIRST
   use of `T`; later uses are bare `T`.

2. **Specialization model.** C# emits one piece of IL for `List<T>`
   and the JIT decides whether to share the code across reference
   types (one shared body, the type rides in a hidden parameter) or
   specialize per value type. Odin emits N separate machine-code
   bodies, one per concrete `T` you actually use. Faster code at the
   call site, larger binary, no JIT.

3. **Constants as type parameters.** `$N: int` is a *value* parameter
   that must be known at compile time. C# has no real equivalent
   short of source generators. The closest is C++'s `template<int N>`.
   Use it for things like "an array of length N" where N comes from
   the caller.

4. **Constraints are weaker.** C# has `where T : IComparable<T>`,
   declared on the type parameter. Odin has `where` clauses too,
   but the typical Odin pattern is to either rely on duck typing
   (the body uses `<`; if `T` doesn't support `<`, you get a compile
   error at the call site) or to put an `intrinsics.type_is_ordered(T)`
   check in a `where` clause for a nicer error message.

That's it. If you've used C# generics, you already know how to *think*
about Odin generics. You just need the new syntax.

---

### Compared to C

C has no generics. The two workarounds are:

1. **Preprocessor macros.** `#define MAX(a, b) ((a) > (b) ? (a) : (b))`.
   Looks like a function, isn't one. No type safety, evaluates
   arguments twice (so `MAX(i++, j++)` is a bug), error messages
   point at expanded code that doesn't exist in any file you wrote.
2. **`void*` and runtime type tags.** Cast everything to `void*`,
   carry a `size_t` or a tag enum, do your own dispatch. This is how
   `qsort` works. It's also how every C program that needs a generic
   container ends up doing something subtly different from every
   other C program that needs a generic container.

Odin generates a specialized procedure per call site. No macros, no
casts, no runtime tags. The code the optimizer sees is the same code
you'd have written if there were only one `T`.

---

### Compared to C#

Side by side:

```csharp
// C#
T Max<T>(T a, T b) where T : IComparable<T> {
    return a.CompareTo(b) >= 0 ? a : b;
}

var m1 = Max(3, 7);          // Max<int>
var m2 = Max(2.5, 1.0);      // Max<double>
```

```odin
// Odin
max :: proc(a, b: $T) -> T where intrinsics.type_is_ordered(T) {
    return a if a > b else b
}

m1 := max(3, 7)           // max specialized for int
m2 := max(2.5, 1.0)       // max specialized for f64
```

Same shape. Differences worth noticing:

- `<T>` clause vs `$T` inline on the parameter. Odin's form keeps
  the type parameter and the value parameter visually together.
- `where T : IComparable<T>` (declared bound) vs
  `where intrinsics.type_is_ordered(T)` (predicate over the type).
  Odin's predicates are arbitrary compile-time expressions, not
  interface implementations.
- C# may JIT one shared body or specialize per value type; Odin
  always emits one machine-code copy per concrete `T`.
- C# generics integrate with `interface` / structural typing. Odin
  doesn't have interfaces. The Odin equivalent is "the operator or
  proc you call inside the generic body must work for the `T` the
  caller passed".

For `List<T>` vs `Stack($T: typeid)`: same idea, same usage pattern.
You're writing one definition, getting N specialized types out.

---

### Compared with Rust

Rust's `fn max<T: PartialOrd>(a: T, b: T) -> T` and Odin's
`max :: proc(a, b: $T) -> T where intrinsics.type_is_ordered(T)` look
nearly identical and behave nearly identically. Both monomorphize.
Both let you constrain `T`.

The difference is **how rigorous the constraint is**. Rust's `T: PartialOrd`
is a trait bound: `T` must *declare* that it implements `PartialOrd`,
and the body of `max` can only use operations promised by `PartialOrd`.
The compiler checks the body against the trait, not against any
specific concrete type. If the body type-checks, every legal `T` will
work.

Odin's `where intrinsics.type_is_ordered(T)` is a predicate the
compiler evaluates at each call site. The body is checked against the
*concrete* `T` at instantiation time, the way C++ templates work. If
you forget the `where` clause entirely, the proc still compiles; the
error only shows up when someone tries to call it with a `T` that
doesn't support `<`. So `where` is more of a politeness ("here's the
error message I want you to see") than a hard contract.

Rust is the rigorous version, Odin is the pragmatic version.

---

### Compared to C++

C++ templates are the closest neighbor. Both monomorphize. Both
type-check the body against the concrete `T` at instantiation. Both
emit one machine-code copy per unique `T`.

The differences are ergonomic:

```cpp
// C++
template <typename T>
T max_val(T a, T b) { return a > b ? a : b; }
```

```odin
// Odin
max_val :: proc(a, b: $T) -> T { return a if a > b else b }
```

Odin folds the type parameter into the procedure signature directly;
C++ writes a separate `template <...>` header. C++20 concepts get you
closer to Odin's `where` style, but the baseline syntax is heavier.
SFINAE, two-phase name lookup, and partial template specialization are
all C++ inventions Odin doesn't need.

---

## Reference: the syntax you'll need

**Implicit type parameter** (inferred from the argument's type):

    max :: proc(a, b: $T) -> T { ... }
    max(3, 7)           // T = int

**Explicit type parameter** (you pass the type itself as a value):

    new_zero :: proc($T: typeid) -> ^T { ... }
    p := new_zero(int)

**Constant value parameter** (a compile-time int, float, etc.):

    make_array :: proc($N: int, $val: f32) -> [N]f32 { ... }
    a := make_array(3, 2.0)

**Mixing types and values in one proc:**

    sum :: proc(arr: [$N]$T) -> T { ... }
    // N is inferred from the array length, T from its element type

**Parametric struct:**

    Stack :: struct($T: typeid) {
        data: [dynamic]T,
    }
    s: Stack(int)

**`where` clause** (goes immediately before the opening `{`):

    max :: proc(a, b: $T) -> T
        where intrinsics.type_is_ordered(T) {
        return a if a > b else b
    }

You need `import "base:intrinsics"` to use `intrinsics.type_is_*`.

**Specialization syntax** (constrain to a polymorphic family):

    // accepts any Stack(T), inferring T
    push :: proc(s: ^$S/Stack, value: S.T) { ... }
    // or equivalently, naming T directly
    push :: proc(s: ^Stack($T), value: T) { ... }

---

## The mental model: write once, compile many

The single source-level definition of `max` is a *template*, not a
function. It generates real functions on demand.

When you write:

    max(3, 7)            // ints
    max(2.5, 1.0)        // f64s
    max("a", "b")        // strings

the compiled binary contains three independent procedures: one that
compares ints, one that compares f64s, one that compares strings. Each
one uses the appropriate CPU instructions for its type (integer
compare, floating-point compare, byte-by-byte string compare). At the
call site, there is no dispatch, no type lookup, no boxing; the
compiler picked the right specialization and inlined the call as if
you'd written three separate procs by hand.

Same story for parametric structs. `Stack(int)`, `Stack(string)`, and
`Stack(f32)` are three distinct types. You can't assign a `Stack(int)`
to a `Stack(string)` variable any more than you could assign an `int`
to a `string`. The compiler generates the layout, the size, and the
field offsets independently for each one.

The compiler de-duplicates: if you call `max(3, 7)` in fifty places,
there's still only one `max` specialized for `int` in the binary.

---

## Tasks

Open `main.odin`. The procedure-level comments describe each step.
Type the bodies yourself. Don't copy from this README's syntax block on
the first attempt; look only if you get stuck.

When you finish:

    odin run main.odin -file

Compare your output to `expected-output.txt`.

---

## Now break it on purpose

After the file works, try each of these in turn, observe the message,
then revert.

1. **Mixed types.** Call `max(3, 2.5)` (an `int` and an `f64`). Read
   the error. The compiler can't infer a single `T` that matches both
   arguments; both occurrences of `$T` must resolve to the same type.
2. **Operator not defined.** Define a tiny struct
   `Pair :: struct { a, b: int }` and try `max(Pair{1, 2}, Pair{3, 4})`.
   With the `where intrinsics.type_is_ordered(T)` clause, the error
   comes from the `where` check. Drop the clause and the error moves
   into the body, complaining that `>` isn't defined for `Pair`. Same
   bug, two different diagnostics, your choice which one your callers
   see.
3. **Non-constant value parameter.** Try to call your
   `make_constant_array($N: int, ...)` proc with `n := 3; make_constant_array(n, ...)`.
   Read the error: `$N` demands a compile-time constant, and a runtime
   variable doesn't qualify.
4. **Wrong type stored.** Push an `int` onto a `Stack(string)`. The
   error says the value's type doesn't match `T` for that specific
   stack specialization, which is exactly what you'd hope.

---

## Low-level notes

- Monomorphization is a classic time/space tradeoff. The generated
  code is as fast as hand-written specialized code, but each unique
  `(T, N, ...)` combination adds bytes to the binary. In practice
  this is a non-issue for normal codebases; it only bites if you go
  wild instantiating deeply nested generic templates.
- The compiler de-duplicates by signature. `max(int)` generated for
  call site A is the same machine code as `max(int)` generated for
  call site B, and the linker keeps one copy.
- `where` clauses are checked at the call site, before the body is
  type-checked. A failing `where` gives a clean "this constraint
  failed" error; a failing body type-check gives a deeper error
  pointing into the generic code. Prefer `where` for predicates you
  want callers to see.
- `intrinsics.type_is_*` predicates are compile-time queries against
  the type system. They produce no runtime code. The most common
  ones: `type_is_integer`, `type_is_float`, `type_is_numeric`,
  `type_is_ordered`, `type_is_string`, `type_is_pointer`,
  `type_is_struct`.

---

## Next: `15-foreign-and-bindings/`

How to call C functions from Odin. The interop layer is small,
explicit, and free of the marshaling drama you may remember from
P/Invoke or JNI.
