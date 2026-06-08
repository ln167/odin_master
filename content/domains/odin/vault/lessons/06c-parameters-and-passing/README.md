# Lesson 06c - parameters and passing

## Concept

Two rules govern every procedure call in Odin, and once they click the
whole "do I pass a value or a pointer?" question answers itself.

**Rule 1 - a parameter is an immutable binding.** Inside the procedure
you may *read* a parameter but you may not *reassign* it. `n += 1` on a
parameter `n` is a compile error, for every type, pointer or not. The
name is welded to the value it arrived with.

**Rule 2 - a parameter behaves like an independent copy.** Whatever you
do to it, the caller's value is untouched (rule 1 already stops you
reassigning it; and for value types, the caller has its own storage). To
change something the *caller* can see, you pass a **pointer** and write
*through* it. Note "behaves like" - not "is always physically copied":
see rule 3.

**Rule 3 - physically, big values may be passed by hidden pointer.** Odin
did *not* keep C's "everything is copied" model; the FAQ is explicit that
"this behaviour was changed for performance reasons." The `odin` calling
convention passes anything larger than 16 bytes *by reference* (an
immutable pointer) instead of copying every byte. Because rule 1 makes
the parameter unwritable, you normally can't tell whether you got a copy
or a hidden pointer - so it changes nothing about how you reason. We'll
meet the one case where it leaks, and then forget about it.

This lesson is the synthesis of the last four: you've seen values
(`[N]T`, lesson 05), views (`[]T`, lesson 06), and pointers (`^T`,
lesson 06b). Now: what happens when each of them crosses a procedure
boundary.

---

## Leveling with you (if you come from OOP)

In C# a parameter is a normal mutable local. You can write:

```csharp
void Foo(int n) {
    n += 1;        // legal: n is just a local initialized from the argument
}
```

The reassignment is invisible to the caller (value types are copied),
but the *compiler lets you do it*. Odin does not. `n` is a binding, not
a fresh local you own, and `n += 1` is rejected at compile time. If you
want a scratch variable, you ask for one explicitly by **shadowing**:
`n := n` declares a new local that happens to share the name.

The other half is mutation that the caller *should* see. In C# you reach
for `ref` and `out`:

```csharp
void Heal(ref Player p, int amount) { p.Hp += amount; }
```

Odin has no `ref` or `out` keyword. You spell the pointer yourself:

```odin
heal :: proc(p: ^Player, amount: int) { p.hp += amount }
```

Same machine code, less sugar - and the call site shows it: `heal(&player, 10)`.
The `&` at the call is the caller saying out loud "yes, I'm handing you
something you can change."

---

### Compared to C

C parameters are fully mutable locals - `void foo(int n) { n++; }` is
fine, the increment is just invisible to the caller. Odin makes the
parameter immutable, which is a deliberate restriction C doesn't have.
The payoff is rule-3: C **never** silently passes a value as a pointer;
what you write is what you get. Odin's calling convention is allowed to
promote a big value to a hidden pointer precisely *because* the parameter
is immutable, so the promotion can't be observed. C trades that
optimization away for "no surprises"; Odin trades a tiny, well-defined
surprise (below) for the optimization.

| Idea | C | Odin |
|------|---|------|
| Reassign a parameter | `n++` allowed (local copy) | compile error - immutable |
| Get a mutable local | already have one | shadow: `n := n` |
| Mutate the caller's value | `*p += 1` via `int *p` | `p^ += 1` via `^int` |
| Big struct, avoid copy | pass `T *` by hand | pass by value - compiler may do it for you |

### Compared to C#

| C# | Odin |
|----|------|
| `void Foo(int n) { n++; }` (allowed) | compile error; shadow `n := n` first |
| `ref T` parameter | `^T` parameter |
| `out T` parameter | `^T` parameter |
| call: `Foo(ref x)` | call: `foo(&x)` |
| value types copied; classes shared | everything copied; share via `^` or pointer-bearing types |

### Compared with Rust

Rust is the closest cousin here. Rust bindings are immutable by default
(`let n = ...`), and you opt into mutability with `let mut`. A function
parameter is the same: `fn foo(mut n: i32)` to rebind it. Odin has no
`mut`; the parameter is always immutable, and the `n := n` shadow is the
equivalent of Rust's `let mut n = n`. For caller-visible mutation, Rust's
`&mut T` is Odin's `^T` - except Rust's borrow checker enforces that only
one `&mut` exists at a time, which is exactly the protection against the
aliasing footgun below that Odin does **not** give you.

---

## Reference: the syntax you'll need

### The immutable-parameter error

```odin
increment :: proc(some_int: int) {
    some_int += 1     // ERROR
}
```

```
Error: Cannot assign to 'some_int' which is a procedure parameter
    Suggestion: Did you mean to pass 'some_int' by pointer?
```

That suggestion is the whole lesson in one line: to *mutate*, take a
pointer.

### Shadow for a mutable local

```odin
countdown :: proc(n: int) {
    n := n            // new local; the parameter is now hidden behind it
    for n > 0 { fmt.println(n); n -= 1 }
}
```

`n := n` is not a paradox - the left `n` is a brand-new variable, the
right `n` is the parameter being read one last time to initialize it.
The change stays local; the caller never sees it. Compile with `-vet`
and the compiler recognizes this idiom and won't flag the shadow.

### Mutate the caller via a pointer

```odin
add_point :: proc(score: ^int) {
    score^ += 1       // write through the address to the caller's int
}

s := 0
add_point(&s)         // s is now 1
```

For a struct pointer, auto-deref (lesson 06b) means you write `e.x`, not
`e^.x`.

### Pointer-bearing types leak element writes without a `^`

A slice, map, dynamic array, or string is a small header that *contains*
a pointer (lesson 06). Pass one by value and you copy the header, but the
inner pointer still aims at the same backing data - so element writes
reach the caller with no `^` in sight:

```odin
zero_first :: proc(s: []int) { s[0] = 0 }   // changes the caller's array
```

What you *can't* do is reassign the header (`s = ...`, rule 1) or change
its length and have that stick - the header is a copy. For that you pass
`^[]T` or `^[dynamic]T`, a pointer to the header itself.

### The "odin" calling convention and the one leak

From the official overview (Calling conventions): the default `odin`
convention "passes all parameters larger than 16 bytes by reference."
From the FAQ: "procedure parameters are immutable values ... if it is
more efficient to pass them by value (making a copy) or ... as an
immutable pointer internally, it does not matter from a user perspective
as the parameter value is immutable."

So a big struct parameter is *secretly* an immutable pointer to the
caller's value. Invisible - except in exactly one case: if you pass the
**same** variable both as a big value parameter *and* as an explicit
`^T`, then writing through the explicit pointer also changes the
"by value" parameter, because they are the same memory:

```odin
Big :: struct { a, b, c, d: int }   // 32 bytes > 16 -> passed by reference

footgun :: proc(v: Big, p: ^Big) {
    p.a = 999                       // v.a now reads 999 too - same memory!
}
```

The fix, when you need a guaranteed independent copy, is to force one
with a shadow: `v := v` at the top.

---

## Choosing: by value or by pointer

You spend less energy on this than you'd think, because the answer is
usually "by value." Reach for a pointer (`^T`) only when one of these is
true:

1. **You must mutate the caller's value** - the main reason. `update_entity :: proc(e: ^Entity, dt: f32)`.
2. **Shared single instance** - one `World` / `GameState` many procedures read and write: pass `^World`.
3. **Out-parameter** - fill in a result: `parse :: proc(data: []byte, out: ^Mesh) -> bool`.
4. **Optional / "maybe absent"** - `^T` can be `nil`; a value can't.
5. **Identity / linked structure** - `parent: ^Entity` in a tree; the *address itself* is the meaning.

Otherwise pass by value, and here's why it's not a perf compromise:

- **Small types** (`int`, `Vec3`, a handle, an enum) are cheaper as
  values than as a pointer-plus-dereference.
- **Big read-only structs** are already passed by hidden pointer for you
  (rule 3) - so a value parameter costs nothing *and* stays immutable.
- **Pointers cost you**: every `^T` is a possible `nil` crash, can alias
  (the footgun), and pointer-chasing scatters memory access and wrecks
  cache - the opposite of what a tight game loop wants.
- **Slices/maps/dynamic arrays already carry a pointer inside**, so you
  almost never need `^[]T`.

"Pointer by default" would buy you nil crashes, aliasing bugs, and cache
misses for no benefit. Mutation and shared identity are the real reasons;
everything else goes by value.

## Wanting the whole value back out (`p^`)

When you *do* hold a pointer (because of a reason above), you sometimes
want the whole pointed-at value as a value. That's `p^` on the right-hand
side. The canonical game pattern is **move-and-revert**:

```odin
move_or_revert :: proc(e: ^Entity, dx, dy: int, blocked: bool) {
    old := e^              // copy the WHOLE entity out (you only hold a pointer)
    e.x += dx
    e.y += dy
    if blocked { e^ = old }   // overwrite the WHOLE entity back, in one shot
}
```

You took `e` as a pointer to mutate it; that same pointer is what lets
you snapshot (`old := e^`) and restore (`e^ = old`) the whole value when
the gameplay logic needs to. Mutation forces the pointer; "I need the
whole prior state" is the occasional moment you dereference it.

---

## Tasks

Open `main.odin`. Five exercises: shadow a parameter for a local copy,
mutate a caller's int through a pointer, watch a slice element-write
leak, and use whole-value deref for a move-and-revert. Type the bodies
yourself.

When you finish:

    odin run main.odin -file

Compare against `expected-output.txt`.

---

## Now break it on purpose

After the file works, try each, read the message, then revert:

1. **Reassign a parameter.** Add `some_int += 1` inside a proc that takes
   `some_int: int`. Read the exact error - "Cannot assign to 'some_int'
   which is a procedure parameter" with the "pass by pointer?" hint. This
   is rule 1, enforced.
2. **Reassign a slice parameter.** Inside `zero_first`, add `s = []int{}`.
   Same error: even a pointer-bearing type's header is an immutable
   binding. You can write `s[0]` (through the pointer) but not `s = ...`.
3. **The aliasing footgun.** Declare `Big :: struct { a, b, c, d: int }`
   and `footgun :: proc(v: Big, p: ^Big) { p.a = 999; fmt.println(v.a) }`.
   Call `footgun(b, &b)` for some `b: Big`. It prints **999**, not `b`'s
   original `a` - because `Big` is 32 bytes, the "by value" `v` is the
   same memory as `b`. Now add `v := v` as the first line and rerun: it
   prints the original. You just watched rule 3 leak and the shadow fix it.
4. **Forget the `&`.** Call `add_point(score)` without the `&`. The
   compiler rejects it - it wants a `^int`, you gave it an `int`. The
   call site can't accidentally pass-by-pointer; you must ask.

---

## Low-level notes

- The 16-byte threshold is part of the documented `odin` calling
  convention, "subject to change," and consistent for a given type and
  platform - so it's reliable but not something to hard-code logic
  around. It exists only to save copies; it never changes semantics.
- Immutability is what *enables* the promotion: because the parameter
  can't be written, the compiler is free to hand over the caller's bytes
  directly instead of duplicating them, and no program can observe which
  it chose (except via the aliasing case above).
- This is also why Odin doesn't need C++'s "return value optimization" as
  a named feature - the calling convention already moves large results
  without copying.
- `n := n` compiles to nothing when the optimizer can prove the copy is
  unused; when it's used, it's a normal stack local. The `-vet` flag
  special-cases the same-name shadow so it won't warn.
- A slice/map/dynamic-array parameter copies only its header, never its
  elements - the cheap-call property from lesson 06. On 64-bit the headers
  are: slice `[]T` = 16 bytes, `map[K]V` = 32, `[dynamic]T` = 40 (it also
  carries a 16-byte allocator handle). All ≤ the 16-byte-or-not threshold
  matters only for whether *that header* rides by value or by hidden
  pointer; the elements never move either way.

---

## Next: `07-dynamic-arrays/`

A `[dynamic]T` is the first type where "pass a pointer to the header"
becomes routine: `append` can change the header's length and reallocate
its data, and those changes only persist for the caller if the procedure
holds a `^[dynamic]T`. Everything in this lesson - immutable headers,
mutate-through-a-pointer - is about to pay off.
