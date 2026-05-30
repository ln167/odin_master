# Lesson 10b - distinct types

## Concept

A **distinct type** in Odin, written `Name :: distinct T`, declares a new
type whose memory layout is identical to `T` but whose *identity* in the
type system is separate. The compiler treats `Name` and `T` as different
types and refuses to mix them, even though both are the same bytes at
runtime. There is no wrapper, no header, no tag, no extra field. Same
size, same alignment, same machine code; new type-system label.

Two practical consequences fall out of that:

1. **Two distinct types backed by the same underlying type are still
   different from each other.** `Player_Id :: distinct int` and
   `Monster_Id :: distinct int` are both `int`-shaped, but the compiler
   refuses to let you assign one to the other or pass one where the
   other is expected. They are siblings, not the same type.
2. **The distinction is purely compile-time.** Once the program is
   built, `Player_Id` and `int` are indistinguishable in memory. There
   is no cost. The check happens in the type checker, vanishes at
   codegen.

That combination, separate identity at zero runtime cost, is what
`distinct` exists for. It lets you stop a whole class of bugs (passing
a player id where you needed a monster id, subtracting seconds from
meters, treating a raw user-supplied string as a sanitized one) without
paying for it.

---

## Leveling with you (if you come from OOP)

The same pattern shows up in C# all the time, but the language gives
you no native way to express it cheaply. You end up writing a
single-field readonly struct around each id type:

```csharp
public readonly struct PlayerId  { public readonly int Value; public PlayerId(int v)  { Value = v; } }
public readonly struct MonsterId { public readonly int Value; public MonsterId(int v) { Value = v; } }

void DamagePlayer(PlayerId target, int amount) { ... }
```

It works, but it's heavy: a constructor per type, a `.Value` accessor
at every read site, equality/`ToString`/`GetHashCode` overrides to keep
the wrapper from behaving worse than the raw int, and the build-time
ceremony of N files for N id types. Many teams skip the wrapper and
just use `int` everywhere, accepting the bug class as a fact of life.

`Name :: distinct T` is the one-liner version of that struct wrapper.
No constructor, no `.Value`, no equality overrides, no accessor noise
at the read sites. You write `Player_Id(42)` to construct and
`int(player_id)` to unwrap, and the rest of your code names the type
without ever poking at a field. The compiler does the same job the C#
wrapper struct was doing, with less typing and zero overhead.

The mental shift: in OOP land, "make this id type-safe" is a small
design project. In Odin, it's one line and you've already done it.

---

### Compared to C

C has nothing equivalent. `typedef int Player_Id;` looks like it might
do the job, but a C `typedef` is a **transparent alias**: the compiler
treats `Player_Id` and `int` as the exact same type at every level,
including overload resolution and assignment. You can freely assign a
raw `int` to a `Player_Id`, mix them in arithmetic, pass either where
the other is expected. The name is a documentation hint and nothing
more.

To get real distinctness in C you have to fall back to a one-field
struct:

```c
typedef struct { int v; } Player_Id;
typedef struct { int v; } Monster_Id;
```

That works, but now every read is `p.v`, every assignment is
`(Player_Id){.v = 42}`, you can't use the struct as an array index, and
arithmetic between two `Player_Id`s no longer compiles without a
helper. C codebases generally don't bother and accept the bug class.

Odin's `distinct` is exactly the C-struct trick, except the language
does the wrapping invisibly: same protection, no `.v` everywhere.

### Compared to C#

The C# story is the readonly struct wrapper above. Compared to Odin:

| C# | Odin |
|----|------|
| `public readonly struct PlayerId { public int Value; }` (5+ lines with ctor) | `Player_Id :: distinct int` (one line) |
| `new PlayerId(42)` | `Player_Id(42)` |
| `id.Value` | `int(id)` |
| `id1 == id2` requires `IEquatable<PlayerId>` for it to be cheap | `id1 == id2` is one CPU compare |
| Each new id type = one new file | One line in the package |

Semantically the same. Operationally one line vs. dozens, and the read
sites don't get cluttered with `.Value`.

### Compared with Rust

Rust has the **newtype pattern**, which is the same idea:

```rust
struct PlayerId(u32);
struct MonsterId(u32);
```

The tuple-struct wraps one field; access goes through `.0`. The Rust
compiler refuses to mix `PlayerId` and `MonsterId`, same as Odin. The
ergonomic differences are small: Rust requires `.0` to unwrap,
construction is `PlayerId(42)` (same as Odin), and you usually
`#[derive(...)]` traits to get equality and printing for free.

Odin's `distinct` is slightly tighter syntactically (no `.0` access),
and behaves more like the underlying type by default (formatting,
comparison, arithmetic with same-type values, untyped-literal
arithmetic all just work). Rust's approach is more powerful when you
want to *restrict* operations (you can choose which traits to
implement); Odin's is more frictionless when you just want a labeled
version of the underlying type.

### Compared to Haskell / F#

`newtype PlayerId = PlayerId Int` in Haskell, or a single-case
discriminated union in F# (`type PlayerId = PlayerId of int`), is the
same construct under another name. All three (Haskell, F#, Odin) share
the same compile-time-only, zero-cost guarantee: the wrapper exists
only in the type checker.

---

## Reference: the syntax you'll need

### Declaration

    Player_Id   :: distinct int
    Monster_Id  :: distinct int
    Meters      :: distinct f32
    Seconds     :: distinct f32
    Sanitized   :: distinct string

Works on any type, not just numerics: `distinct [3]f32`, `distinct
^Node`, `distinct struct { x, y: f32 }`, all valid.

### Constructing a value

The same call-style conversion you use for any numeric cast:

    p1 := Player_Id(42)            // int literal -> Player_Id
    m1 := Monster_Id(42)           // int literal -> Monster_Id (different type from p1)

The `cast(...)` form also works if you prefer it for long expressions:

    p1 := cast(Player_Id) some_long_expression(a, b, c)

Both forms compile to nothing. There is no constructor, no allocation,
no field-write. The bits of `42` end up in `p1`'s memory slot and the
type checker writes "this is a `Player_Id`" in its book.

### Going back to the underlying type

Same call-style conversion the other direction:

    raw := int(p1)                  // Player_Id -> int

You need this for things that want the underlying type specifically:
serialization (writing the raw int to a file), interop with C, certain
formatting paths, or arithmetic against a non-distinct int.

### Operations between two values of the same distinct type

These all work as if you were using the underlying type:

    p1 := Player_Id(1)
    p2 := Player_Id(2)

    p1 == p2          // false
    p1 < p2           // true
    p1 + p2           // Player_Id(3)  -- result is still Player_Id

Arithmetic and comparison between two `Player_Id`s give you a
`Player_Id` back (for `+ - * /`) or a `bool` (for `==  <  >`). Same
shape as raw `int`.

### Operations with untyped literals

Untyped integer / float literals slot in transparently:

    p1 := Player_Id(1)
    next := p1 + 1                  // works; `1` is an untyped literal that converts to Player_Id

This is the same rule that lets you write `i + 1` against an `i: i32`
in normal Odin code: an untyped constant adopts whatever typed neighbor
it's standing next to.

### Operations with a *typed* value of the underlying type

These do NOT work without an explicit cast:

    p1 := Player_Id(1)
    raw_int: int = 5

    // p1 + raw_int                 // COMPILE ERROR: mismatched types Player_Id and int
    p1 + Player_Id(raw_int)         // OK: cast first

The compiler refuses on purpose. This is the same protection that
catches the "wrong-id" bug; the price is that you cast at the boundary
when you legitimately want to mix.

### Operations between two *different* distinct types

These also do NOT work, even when the underlying types match. The
point is the type system distinguishes them.

    p1 := Player_Id(1)
    m1 := Monster_Id(1)

    // p1 == m1                     // COMPILE ERROR: cannot compare Player_Id and Monster_Id
    // p1 + m1                      // COMPILE ERROR: type mismatch
    // damage_player(m1, 10)        // COMPILE ERROR: Monster_Id given where Player_Id expected

To actually mix, you go through the underlying type as an explicit
intermediate:

    Player_Id(int(m1))              // legal; reads "I really mean to do this"

That little ceremony is exactly the point. It's the speed bump that
turns "wrong-id" bugs from silent into loud.

---

## The mental model: same bytes, different label

Picture the underlying storage as a row of bytes, and the type as a
sticky note attached to that row:

                          ┌────────────────────┐
    raw_int:    int       │  42 (8 bytes)      │  label: int
                          └────────────────────┘

                          ┌────────────────────┐
    p1:         Player_Id │  42 (8 bytes)      │  label: Player_Id
                          └────────────────────┘

                          ┌────────────────────┐
    m1:         Monster_Id│  42 (8 bytes)      │  label: Monster_Id
                          └────────────────────┘

Three values, identical bytes in memory, three different labels. The
labels live only in the compiler's bookkeeping; they do not exist in
the compiled binary. `Player_Id(42)` produces the same machine code as
writing `42` into an `int` slot. `int(p1)` produces no machine code at
all, it's just the compiler agreeing to peel the label off for the
next operation.

That's the whole construct. Everything else, the bug-prevention, the
unit safety, the opaque-handle trick, is just creative use of "the
type system distinguishes things the bits do not."

---

## When to reach for distinct

Four canonical patterns. Each one is preventing a real bug class.

### 1. IDs

```odin
Player_Id  :: distinct int
Monster_Id :: distinct int
Item_Id    :: distinct u64
```

The "wrong-id" bug is universal in any non-trivial game: you have ten
different entity tables, every one of them keys on an int, and at some
point you write `damage(player.target_id, 10)` where `target_id` was
actually populated from a different table. The compiler can't see the
mistake because every id is an `int`. With distinct types, every id
table keys on its own distinct type, and the compiler catches the mix
at the line you wrote it.

### 2. Units

```odin
Meters  :: distinct f32
Seconds :: distinct f32
Newtons :: distinct f32
Kg      :: distinct f32
```

NASA lost the $327 million Mars Climate Orbiter in 1999 because one
team produced thruster impulse data in pound-seconds and the
downstream team consumed it as newton-seconds. Same bytes, wrong unit,
spacecraft burned up in the Martian atmosphere. Distinct types make
unit mixups a compile error: you cannot subtract `Seconds` from
`Meters`, cannot pass `Newtons` to a proc that wants `Kg`.

You still have to do unit *conversion* by hand at the boundary
(`Meters(seconds_value * speed)` would be wrong on its face, but
nothing stops you from computing the right product and casting), but
you can no longer mix them silently in the middle of an expression.

### 3. Opaque resource handles

```odin
Texture_Handle :: distinct u32
Buffer_Handle  :: distinct u32
Shader_Handle  :: distinct u32
```

When you're talking to a GPU API, every resource ends up as some kind
of `u32` (or `u64`) integer handle. The API hands you a texture id,
later hands you a buffer id, both are 32-bit integers from your
program's point of view. With distinct types, you can't accidentally
pass a buffer handle to the texture-binding function.

This generalizes to file descriptors, socket descriptors, ECS entity
ids, and anything else where the underlying type is some flavor of
"int that means something specific to the subsystem."

### 4. Validated / sanitized values

```odin
Sanitized_Html  :: distinct string
Validated_Email :: distinct string
Trimmed_Path    :: distinct string
```

This one's the strongest pattern. You wrap a `string` (or whatever) in
a distinct type, and the *only* way to produce a value of that type is
through your validator proc. The rest of the codebase reads a
`Sanitized_Html` and can trust, by the type itself, that the string
went through validation. Forgetting to sanitize is no longer a careful
review of every call site; it's a compile error at any site that tries
to pass a raw `string` where a `Sanitized_Html` is expected.

Odin doesn't enforce "the validator is the only constructor" at the
language level (the cast `Sanitized_Html(s)` is always available
inside the same package), but in practice you keep the cast inside one
file and the discipline is "if you're casting raw, you're saying you
already validated."

---

## Tasks

Open `main.odin`. The procedure comments walk you through six
exercises that build up the distinct-types workflow. Type the bodies
yourself; don't peek at the reference block above on the first attempt.

1. **Declare two id types** and observe that they print like ints but
   the type checker treats them differently.
2. **Reason about why one assignment would be illegal** (commented out
   in source) and *why* that's the entire point.
3. **Write a damage proc** that takes only one id type and observe the
   compiler catching a misuse at the call site.
4. **Declare a units pair** (`Meters`, `Seconds`) and see what
   arithmetic compiles and what doesn't.
5. **Cast back to the underlying type** for serialization-style code
   that genuinely needs the raw int.
6. **Build a Sanitized_String pattern**: a distinct type plus a
   validator proc, and notice that any code path that produces one had
   to go through validation.

When you finish:

    odin run main.odin -file

Compare against `expected-output.txt`.

---

## Now break it on purpose

After your file works, try each in turn, read the error, then revert:

1. **Assign across distinct types.** Uncomment `p1 = m1` or
   `damage_player(m1, 10)`. Build. Read the error, this is the bug the
   feature exists to catch. Notice the message names both types, so
   you know at a glance whether you mixed siblings (`Player_Id` vs
   `Monster_Id`) or a distinct with its underlying (`Player_Id` vs
   `int`).
2. **Skip the cast on a raw int.** Try `p1 + some_raw_int` where
   `some_raw_int: int = 5`. Build. Same family of error. Confirm that
   `p1 + 1` (untyped literal) compiles but `p1 + some_raw_int` (typed
   int) does not. This is the untyped-vs-typed-constant distinction in
   action.
3. **Subtract Seconds from Meters.** Build, read the error. This is
   the Mars-Orbiter check.
4. **Bypass the Sanitized_String validator.** Cast a raw string
   directly: `s := Sanitized_String("not validated")`. Compiles. The
   compiler can't enforce "only the validator may construct one"; that
   enforcement is *social* (keep the cast inside one file, code
   review). The type still helps because casts are visible and
   greppable, but it isn't a hermetic seal.

---

## Low-level notes

- `size_of(Player_Id) == size_of(int)`. Same alignment, same
  representation. Print both to confirm.
- `Player_Id(42)` emits no instructions. The compiler is just relabel-
  ing; the value `42` is already in the register or memory slot.
- `int(p1)` also emits nothing. Same direction, same no-op.
- Arithmetic between two distinct values is the same instruction as
  between two raw underlying values. `Player_Id + Player_Id` compiles
  to the same `add` you'd get for `int + int`.
- The protection is purely a type-checker phase. There is no runtime
  flag, no tag byte, nothing that could go wrong at runtime. Either
  the program built (the types matched) or it didn't.
- `distinct` composes: `My_Vec3 :: distinct [3]f32` is a distinct
  array type and still supports element-wise arithmetic between two
  `My_Vec3`s. `distinct ^Node` is a distinct pointer type with the
  same pointer semantics. The "same bytes, new label" rule holds
  uniformly.

---

## Next: `11-error-handling-or-return/`

Odin's error-return convention uses tagged unions (lesson 10) as the
error type and frequently uses `distinct` enums as the error variants
themselves. Lesson 11 puts both pieces together: failure as data,
named precisely enough that the compiler tells you when you forget a
case.
