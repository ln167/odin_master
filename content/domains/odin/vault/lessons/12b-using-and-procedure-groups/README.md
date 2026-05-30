# Lesson 12b - `using` and procedure groups

## Concept

Two small features that don't deserve their own lesson but do
deserve to be understood properly, because both come up everywhere
in real Odin code and both look superficially like things they
aren't. They share a theme: flattening or grouping names that would
otherwise need verbose prefixes.

- **`using`** flattens namespaces. Embed a struct's fields onto an
  outer struct, bring an enum's labels into a local scope, or
  promote a proc parameter's fields into the proc body. Three
  forms, one keyword, one rule: the inner names become available
  one level up.
- **Procedure groups** bundle several type-specialized procedures
  under a single name. Odin does not do implicit overloading the
  way C# and C++ do; instead you declare each specialization with a
  unique name and then `name :: proc{a, b, c}` to bind them under
  one alias. The compiler picks the right one based on the argument
  types at the call site.

Neither is conceptually deep. Both are syntactic sugar that resolves
entirely at compile time. The point of this lesson is to recognize
the syntax when you see it in `core:` and to know when to use it
yourself.

---

## Part 1: `using` - flattening namespaces

### Compared to OOP inheritance

If your instinct on hearing "embed a Transform in an Entity" is
"`class Entity : Transform`" - put that down. Odin has no
inheritance, no base classes, no `super`, no virtual dispatch. What
it has, and what `using` gives you, is **composition that reads
like inheritance from the outside**.

An outer struct that `using`s an inner struct exposes the inner's
fields at the outer's scope:

```odin
Transform :: struct {
    x, y, z: f32,
}

Entity :: struct {
    using xform: Transform,
    hp: int,
}

e: Entity
e.x = 1     // reaches through xform automatically
e.y = 2
e.hp = 100
```

From the call site, `e.x` looks like Entity has an `x` field. It
doesn't - it has a `Transform xform` field whose `x` has been
*promoted* into Entity's scope. There is no vtable, no inherited
method, no `is Transform` check. At runtime, `e.x` compiles to
`e.xform.x`. The promotion happens at compile time, in the source.

This is closer to C++'s anonymous structs or Rust's
`Deref`-via-newtype than to C# inheritance. Behavior never tags
along. Only field names get promoted.

### Three forms

The same keyword shows up in three places.

**1. Inside a struct - promote a sub-struct's fields onto the
outer struct.**

```odin
Entity :: struct {
    using xform: Transform,
    hp: int,
}
```

Access `e.x`, `e.y`, `e.z` directly as if they were declared on
Entity. The named field (`xform`) is still there, so `e.xform.x`
also works and is sometimes clearer.

**2. As a statement - bring an enum's labels into the current
scope.**

```odin
demo :: proc() {
    Color :: enum { Red, Green, Blue }
    using Color
    c := Red          // no Color. prefix
}
```

After `using Color`, the labels `Red`, `Green`, `Blue` are
identifiers in the surrounding scope. The Odin docs themselves
note that this is mildly discouraged in favor of the implicit
selector (`c: Color = .Red`), because pulling enum labels into a
broad scope is exactly the kind of namespace pollution that gets
confusing fast. But the form exists, and you will see it in
tightly-scoped procs where the same enum is referenced ten times in
a row.

**3. In a procedure parameter - promote a struct argument's fields
into the proc body.**

```odin
print_entity :: proc(using e: Entity) {
    fmt.printfln("at (%v, %v, %v) hp=%v", x, y, z, hp)
}
```

Inside the body, you can write `x`, `y`, `z`, `hp` directly as if
they were locals. `e` itself is still a valid name; you can mix and
match.

### Reference syntax

```odin
// 1. struct field promotion
Outer :: struct {
    using inner: Inner,
    other: int,
}

// 2. enum into local scope
demo :: proc() {
    Dir :: enum { North, East, South, West }
    using Dir
    d := North
}

// 3. proc parameter promotion
draw :: proc(using p: Player) {
    fmt.println(name, hp)   // fields of Player, accessed directly
}
```

All three forms compile to plain field/label access. There is no
runtime cost and no hidden indirection. `using` is purely a source-
level rewrite.

### When to use vs avoid

**Use it when:**

- A struct has one obvious "base" sub-struct that you access
  constantly, like `Entity { using xform: Transform, ... }`. The
  promotion mirrors how you talk about the data (an entity *has a
  position*) and removes a layer of `.xform.` noise.
- A short proc references the same enum's labels many times. Inside
  the proc body, `using Color` cuts ten `Color.` prefixes down to
  zero.
- A proc's job is to operate on every field of its struct argument
  symmetrically. `proc(using p: Player)` reads like the fields
  *are* the parameters, which often matches the intent.

**Avoid it when:**

- A reader of your code would have to hunt to figure out where a
  bare name came from. If `e.foo` could mean any of four embedded
  structs, you've made the file harder to read in service of three
  characters of typing.
- Two `using`'d structs in the same outer struct could ever have a
  field with the same name. The compiler will reject the collision,
  but the fix usually means undoing one of the `using`s anyway, and
  it's a refactor footgun.
- You're using it at file or package scope. `using` is for local
  ergonomics, not for organizing big chunks of program structure.

The Odin standard library uses `using` sparingly: enough that you
recognize the pattern, rare enough that you can usually figure out
where a field came from. Aim for the same.

---

## Part 2: procedure groups - explicit overloading

### Compared to OOP overloading

In C# and C++ you can declare several methods with the same name
and different parameter types, and the compiler picks one at each
call site:

```csharp
void Draw(Circle c)   { ... }
void Draw(Square s)   { ... }
void Draw(Triangle t) { ... }

Draw(someCircle);   // compiler picks Draw(Circle)
```

This is "implicit overloading": three methods, one name, the
compiler resolves which one based on argument types. C# also has
ad-hoc rules (best-match scoring, conversions, ambiguities) that
sometimes pick a different overload than the human reader would
guess.

Odin doesn't do this. You cannot declare two procedures with the
same name in the same scope. What you can do is declare three
procs with *different* names and then group them under a fourth
name:

```odin
draw_circle   :: proc(c: Circle)   { ... }
draw_square   :: proc(s: Square)   { ... }
draw_triangle :: proc(t: Triangle) { ... }

draw :: proc{draw_circle, draw_square, draw_triangle}
```

Now `draw(some_circle)` works, `draw(some_square)` works,
`draw(some_triangle)` works. The compiler picks the right
specialization by matching the argument type against each member of
the group. The original `draw_circle`, `draw_square`,
`draw_triangle` names also still work directly.

The difference from C# is one of explicitness, not power. Every
overload set is named, listed in one place, and visible from a
single declaration. You cannot accidentally extend someone else's
overload set from a different file by happening to declare a
function with the matching name - the group is a closed list. There
are also fewer surprises in resolution, because each candidate has
a unique name and the compiler's job is just "find the one whose
parameters fit", not "find the best of N close-but-not-equal
candidates".

### Reference syntax

Declare each specialization as a normal proc with a unique name,
then bind them into a group:

```odin
area_circle   :: proc(c: Circle)   -> f32 { return PI * c.r * c.r }
area_square   :: proc(s: Square)   -> f32 { return s.side * s.side }
area_triangle :: proc(t: Triangle) -> f32 { return 0.5 * t.base * t.height }

area :: proc{area_circle, area_square, area_triangle}

a := area(some_circle)     // dispatches to area_circle
b := area(some_square)     // dispatches to area_square
```

The syntax is `name :: proc{a, b, c}` - the word `proc`, then
braces, then a comma-separated list of procedure names. No
parameter list on the group itself; the group has no signature, its
members do.

### Where you've seen this already

Every "looks like one function, dispatches by type" name in the
standard library is a procedure group:

- `fmt.println` is a proc group dispatching to per-type printers.
- `core:math/linalg.length` dispatches to `vector_length` versus
  `quaternion_length` based on the argument type.
- `core:math/linalg.dot` dispatches across vector dot, matrix dot,
  quaternion dot.
- `append` is a proc group that picks between `append_elem`,
  `append_elems`, `append_string`, `append_soa`, etc.

The convention is: the user-facing name is the group; the actual
implementations are named `<group>_<thingy>` and listed inside the
`proc{...}`. When you go reading `core:` and hit a function that
seems to take "anything", grep for `name :: proc{` and you'll find
the dispatch list.

### Combining with parametric polymorphism

A procedure group can mix concrete procs and *parametrically
polymorphic* (generic) procs (lesson 14). One member might be
`do_thing_explicit :: proc(x: f32)` and another might be
`do_thing_generic :: proc(x: $T)`. The compiler tries each in turn
and picks the most specific match. This is how a single `length`
name in linalg handles both fixed types and any user-defined vector
type the generic version accepts. Don't worry about the details
here; this lesson is about the syntax. The generic side gets its
own lesson later.

---

## Tasks

Open `main.odin`. The procedure-level comments walk you through five
exercises split across the two parts: three for `using` and two for
procedure groups. Type the bodies yourself.

When you finish, run:

    odin run main.odin -file

Compare your output to `expected-output.txt`. If it matches you're
done.

---

## Now break it on purpose

After the file works, try each in turn, observe the message, then
revert:

1. **Colliding promoted fields.** Declare a second struct
   `Health :: struct { x: int, hp: int }` and embed it in Entity
   alongside `using xform: Transform`, also with `using`. Both
   inner structs promote a field named `x`. The compiler refuses
   to build and tells you which name is ambiguous. The fix is to
   drop one of the `using`s and access that struct through its
   field name explicitly.
2. **Call a proc group with a type that no variant accepts.** Add a
   call like `area("hello")` (a string, not a shape). Build, read
   the error. The compiler lists every member of the proc group it
   considered and explains that none of them accept a `string`.
   This is the "no implicit conversion" rule of Odin in action -
   the group is a closed list and the type must match one member
   exactly.
3. **Bring two enums into scope with `using` and collide labels.**
   Inside a proc, declare `Color :: enum { Red, Green }` and
   `Mood :: enum { Red, Calm }`. Try `using Color` then
   `using Mood`. Build. The compiler tells you `Red` is now
   ambiguous. This is the namespace pollution the docs warn about,
   made concrete.

---

## Low-level notes

- `using` is **pure compile-time syntactic sugar**. The compiler
  rewrites `e.x` to `e.xform.x` at parse time. There is no
  reflection, no extra field lookup, no allocation, no runtime
  cost. The bytes of Entity look exactly like a struct containing
  a Transform and an int.
- A procedure group is **also compile-time only**. There is no
  runtime dispatch, no vtable, no function pointer indirection.
  Once the compiler picks `area_circle` for `area(some_circle)`,
  the call site is a direct call to `area_circle`, indistinguishable
  from if you'd written `area_circle` by hand. No overhead.
- A proc group is **not** a proc value. You cannot store `area` in
  a variable of type `proc(...) -> f32`, because `area` doesn't
  have a single signature - it has three. If you need first-class
  dispatch (a proc value held in a variable), see lesson 13;
  procedure groups solve a different problem.
- Both features exist purely for human ergonomics. The compiled
  code is the same as if you'd inlined the promoted field access
  and called the type-specific proc by its full name.

---

## Next: `13-procedures-as-values/`

A procedure is also a value in Odin: an 8-byte pointer into the
code segment. Lesson 13 covers proc types, proc literals, dispatch
tables indexed by enum, and why Odin has no closures. Procedure
groups (compile-time dispatch) and procedure values (runtime
dispatch) are siblings; the next lesson is the other half.
