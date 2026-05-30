# Lesson 05b - enums and bit_sets

## Concept

An **enum** is a type whose set of legal values is a fixed list of named
labels you write out by hand. `Element :: enum { Fire, Ice, Lightning,
Physical }` defines the type `Element` and says its four legal values
are spelled `.Fire`, `.Ice`, `.Lightning`, `.Physical`. Under the hood
each label is just an integer (`.Fire = 0`, `.Ice = 1`, etc.), but at
the source level you spell them by name and the type system enforces
that nothing else can be assigned to an `Element` variable.

A **bit_set[Enum]** is a *boolean vector indexed by an enum* — one
boolean slot per enum value, packed into a single integer. `bit_set
[Element]` is four bits (one per element) packed into one byte. It
represents "which subset of the enum is currently 'in the set'?" and
supports set operations (union, intersection, membership, subset) as
single CPU instructions.

You saw enums in lesson 05 already, as the index type of `[Element]f32`
arrays. This lesson makes them the main character: how to declare them,
iterate them, switch on them exhaustively, cast them, and — the killer
feature most languages don't give you — combine them into `bit_set`s.

---

## Leveling with you (if you come from OOP)

In C# / Java / TypeScript an enum is a class-like thing with named
constants. You use it mostly as a tag inside an `if`/`switch`. The
"enum + data" pattern usually means a `Dictionary<MyEnum, T>` for
lookups and a `[Flags]` attribute plus manual bitwise ops if you want
to combine values.

In Odin an enum is more load-bearing. It's the key for fast lookup
tables (`[Enum]T`, lesson 05), the universe for bit-vector sets
(`bit_set[Enum]`, this lesson), the discriminant for tagged unions
(lesson 10), and the basis for compile-time-exhaustive `switch`. The
language treats enums as first-class index types in three different
ways instead of one.

That means a lot of code you'd write with `HashSet<MyEnum>` plus
`Dictionary<MyEnum, T>` plus `[Flags]` plumbing in C# collapses into
two or three lines of Odin where the compiler does the bookkeeping.

---

### Compared to C#

| C# | Odin |
|----|------|
| `[Flags] enum Element { Fire=1, Ice=2, ... }` | `Element :: enum { Fire, Ice, ... }` (no `[Flags]` attribute needed; bit_set is separate) |
| `var s = Element.Fire \| Element.Ice;` | `s := bit_set[Element]{.Fire, .Ice}` |
| `(s & Element.Fire) != 0` | `.Fire in s` |
| `s \|= Element.Lightning;` | `s += {.Lightning}` |
| `(a & b) == b` (subset check) | `b <= a` |
| `Dictionary<Element, float>` (heap, hashed) | `[Element]f32` (stack, integer offset) |
| `HashSet<Element>` (heap, hashed) | `bit_set[Element]` (1 byte, bitwise) |
| `Enum.GetValues<Element>()` | `for e in Element` |

Same problem space, far less ceremony, often orders of magnitude
faster at runtime.

### Compared to C

In C you `#define FIRE (1<<0)`, then check membership with `if (flags
& FIRE)`. It works, but it's completely untyped — the compiler can't
stop you from `flags & 0x80` against a bit that doesn't correspond to
any real element. Adding a new value means manually picking the next
power of two (`1<<4`, `1<<5`) and hoping you don't collide. Odin
handles all of that.

### Compared to Java

`EnumSet<E>` in Java is genuinely equivalent — backed by a long,
constant-time ops. The difference is purely syntactic: Java makes you
write `EnumSet.of(Element.FIRE, Element.ICE)` and `set.contains
(Element.FIRE)`; Odin gives you `{.Fire, .Ice}` and `.Fire in set`.

---

## Reference: the syntax you'll need

### Enum basics

    Element :: enum { Fire, Ice, Lightning, Physical }    // backing type: int (8 bytes)
    Element :: enum u8 { Fire, Ice, Lightning, Physical } // backing type: u8 (1 byte)

    e: Element = .Fire             // implicit selector — compiler infers type
    e := Element.Fire              // explicit, also valid

    int(e)                         // 0  (enum -> int cast)
    Element(2)                     // .Lightning  (int -> enum cast; UNSAFE if out of range)

    len(Element)                   // 4   (number of values)
    min(Element)                   // .Fire
    max(Element)                   // .Physical

    for e in Element { ... }       // iterate all values in declaration order

### Explicit values

    Http_Status :: enum {
        OK            = 200,
        Not_Found     = 404,
        Server_Error  = 500,
    }

Useful for protocol enums. **Warning:** `[Http_Status]T` would size
the array to 501 slots (one per int in `[0, 500]`), not 3.

### Switch with exhaustiveness

    switch e {
    case .Fire:      // ...
    case .Ice:       // ...
    case .Lightning: // ...
    case .Physical:  // ...
    }

The compiler refuses to build if you miss a case. Use `#partial
switch e in ...` to opt out when you genuinely want to handle only
some cases.

### bit_set

    Element_Set :: bit_set[Element]

    s: Element_Set                       // empty set, {}
    s = {.Fire, .Ice}                    // set literal

    .Fire in s                           // membership test -> true
    s += {.Lightning}                    // add element
    s -= {.Fire}                         // remove element

    a | b                                // union
    a & b                                // intersection
    a - b                                // difference
    b <= a                               // is b a subset of a?
    a == b                               // equality

    card(s)                              // cardinality (popcount)

Default backing integer is sized to fit the enum: 4 values -> 1 byte;
9 values -> 2 bytes; 17 -> 4 bytes; 33 -> 8 bytes.

---

## The mental model: bit_set as a labeled boolean vector

Don't think of `bit_set[Element]` as "a number with bits". Think of it
as a boolean vector indexed by enum:

                    Fire    Ice    Lightning   Physical
                  ┌──────┬──────┬───────────┬───────────┐
    {.Fire, .Ice} │  1   │  1   │     0     │     0     │
                  └──────┴──────┴───────────┴───────────┘

Set operations are elementwise:

                       Fire    Ice    Lightning   Physical
                     ┌──────┬──────┬───────────┬───────────┐
    A = {Fire, Ice}  │  1   │  1   │     0     │     0     │
    B = {Fire, Phys} │  1   │  0   │     0     │     1     │
                     ├──────┼──────┼───────────┼───────────┤
    A | B  (union)   │  1   │  1   │     0     │     1     │  = {Fire, Ice, Physical}
    A & B  (intersect)│ 1   │  0   │     0     │     0     │  = {Fire}
    A - B  (diff)    │  0   │  1   │     0     │     0     │  = {Ice}
                     └──────┴──────┴───────────┴───────────┘

The "packed into a single integer" detail is just storage. What it
*is*, conceptually, is a boolean vector. The bit-packing is what makes
the operations cheap (one CPU instruction operates on all slots at
once), but you can reason entirely in terms of the labeled vector
picture.

---

## Set-thinking: when bit_set is the right tool

Knowing the syntax is the easy part. The hard part is recognizing when
a problem you're modeling with booleans-and-loops is *secretly* a set
operation. Use this table as a cheat-sheet:

| Question | Set operation | Odin syntax |
|----------|---------------|-------------|
| "Is this one thing flagged?" | membership | `x in S` |
| "Combine everything from both." | union | `A \| B` |
| "What's in BOTH?" | intersection | `A & B` |
| "What's in A but NOT in B?" | difference | `A - B` |
| "Does A contain all of B?" | subset | `B <= A` |
| "Do these share nothing?" | disjoint | `A & B == {}` |
| "How many?" | cardinality | `card(S)` |
| "Everything else." | complement | `~S` |

The SQL parallel: if your SQL brain reaches for `WHERE x IN (...)`,
your bit_set brain should reach for `x in S`. Same shape of thinking.

### Real game-dev patterns where set-thinking unlocks things

1. **Permission/capability checks.** `if required_perms <= user_perms`
   instead of N boolean comparisons.
2. **Status-effect cleansing.** `active_effects -= negative_effects`
   removes all debuffs in one op.
3. **AI tag filtering.** Find entities tagged `{.Enemy, .Hostile}` and
   NOT tagged `{.Dead, .Friendly}` — two intersections and a difference.
4. **Input combos.** Track which keys are down as a bit set; check
   `if pressed >= {.Ctrl, .Shift, .S}` for the shortcut.
5. **Collision layers.** Each entity has `bit_set[Layer]` of "layers
   I'm on" and "layers I collide with". Check is one `&` op per pair.
6. **Diffing/eventing.** Compare last frame's set to this frame's set
   with symmetric difference to know what entered/left a zone.
7. **Tag-based dispatch.** Instead of an `if/else` ladder on entity
   type, dispatch by `if .Flammable in tags && .OnFire in tags`.

---

## What bit_set CANNOT do

The flip side: knowing the limits is half the skill. `bit_set` answers
exactly one question — *"for each element of a fixed universe, is it
in or out?"* — and falls down the moment you want more.

| You want | Why bit_set fails | Reach for |
|----------|-------------------|-----------|
| **Counts / multiplicity** ("how many stacks of fire?") | a bit is 0 or 1, no counting | `[Enum]int` |
| **Value per element** ("how many uses left on the silver key?") | a bit can't carry data | `[Enum]T` or `[Enum]Struct` |
| **Order / sequence** ("which effect applied most recently?") | sets are unordered | queue / `[dynamic]T` |
| **Runtime-determined universe** ("online players by username") | enum must be fixed at compile time | `map[K]bool` / `HashSet` |
| **Very large universe** (millions of items) | bit_set caps at ~64 bits in one instruction | sparse structures |
| **Relationships** ("which monsters drop which items") | a bit can't carry edges | matrix, graph, `[K][dynamic]V` |
| **Weights / probabilities** ("40% fire resistance") | a bit is discrete | `[Enum]f32` |
| **Time-series / history** ("when did they catch fire?") | bit_set is a snapshot | timestamped struct, event log |
| **Identity / references** ("which entity is holding the key?") | sets only carry membership, not identity | `map[K]^Entity` |

### The escalation ladder

When `bit_set` isn't enough, here's where you typically go next:

| Need | Structure |
|------|-----------|
| Yes/no per fixed element | `bit_set[Enum]` |
| Value per fixed element | `[Enum]T` |
| Yes/no per dynamic element | `map[K]bool` |
| Value per dynamic element | `map[K]V` |
| Ordered collection | `[dynamic]T` / `[]T` |
| Relationships | `[K][dynamic]V`, matrix, graph |
| Time-varying state | array of snapshots, event log |

The skill: pattern-match your problem to the *lowest rung* that solves
it. Most code that lives in `Dictionary<string, object>` in a typical
C# codebase could be a `bit_set` or `[Enum]T` in Odin — but the
inverse is also true: forcing a genuinely dynamic problem into a
bit_set will hurt.

---

## Tasks

Open `main.odin`. The procedure comments walk you through five
exercises that build up an enum + bit_set workflow. Type the bodies
yourself.

1. **Declare an enum** of element types and iterate it.
2. **Exhaustive switch** — the compiler enforces coverage.
3. **Build a bit_set** from enum literals and test membership.
4. **Set operations** — union, intersection, difference.
5. **The door / key subset check** — the canonical real-world pattern.

When you finish:

    odin run main.odin -file

Compare against `expected-output.txt`.

---

## Now break it on purpose

After the file works, try each of these in turn, observe the message,
then revert:

1. **Out-of-range int -> enum cast.** Add `bad := Element(99)` and
   print it. Notice it compiles AND runs — the cast is unchecked.
   This is why you validate at boundaries (file I/O, network, user
   input). Internal code can trust enum values; external data cannot.
2. **Drop a switch case.** Remove `.Physical:` from the exhaustive
   switch. Build. Read the error — Odin tells you exactly which case
   you missed. This is one of the best reasons enums beat raw ints.
3. **Subset with the wrong operator.** Try `a < b` where you meant
   `a <= b`. `<` is *proper* subset (strictly smaller); `<=` is
   subset-or-equal. Subtle but matters when sets can be equal.
4. **Add to an enum, re-run.** Add `.Holy` to `Element`. Notice the
   `[Element]f32` table from lesson 05 (if you have one around) grew
   automatically, but any `switch` you wrote now fails to compile
   until you handle the new case. The type system propagates the
   change.

---

## Low-level notes

- `bit_set[Enum]` storage is the smallest power-of-two integer that
  fits the enum: 1-8 values -> 1 byte (u8), 9-16 -> u16, 17-32 ->
  u32, 33-64 -> u64. Past 64 you'd need a chained representation.
- Set operations (`|`, `&`, `-`) compile to single CPU instructions
  (`or`, `and`, `andn`). `card(s)` uses the `popcnt` instruction on
  modern x86.
- `.Fire in s` is one bit-test instruction (`bt` or `test+and`).
- An empty enum is a compile error. A single-value enum is legal but
  pointless. The sweet spot is 2-32 values; beyond ~64 you're paying
  per-word ops anyway and may want a different structure.

---

## Next: `06-slices/`

A slice (`[]T`) is a pointer-plus-length view into a fixed array, a
dynamic array, or any other contiguous storage. Lesson 06 makes the
distinction concrete.
