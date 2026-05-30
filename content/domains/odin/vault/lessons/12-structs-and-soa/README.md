# Lesson 12 - structs and `#soa`

## Concept

A **struct** is a named tuple of typed fields. `Particle :: struct {
pos: [3]f32, vel: [3]f32, mass: f32 }` declares a type whose values
are sixteen bytes (well, twenty eight, we'll get to padding) laid out
in that order in memory. Structs in Odin are value types: assigning
one copies every field, passing one to a procedure copies it, and
there is no hidden header, vtable, or reference count attached.

The **`#soa` modifier** is the killer feature most languages don't
have. Write `#soa [N]Particle` instead of `[N]Particle` and Odin
pivots the layout: what was an *array of structs* (every particle's
fields packed together, then the next particle) becomes a *struct of
arrays* (one contiguous column of `pos` values, one of `vel`, one of
`mass`). Your source code does not change. `particles[i].pos` still
works, indexing still works, iteration still works. Only the bytes
underneath are rearranged.

That single-keyword pivot is the foundation of data-oriented design
in Odin, and it's why ECS-style game architectures fit the language
so naturally.

---

## Leveling with you (if you come from OOP)

If your instinct on hearing "Particle" is "a `Particle` class with a
`Position` property, a `Velocity` property, an `Update()` method, and
maybe an `IRenderable` interface" - that whole picture is what we
shed here.

C# offers two related primitives. A `class` is a reference type:
heap-allocated, garbage-collected, accessed through a pointer, can
have methods, properties, virtual dispatch, inheritance. A `struct`
is a value type: stack-allocated (or inlined into its container),
copied on assignment, no inheritance, no virtual methods, but it can
still have methods and properties and an interior life.

Odin's `struct` is closer to C#'s `struct` than to C#'s `class`:
value type, copy on assignment, no inheritance, no virtual dispatch.
The Odin twist is that it goes one step further: **a struct has no
methods at all**. There is no `update :: proc(self: ^Particle)` that
"belongs to" `Particle`. There is a free procedure `update_particle
:: proc(p: ^Particle, dt: f32)` and that's it. Same for constructors,
properties, operator overloads, finalizers. The struct is just the
data. Behavior lives in procedures.

This sounds like a loss of ergonomics, and for a week it is. The
payoff is what `#soa` shows you: **because no methods cling to the
struct, the layout is free to be reorganized**. The compiler can
transpose `[N]Particle` into six separate columns and you don't
notice from the source. If `Particle` had methods, those methods
would reach into the fields by offset, and pivoting the layout would
silently break every method body. By keeping behavior outside the
type, Odin keeps the type's shape negotiable. That's a design choice
in service of cache-friendly memory.

The mental shift is: **a struct is a description of bytes, not a
description of an object.** The bytes can sit one way or another way.
You pick.

---

### Compared to C

Odin's struct is structurally identical to C's:

    // C
    typedef struct {
        float pos[3];
        float vel[3];
        float mass;
    } Particle;

    // Odin
    Particle :: struct {
        pos:  [3]f32,
        vel:  [3]f32,
        mass: f32,
    }

Same layout, same alignment rules (each field aligns to its type's
alignment; the whole struct's size rounds up to the struct's
alignment), same value semantics, same pointer-and-dot access (Odin
even auto-dereferences `p.pos` when `p` is a `^Particle`, so you
don't write `p->pos` like C does).

What Odin adds:

1. **`#soa` arrays.** No C compiler will transpose an array layout
   for you. In C you'd hand-write a `struct ParticlePool { float
   xs[N]; float ys[N]; ... }` and lose the ability to talk about
   "the i-th particle" as a single thing. Odin gives you both views
   simultaneously.
2. **Parametric structs.** `Stack :: struct($T: typeid) { items:
   [dynamic]T }` declares a generic struct. C has no equivalent
   short of macros.
3. **`using` field promotion.** Embed a field with `using` and its
   subfields become accessible at the outer struct's scope (lesson
   11's `Entity { using transform: Transform; ... }` lets you write
   `e.position` instead of `e.transform.position`). No C equivalent.
4. **Struct directives.** `#packed`, `#raw_union`, `#align(N)`,
   `#min_field_align(N)` control layout when you need to match a
   binary protocol or hardware register.

### Compared to C#

Both languages spell the keyword `struct` and both make it a value
type. Concrete differences:

| C# | Odin |
|----|------|
| Methods on the struct: `public void Update() { ... }` | No methods. Write `update_particle :: proc(p: ^Particle, dt: f32)`. |
| Properties with getters/setters | No properties. Read and write the field directly. |
| Constructors / `new Particle(...)` | Struct literal: `Particle{pos = {1,2,3}, mass = 1}`. Unset fields zero-initialize. |
| `[StructLayout(LayoutKind.Sequential, Pack = 1)]` | `Particle :: struct #packed { ... }` |
| Generic structs: `struct Stack<T>` | Parametric structs: `Stack :: struct($T: typeid) { ... }` |
| No layout pivot | `#soa [N]Particle` transposes to struct-of-arrays. |

The absence of methods is the cultural shock. The presence of `#soa`
is the reward.

---

## Reference: the syntax you'll need

### Struct declaration

    Particle :: struct {
        pos:  [3]f32,
        vel:  [3]f32,
        mass: f32,
    }

### Literal construction

    p := Particle{pos = {1, 2, 3}, vel = {0, -9.8, 0}, mass = 1.0}

    // Positional (must give EVERY field, in order):
    q := Particle{{1, 2, 3}, {0, -9.8, 0}, 1.0}

    // Zero value (every field zeroed):
    r: Particle

### Field access

    p.pos              // {1, 2, 3}
    p.pos.x            // 1   (because [3]f32 supports .x .y .z)
    p.mass = 2.0       // mutate in place

### Pointer to struct

    ptr: ^Particle = &p
    ptr.pos = {5, 5, 5}    // auto-deref; no -> operator

### `using` for field promotion

    Transform :: struct {
        position: [3]f32,
        rotation: quaternion128,
    }

    Entity :: struct {
        using transform: Transform,
        hp: int,
    }

    e: Entity
    e.position = {0, 0, 0}     // reaches through `transform` automatically
    e.hp = 100

### Parametric (generic) structs

    Stack :: struct($T: typeid) {
        items: [dynamic]T,
    }

    s: Stack(int)
    append(&s.items, 42)

The `$T` parameter is filled in at compile time. `Stack(int)` and
`Stack(f32)` are distinct types.

### The `#soa` family

    aos: [N]Particle              // array of structs (default)

    soa: #soa [N]Particle         // struct of arrays, fixed length
    soa_slice: #soa []Particle    // struct of arrays, slice (length tracked)
    soa_dyn: #soa [dynamic]Particle  // struct of arrays, growable

Indexing is identical across all four:

    soa[i].pos = {1, 2, 3}
    aos[i].pos = {1, 2, 3}        // exact same line

Per-column access is the bonus `#soa` gives you:

    soa.pos                       // [N][3]f32  - the whole pos column
    soa.mass[i]                   // f32

Dynamic SoA uses `append_soa` (or the generic `append`, which dispatches):

    append_soa(&soa_dyn, Particle{mass = 1})

And `soa_zip` builds an SoA view over loose slices, `soa_unzip`
takes one apart:

    s := soa_zip(pos = positions, vel = velocities)
    p, v := soa_unzip(s)

---

## The mental model: AoS vs SoA (with diagram)

This is the diagram to internalize. Consider four particles, where
each `Particle` is `{ pos: [3]f32, vel: [3]f32, mass: f32 }`. Seven
floats per particle, twenty-eight bytes per particle, ignoring
padding.

### Array of structs - `[4]Particle`

All seven fields of particle 0, then all seven fields of particle 1,
and so on. One particle is one contiguous block.

    byte offset:  0                              28                             56                             84

                  +--------- p[0] -----------+   +--------- p[1] -----------+   +--------- p[2] -----------+   +--------- p[3] -----------+
                  | px py pz | vx vy vz | m |   | px py pz | vx vy vz | m |   | px py pz | vx vy vz | m |   | px py pz | vx vy vz | m |
                  +--------------------------+   +--------------------------+   +--------------------------+   +--------------------------+

### Struct of arrays - `#soa [4]Particle`

All `pos.x` values, then all `pos.y` values, ... then all `mass`
values. One *column* is one contiguous block.

    byte offset:  0                16                32                48                64                80                96                112

                  +-- pos.x col -+  +-- pos.y col -+  +-- pos.z col -+  +-- vel.x col -+  +-- vel.y col -+  +-- vel.z col -+  +-- mass col --+
                  | x0 x1 x2 x3 |  | y0 y1 y2 y3 |  | z0 z1 z2 z3 |  |vx0 vx1 vx2 vx3|  |vy0 vy1 vy2 vy3|  |vz0 vz1 vz2 vz3|  | m0 m1 m2 m3 |
                  +-------------+  +-------------+  +-------------+  +-------------+  +-------------+  +-------------+  +-------------+

Same seven floats per particle, same total byte count. Different
order on disk, sorry, in RAM.

### Why this matters: the position-only update loop

A modern x86 CPU does not fetch one byte from RAM at a time. It
fetches a **cache line**, typically 64 bytes, and stashes it in L1.
The next read from anywhere in those 64 bytes is essentially free.
The next read from a different 64-byte line is hundreds of cycles.

Now consider the loop `for i in 0..<N { particles[i].pos += particles
[i].vel * dt }`. It touches `pos` and `vel`, not `mass`. With one
million particles:

- **AoS:** each cache line of 64 bytes holds about two complete
  particles (~56 bytes of data + padding). The loop reads `pos` and
  `vel` (24 bytes) and *also drags `mass` (4 bytes) into cache for
  free, then ignores it*. Roughly 4/28 = 14 percent of the bytes
  fetched are wasted on the unused `mass` field. Tolerable.
- **SoA:** the loop touches the `pos.x`, `pos.y`, `pos.z`, `vel.x`,
  `vel.y`, `vel.z` columns. The `mass` column is never read; *its
  cache lines are never fetched*. Zero waste. Each cache line of
  `pos.x` holds 16 consecutive `f32`s the loop wants next.

For four particles the difference is invisible. For four million it
is the difference between 60 fps and 12 fps. This is the entire
reason `#soa` exists.

It is also why SoA is the natural shape for SIMD: `simd.f32x8` wants
8 consecutive `f32`s of the same field. `soa.pos[0].x .. .x[7]` are
8 consecutive floats. `aos[0..8].pos.x` are 8 floats with 24 bytes
of garbage between each one.

---

## When to use SoA vs AoS

| Scenario | Use AoS (`[N]T`) | Use SoA (`#soa [N]T`) |
|---|---|---|
| N is small (handful, a few dozen) | yes | overkill; no measurable win |
| Code touches most or all fields of one element at a time | yes | worse - one cache line fetched per field |
| Hot loop touches a small subset of fields across many elements | worse - wasted cache | yes |
| Vectorizing with SIMD over one field | painful (strided loads) | natural (contiguous loads) |
| Passing a per-field column to a GPU / audio mixer / FFT | painful (must copy out) | `soa.field[:]` is already a `[]T` |
| Debugging - printing one element | one struct literal | also one struct literal (Odin's `fmt` reconstructs the row view) |
| Default choice while sketching | yes | switch once a profiler points here |
| ECS storage for thousands+ of entities | no | yes |

Rule of thumb: **start with AoS, measure, switch the hot tables to
`#soa`**. The cost of switching is one keyword and zero changes to
calling code, which is the whole point.

---

## Tasks

Open `main.odin`. The procedure-level comments walk you through six
exercises that build up structs, then pivot to `#soa`, then prove the
two layouts present an identical interface despite different bytes.

When you finish, run:

    odin run main.odin -file

Compare your output to `expected-output.txt`. If it matches you're
done.

---

## Now break it on purpose

After the file works, try each in turn, observe the message, then
revert:

1. **Methods are not a thing.** Inside the struct body, try to add a
   procedure: `Particle :: struct { pos: [3]f32, update :: proc() {} }`.
   The compiler refuses - a struct body is a list of fields, not a
   class body. The fix is to write a free procedure that takes a
   `^Particle`.
2. **Partial positional literal.** Try `Particle{1, 2, 3}` (three
   positional values, but the struct has three fields after expansion
   - `pos`, `vel`, `mass`, where `pos` is a `[3]f32`). The error
   tells you positional literals must supply every field. Switch to
   named: `Particle{mass = 1}`. Unset fields zero-initialize.
3. **`aos.pos` is meaningless.** On a normal `[4]Particle`, try
   `aos.pos`. The compiler rejects it - there is no `pos` field on
   `[4]Particle`, only on `Particle`. Only `#soa` arrays expose
   per-field columns.
4. **Layout-changing `using`.** Add `using pos: [3]f32` as the first
   field of `Particle` and notice `p.x` now works directly (the
   `[3]f32`'s `.x` swizzle is promoted to `Particle`'s scope). Useful
   for short hands, dangerous when two embedded structs both promote
   a field of the same name (the compiler will tell you).

---

## Low-level notes

- **Alignment and padding.** Each field aligns to its type's
  alignment (`f32` aligns to 4 bytes, `f64` to 8, `[3]f32` to 4). The
  struct's own alignment is the max of its fields' alignments. The
  struct's `size_of` rounds up to a multiple of its alignment so
  arrays of structs stay aligned. Same rules as C, no surprises.
- **`size_of([N]Particle) == size_of(#soa [N]Particle)`**, give or
  take a few bytes for the SoA bookkeeping in the slice/dynamic
  cases. SoA is a *transposition*, not a packing - the same bytes
  live in a different order, not in less space.
- **`#packed` removes padding** for protocol structs (network
  packets, file headers, hardware registers). Use sparingly: misaligned
  loads are slow or trap on some architectures.
- **`#soa` is rare in PLs.** Most languages give you AoS or nothing.
  C++ has `std::experimental::simd` and several third-party SoA
  libraries (EnTT, Unity DOTS); Rust has crates like `soa-derive`.
  Both require you to give up the `array[i].field` syntax to get the
  benefit. Odin gives you both at once, in the language, no library
  required. This is the part to brag about.
- **`#soa` slices carry one length and one base pointer per field
  column**, packaged together. Iterating with `for p, i in soa_slice`
  works exactly like iterating an AoS slice.

---

## Next: `12b-using-and-procedure-groups/`

Two struct-adjacent features get their own short lesson before we
leave the data-layout topic: `using` for field promotion (embed one
struct in another and access its fields without prefix) and procedure
groups (Odin's explicit alternative to C++/C# overloading, where you
bundle multiple named procs under a shared dispatch name like
`fmt.println` does internally).

After that, lesson 13 covers procedures-as-values: take a pointer to
one, store it in a struct field, pass it as a parameter, build a
table of them. Where this replaces the inheritance hierarchies you'd
build in C#.
