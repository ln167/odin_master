# Odin is not C — the C-ism checklist

There is a strong, constant pull to explain Odin using C vocabulary and C mental
models. It is the single most common way these lessons go wrong. The danger
isn't just stylistic — C framings produce statements that are **factually false
about Odin**. The lesson then teaches the reader something untrue and, worse,
trains the C habit the curriculum exists to unlearn.

The rule is simple and absolute:

> **Explain every concept on its own terms, in Odin's vocabulary. Do not
> reference another language — not C, not C#, not C++, not Rust, not anything —
> anywhere on the page, not even as a labeled contrast. There is no "in C, by
> contrast" escape hatch.**

Why so strict? Because a comparison is the exact place a C mental model sneaks
back in: you write a correct "unlike C, …" sentence, and two paragraphs later,
still in C's frame of mind, you describe Odin's own behavior with C's
vocabulary. Removing the comparison entirely removes the surface. It also makes
better lessons — a concept that can only be explained by reference to another
language hasn't actually been explained.

The table below is a **diagnostic for you, the author**, not page content: it
names the C framing on the left so you can recognize it, and gives the Odin
reality on the right. The fix is always the same — **write the right column,
and never mention the left.** Read this whole file before writing prose
(workflow step 4) and again when sweeping the finished page (step 6). When you
catch yourself near the words **pointer, memory, array, allocate, header, macro,
cast, string, null, size**, stop and check the table.

If you're unsure whether an Odin construct exists or behaves the way you're
about to write it, that uncertainty *is* a claim — send it through the
verification step (write a probe that compiles and prints, see
`verification.md`). Do not resolve it from C intuition.

---

## The canonical sin: pointer arithmetic

This is the one the user has been burned by, and it's worth its own section.

**Wrong (a C-ism):** "to get `commands[i]`, the CPU does pointer arithmetic —
it adds `i * size` to the base pointer." / "you can walk the array by
incrementing the pointer."

**Why it's false in Odin:** Odin has **no pointer-arithmetic operators**. You
cannot write `p + 1`, `p++`, or `p[i]` on a bare `^T` to step through memory the
way C lets you. Indexing is a property of *arrays and slices* (`s[i]`,
`s[lo:hi]`), which are bounds-checked language constructs, not raw pointer math.
Raw byte-offsetting exists only as an explicit, opt-in escape hatch
(`mem.ptr_offset`, `raw_data`, `intrinsics`), and you should not describe
ordinary indexing code as if it were that.

**Right (Odin):** "Because every slot is the same size, `commands[i]` is a
direct indexed access — step `i` slots from the start of the array. No chasing a
pointer off to somewhere else in memory." (Note how the reference page says
exactly this — "a direct jump … no following a pointer off to somewhere else" —
without ever invoking pointer arithmetic.)

---

## The checklist

| C-ism (wrong for Odin) | The Odin reality |
|---|---|
| "pointer arithmetic", `p++`, `p + i`, "increment the pointer to walk the array" | No pointer-arithmetic operators on `^T`. You index/slice arrays and slices (`s[i]`, `s[lo:hi]`), which are bounds-checked. Raw offsetting is an explicit escape hatch (`mem.ptr_offset`, `raw_data`), not ordinary code. |
| "header file", `#include`, declaration vs definition, include guards | Odin imports **packages** (a directory of `.odin` files): `import "core:fmt"`. No headers, no includes, no forward declarations. |
| "the preprocessor", `#define`, macros, macro expansion | Odin has **no preprocessor and no macros**. Compile-time branching is `when`; build-time values are `-define:X=…` read via `#config(X, default)`; "generics" are parametric polymorphism (`$T`). |
| `malloc` / `free` / "allocate on the heap" (bare) | Allocation goes through an **allocator**, usually `context.allocator`: `new(T)`, `free(p)`, `make([]T, n)`, `delete(s)`. Arena/temp allocators are idiomatic (lessons 08, 09). Say *which* allocator. |
| null-terminated strings, `char*`, "the string ends at `\0`" | `string` is a `{data, len}` value (a read-only `[]u8` view) — **not** null-terminated. `cstring` is the NUL-terminated FFI type and appears only at C-binding boundaries (lesson 15). |
| `void*` | `rawptr`. |
| `typedef` | A type alias `Foo :: Bar`, or a new incompatible type `Foo :: distinct Bar` (lesson 10b). |
| arrays "decay to pointers" when passed | Fixed arrays `[N]T` are **values** — assigned and passed **by copy**. A `[]T` slice is the `{ptr, len}` view you pass when you want to reference the elements. There is no decay. |
| `sizeof`, `alignof`, `offsetof` | `size_of`, `align_of`, `offset_of` (and `type_of`). They're compile-time, and the page must show their *measured* result. |
| "uninitialized / garbage memory by default" | Odin **zero-initializes by default**. You opt *out* explicitly with `x: T = ---`. So a fresh value is its zero value, not garbage. |
| implicit integer promotion, silent narrowing/widening | Odin requires **explicit conversion** between numeric types (`f32(x)`, `int(y)`). No silent promotion or truncation. |
| "an enum is just an int", doing arithmetic on enum values | Enums are distinct typed labels; you don't freely do integer math on them or mix them with `int` without a cast. (Bit_sets are the typed set built on enums — lesson 05b.) |
| hand-rolled tagged union: "keep an `enum` tag next to a `union` and check it yourself" | Odin's `union` is **first-class**: the tag is maintained for you and the type-switch is the only read path, checked for exhaustiveness. Don't describe Odin's union as if you maintain the discriminant — that's the C version it replaces. |
| `NULL` everywhere for "absent" | Pointers can be `nil`, but "no value" is often `Maybe(T)`, a nilable union, or the `(val, ok)` / `(val, Error)` multi-return idiom — not a null pointer. |
| `printf` format-string risk / `%` mismatches as UB | `fmt.printf` / `fmt.println` are type-aware; mismatches are caught, not undefined behavior. `%v` prints any value. |
| `goto cleanup:` / manual cleanup ladders | `defer` runs cleanup at scope exit, in reverse order (lesson 07b). |
| `errno`, sentinel return values, `-1 means error` | Multi-return `-> (T, Error)` with `or_return` / `or_else`; the error is usually an enum or union (lesson 11). |
| "the stack frame / calling convention" talk borrowed from C | Fine to discuss stack vs heap (lesson 07d), but in Odin terms — value semantics, `context`, allocators — not C ABI folklore. |
| `#pragma pack` | Odin's `struct #packed` removes inter-field padding; `#raw_union` is the untagged (C-style) union. Name the Odin attribute, and note it's *not* what `#packed` does to a normal struct vs a union. |

---

## Don't compare to other languages — explain self-contained

The reference lesson's README has "Compared to C / C# / Rust" and "Leveling with
you (if you come from OOP)" sections. Those belong to the README. **They do not
go in the HTML.** The page explains Odin as if no other language existed.

Three places where a comparison feels natural — and what to do instead:

- **"Why you'd reach for it" alternatives.** Showing the inferior alternative is
  a great device (see `visual-techniques.md`), but describe the alternative
  *structurally*, in Odin terms — "an array of pointers to separately-allocated
  objects, each dispatched through a stored function pointer" — not "the OOP /
  C# / inheritance way." The reader learns the data layout and why it's worse,
  with no other language named.
- **FFI / foreign data.** Multi-pointers (`[^]T`) and `cstring` exist largely
  for talking to foreign libraries. You can say "a run of values handed to you
  from outside with no length attached" or "a NUL-terminated string from a
  foreign library" — describe the *situation*, not "this is how C does strings."
- **A genuine insight that lived in a comparison.** Translate it to the bare
  Odin fact. "Unlike C, the tag is maintained for you" → "the tag is maintained
  for you, and the type-switch is the only way to read it." Same insight, no
  foil.

The failure mode that makes this rule strict: you write one correct comparison,
and it puts you in the other language's frame of mind for the next three
paragraphs. No comparisons means no frame to slip back into.
