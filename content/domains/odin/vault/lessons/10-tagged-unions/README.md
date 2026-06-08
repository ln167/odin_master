# Lesson 10 - tagged unions

> **Interactive:** open `union-memory-layout.html` in a browser — a
> four-level walkthrough. **L1** the 16-byte slot for a real
> `union { Circle, Rectangle, Triangle }` (pick a variant, watch them
> overlap the same bytes while the tag changes). **L2** the use case where
> *not* using a union is wrong — a renderer's command buffer (one ordered
> array of mixed commands). **L3** the cost — the slot is as big as the
> biggest variant (16 → 68 bytes when one variant goes fat), and the
> push-payloads-out-of-line fix. **L4** exhaustive `switch` as a
> compile-time correctness guard. All sizes and the L4 error are real
> compiler output.

## Concept

A **tagged union** in Odin, written `union { A, B, C }`, is a type whose
value at any given moment is exactly one of N named **variants** (here
`A`, `B`, or `C`), plus a hidden one-byte **tag** that records which one.
The set of variants is fixed at compile time, and the type system tracks
which variant is active everywhere the value flows.

The way you read the active variant is the **type switch**:

    switch v in u {
    case A: // v is now an A here
    case B: // v is now a B here
    case C: // v is now a C here
    }

Inside each `case` arm, `v` has been **narrowed** from `union { A, B, C }`
down to the specific variant type, so you can touch its fields directly
with no cast. The compiler also checks that you handled every variant
(plus the nil state, since unions are nilable by default); leave one out
and the build fails.

That combination - one type with a known variant set, type-safe dispatch,
exhaustiveness checking - is what people mean by "sum type" or
"discriminated union". Odin's `union` is the Odin-flavored version of
Rust's `enum`, Swift's `enum` with associated values, F#'s discriminated
union, and Haskell's `data`.

---

## Leveling with you (if you come from OOP)

In OO languages this is what an abstract base class with subclasses is
*for*. In C#:

    abstract class Shape { }
    class Circle : Shape   { public float R; }
    class Square : Shape   { public float Side; }
    class Triangle : Shape { public float Base, Height; }

    Shape s = new Circle { R = 2 };
    if (s is Circle c) { ... }

The class hierarchy gives you "a Shape is exactly one of these three
things". The `is`-pattern (or `switch` expression in C# 9+) lets you
recover which one. It works, but the cost model is heavy: each `Shape`
is a separate heap allocation, every reference is a pointer, every
instance carries a vtable header (8 bytes for the method table pointer
plus another 8 for the object header on most runtimes), and dispatch
goes through that vtable.

A tagged union is the **data-oriented** version of the same idea. No
inheritance, no vtables, no per-instance allocation, no pointer chasing.
The variants live **inline** in a fixed-size slot equal to the largest
variant plus one byte for the tag. A `[1000]Shape` is one flat array of
1000 same-sized slots; the CPU streams through it.

Different ergonomics, too. The OOP model encourages putting behavior
(`.Area()`, `.Draw()`) on the variants themselves through method
override. The tagged-union model puts behavior in free procedures that
switch on the variant: `area :: proc(s: Shape) -> f32`. Adding a new
operation is a new proc; you don't have to touch all the variant types.
Adding a new variant means updating every switch - which the compiler
finds for you, the moment you try to build.

---

### Compared to C

C has `union` but it is **untyped**. A C union is just "this slot of
memory is interpreted as type A or type B or type C depending on... well,
you tell me." The compiler does not remember which variant is currently
live; if you write the `A` field and read the `B` field, you get garbage
(or, with strict-aliasing rules turned on, undefined behavior). The
discriminant - the thing that says "right now this slot is an A" - is
something you maintain yourself in a separate field:

    enum tag { TAG_CIRCLE, TAG_SQUARE, TAG_TRIANGLE };
    struct shape {
        enum tag tag;
        union { struct circle c; struct square s; struct triangle t; } body;
    };

Then every read goes `if (s.tag == TAG_CIRCLE) { use s.body.c; }`, and
if you ever forget to update `tag` when you write the body, or read the
wrong arm, the language does not help you. Foot-gun central.

Odin bakes the tag in and makes the type switch the only way to read it,
so the read path is provably matched to the write path.

### Compared to C#

C# offers three rough approximations, none of which are tagged unions:

1. **Class hierarchy + `is` checks** (the C# example above). Heap
   allocation per instance, vtable header, virtual dispatch. The compiler
   does NOT enforce exhaustiveness on `is`-ladders; you can forget a
   subclass and the build is happy.
2. **Records + `switch` expressions** (C# 9+). `record Circle(float R) :
   Shape;` plus `s switch { Circle c => ..., Square sq => ..., _ => ... }`.
   Closer in feel to a sum type, but it's still a nominal class hierarchy
   underneath, still heap-allocated, still no real exhaustiveness check
   (the `_` discard is mandatory).
3. **`OneOf<A, B, C>` from a NuGet library.** Generic wrapper with a
   `.Match(a => ..., b => ..., c => ...)` method. Type-safe and
   exhaustive at the call site, but the syntax is bulky and it's still a
   reference type.

None of these give you "fixed-size inline storage with a one-byte tag,
type-narrowed switch arms, compiler-enforced exhaustiveness" as a
language primitive. Odin (and Rust, Swift, F#) do.

### Compared with Rust

Rust's `enum` is the direct equivalent:

    enum Shape {
        Circle   { r: f32 },
        Square   { side: f32 },
        Triangle { base: f32, height: f32 },
    }

    match s {
        Shape::Circle   { r }            => 3.14159 * r * r,
        Shape::Square   { side }         => side * side,
        Shape::Triangle { base, height } => 0.5 * base * height,
    }

Same idea, same storage layout (max-variant + tag), same exhaustiveness
check. Two surface differences:

1. **Variants are nominal in Rust, structural in Odin.** Rust declares
   the payload inline inside the enum (`Circle { r: f32 }`). Odin's
   variants must be pre-existing named types (`Circle :: struct {...}`)
   that you then list inside the union (`union { Circle, Square, ... }`).
   That makes Odin unions a little more verbose for one-off variants and
   a little nicer when the variant types are reused elsewhere.
2. **Odin unions are nilable by default; Rust enums are not.** A fresh
   `Shape` in Odin is `nil` until you assign a variant. Rust enums have
   no analogous "unset" state - you always pick a variant at
   construction. Use `union #no_nil { ... }` if you want the Rust-style
   no-unset behavior (covered below).

---

## Reference: the syntax you'll need

### Declaring a union

    Circle   :: struct { r: f32 }
    Square   :: struct { side: f32 }
    Triangle :: struct { base, height: f32 }

    Shape :: union {
        Circle,
        Square,
        Triangle,
    }

Variants can be any type, not just structs: primitives (`i32`, `string`),
arrays, other unions, pointers. They all share the same fixed slot.

### Constructing a value

    s: Shape = Circle{r = 2}            // explicit type on the left
    s := Shape(Square{side = 3})        // type conversion form

Assigning a `Circle` to a `Shape` variable works directly because the
compiler can see `Circle` is one of the union's variants. The hidden tag
is set for you.

### Type switch (the main way you read it)

    switch v in s {
    case Circle:   return 3.14159 * v.r * v.r
    case Square:   return v.side * v.side
    case Triangle: return 0.5 * v.base * v.height
    case:          return 0       // catches nil
    }

`v` inside each arm has the narrowed variant type, so `v.r`, `v.side`,
etc. work with no cast. The plain `case:` arm catches the nil state (and
anything else not explicitly listed). Drop it and the compiler will
either insist you add `case nil:` or refuse to build, depending on
whether you covered every named variant.

To opt out of exhaustiveness on purpose:

    #partial switch v in s {
    case Circle: // ...
    // Square, Triangle, nil all fall through silently
    }

### Type assertion (read one specific variant)

When you only care about one variant, the type-switch is overkill:

    c, ok := s.(Circle)    // (Circle{}, true) if s holds a Circle; (zero, false) otherwise
    if ok { /* use c.r */ }

    c := s.(Circle)         // panics at runtime if s is not a Circle

The two-value `, ok` form is the safe one; the single-value form is for
"I am certain it's a Circle here, crash loudly if I'm wrong."

### The nil variant

A freshly declared union is `nil`:

    none: Shape           // none is nil
    none == nil           // true
    _, is_circle := none.(Circle)   // is_circle is false

Until you assign a variant, the tag says "no variant is active." Every
type-switch on a union must therefore either include `case nil:`, a
catch-all `case:`, or be marked `#partial`.

### `#no_nil` (opt out of the nil state)

    Shape :: union #no_nil {
        Circle,
        Square,
        Triangle,
    }

With `#no_nil`, the union cannot be nil; the **first listed variant** is
the zero value. A freshly declared `s: Shape` is `Circle{}` (all
fields zero). Requires at least two variants. The switch no longer needs
a nil arm, which lets the compiler prove the switch is total.

---

## The mental model: enum that carries data

The cleanest way to think about a tagged union is as a generalization of
the enum from lesson 05b.

An **enum** is a label drawn from a fixed set:

    Element :: enum { Fire, Ice, Lightning, Physical }
    e: Element = .Fire

That's all `e` carries: which of the four labels is currently selected.
One byte (or whatever the backing integer is).

A **tagged union** is a label drawn from a fixed set, PLUS the data that
goes with that label:

    Shape :: union { Circle, Square, Triangle }
    s: Shape = Circle{r = 2}

`s` carries which variant is selected (the one-byte tag, exactly like an
enum) AND the payload for that variant (the `Circle`, `Square`, or
`Triangle` bytes, all sharing one slot sized to the largest of them).

So:

| Type          | Carries          | Size                              |
|---------------|------------------|-----------------------------------|
| `enum`        | label only       | 1-8 bytes (the backing integer)   |
| `union`       | label + payload  | `max(sizeof(variant)) + tag + pad`|

Same dispatch story too: `switch e { case .Fire: ... }` on an enum reads
the label and branches; `switch v in s { case Circle: ... }` on a union
reads the tag, branches, and gives you the narrowed payload. Add data to
each enum value and you have a tagged union.

The same exhaustiveness rule applies in both directions: drop a case in
either kind of switch and the compiler will tell you exactly which one
you missed.

---

## Tasks

Open `main.odin`. The procedure-level comments walk you through six
exercises that build a `Shape` union, switch on it, extract one variant
safely, observe the nil state, and try `#no_nil`. Type the bodies
yourself.

1. **Declare the variant structs and the `Shape` union.**
2. **Construct one of each variant** and put them in an array.
3. **Write an `area` proc** that type-switches on a `Shape` and returns
   the area.
4. **Loop and print** the area of each shape alongside its variant.
5. **Safely extract a single variant** with the `, ok` type assertion.
6. **Observe the nil state** - a default-initialized `Shape` is nil, and
   `area` returns 0 for it.

When you finish:

    odin run main.odin -file

Compare against `expected-output.txt`.

---

## Now break it on purpose

After the file works, try each of these in turn, observe the error or
behavior, then revert:

1. **Drop a `case` from the switch.** Remove `case Triangle:` (and the
   nil/catch-all arm if you have one). Build. Read the error - Odin
   tells you exactly which variant is uncovered. This is the single
   biggest payoff of using a union over an untagged `struct` with a
   manual discriminant.
2. **Access a field without narrowing.** After `s: Shape = Circle{r = 2}`,
   try `fmt.println(s.r)` directly (no switch, no type assertion). The
   compiler refuses: `s` is a `Shape`, and a `Shape` has no field `r`.
   The only way to reach `r` is through a variant binding.
3. **Single-result type assertion on the wrong variant.** With
   `s: Shape = Circle{r = 2}`, do `sq := s.(Square)`. Compiles. At
   runtime, panics with a clear message. Then switch to the `, ok` form
   and verify it returns `false` cleanly.
4. **Observe the nil variant.** Declare `none: Shape` with no
   initializer. Print `none == nil` (true) and pass `none` to `area`
   (your `case nil:` or catch-all arm handles it).
5. **Add `#no_nil` and re-declare `none: Shape`.** Notice that `none` is
   now a `Circle{}` (the first variant, zero-valued) instead of nil. The
   nil arm in your switch becomes dead code - the compiler will tell you.

---

## Low-level notes

- **Storage.** `sizeof(Shape) == max(sizeof(Circle), sizeof(Square),
  sizeof(Triangle)) + sizeof(tag) + padding`. For our shapes the largest
  variant is `Triangle` (8 bytes: two `f32`s), the tag is one byte, and
  with 4-byte alignment you typically end up at 12 bytes. Run
  `fmt.println(size_of(Shape))` to see for yourself.
- **The tag is real cost.** A `[1_000_000]Shape` pays a tag byte (plus
  padding) per element, even if 99% of them are the same variant. For
  cache-hot inner loops where you know the variant per-array, parallel
  arrays (one `[]Circle`, one `[]Square`, one `[]Triangle`) beat one
  `[]Shape` because they ditch the tag and let each element pack to its
  natural size.
- **Dispatch is one branch.** `switch v in s { ... }` compiles to a load
  of the tag and a jump table or compare-and-branch chain. No vtable
  lookup, no indirect call. The CPU's branch predictor handles it well
  when the variant distribution has any pattern.
- **`#no_nil` saves nothing in size.** The tag byte stays; it just no
  longer reserves a value for "unset". The win is the type-system
  guarantee that the switch is total without a nil arm.
- **`size_of` and `align_of` work** on a union and report the slot size
  and alignment. Useful when designing data layouts.

---

## Next: `10b-distinct-types/`

Before the error-return convention in lesson 11, take a short detour
through `distinct` types. They're a one-line feature with outsized
impact: `Player_Id :: distinct int` gives you a type the compiler
refuses to mix with raw int or any other distinct int alias. Used for
IDs, units, opaque handles, and validated values.

After 10b, lesson 11 ties everything together: Odin's error-return
convention - `proc() -> (Result, Error)` and the `or_return` operator -
is built on top of tagged unions, and the `Error` type is often a
combination of a distinct enum + a union of variant payloads. Lesson 11
makes
that connection concrete.
