# Lesson 07 - dynamic arrays

## Concept

A dynamic array in Odin is written `[dynamic]T` and behaves as a
**growable, owned buffer**. Unlike the fixed array `[N]T` (a value with
a compile-time length) or the slice `[]T` (a borrowed view), a
`[dynamic]T` *owns* its memory. It carries a data pointer, a length,
a capacity, and an allocator. Calling `append` grows the buffer when
length would exceed capacity; calling `delete` returns the buffer to
the allocator. If you don't call `delete`, the memory leaks.

This is the workhorse container for game-dev code: entity lists,
particle pools, event queues, anything where N is known only at
runtime and changes over time.

---

## Leveling with you (if you come from OOP)

If you've been writing C# `List<T>`, TypeScript `Array`, or Python
`list`, you already know the *shape* of a dynamic array. You add to
the end with `Add` / `push` / `append`, you read `.Count` / `.length` /
`len()`, you don't worry about capacity unless you're optimizing.

Two things change in Odin and they're both about **who owns the
memory and when does it get freed**.

**First: there is no garbage collector.** In C# you stop caring about a
`List<T>` and the runtime cleans up eventually. In Odin nothing
cleans up. Every `[dynamic]T` you create needs a matching `delete` (or
a `defer delete(arr)` next to the declaration, which is the idiomatic
way to write it). Forget that line and you have a leak. Run the
program for ten frames, no problem. Run it for ten hours, the OS
kills it.

**Second: allocation is explicit.** A C# `List<T>` allocates from "the
heap" — the runtime picks where. An Odin `[dynamic]T` allocates from
**the current context's allocator**, which is a value you can swap.
Lesson 08 is entirely about this; for now the takeaway is: there's
always an allocator in play, it's a field on the dynamic array, and
it's the reason `make` and `delete` and `append` all care about
context.

Everything else (varargs `append`, `reserve`, `resize`, iteration with
`for v in arr`) maps directly to what you'd write in C# or Python.
The mechanical surface is small. The mental shift is ownership.

---

### Compared to C

C doesn't have a dynamic array type. You roll one by hand:

    int *data = malloc(cap * sizeof(int));
    size_t len = 0, cap = 8;

    if (len == cap) {
        cap *= 2;
        data = realloc(data, cap * sizeof(int));
    }
    data[len++] = value;

    free(data);

Three separate variables you have to keep in sync. Forget to update
`len`, you index into garbage. Forget to update `cap`, you `realloc`
to the wrong size. Forget to `free`, you leak. Forget that `realloc`
*might move the buffer*, you hold a dangling pointer into the old
location and corrupt memory three frames later. Odin folds all four
concerns (pointer, len, cap, allocator) into one type, gives you
`append` as a builtin, and the only thing you still have to remember
is `delete`.

### Compared to C#

`List<T>` is the direct counterpart. The semantics line up
one-for-one:

| C# `List<T>` | Odin `[dynamic]T` |
|--------------|-------------------|
| `var xs = new List<int>();` | `xs: [dynamic]int` |
| `var xs = new List<int>(1024);` (capacity hint) | `xs := make([dynamic]int, 0, 1024)` |
| `xs.Add(5)` | `append(&xs, 5)` |
| `xs.AddRange(new[]{1,2,3})` | `append(&xs, 1, 2, 3)` or `append(&xs, ..other[:])` |
| `xs.Count` | `len(xs)` |
| `xs.Capacity` | `cap(xs)` |
| `xs.EnsureCapacity(1024)` | `reserve(&xs, 1024)` |
| GC eventually reclaims it | `delete(xs)` — you call it, or you leak |
| (implicit) | `allocator` field — you can pick where memory comes from |

Three real differences worth flagging:

1. **`append` takes a pointer (`&xs`)**, not the array by value. It
   has to be a pointer because `append` may reallocate the underlying
   buffer, which means it must overwrite the data pointer / cap /
   len on the array. C# hides this because `List<T>` is a reference
   type and `Add` mutates through the reference; Odin makes the
   pointer-passing visible.
2. **`defer delete(xs)` is the canonical idiom.** Write it on the
   line right after you declare the array, before you've added
   anything. Reviewers scan for the pair. A `[dynamic]T` declaration
   without a nearby `delete` (deferred or otherwise) is a leak in
   the making.
3. **You choose the allocator.** Most of the time `context.allocator`
   is fine. But you can pass a different one to `make` or temporarily
   swap `context.allocator` for a scope, and every `append` after that
   point pulls from the new allocator. C# has no equivalent — every
   `List<T>` allocates from the same shared heap.

### Compared with Rust

`Vec<T>` is the direct equivalent and shares the ownership model.
Both store `{data, len, cap}` plus allocator info; both grow
geometrically on push; both must be freed.

The difference is the cleanup mechanism. Rust uses **Drop**: when a
`Vec<T>` goes out of scope, the compiler inserts a destructor call
automatically. Odin uses **`defer`**: you write `defer delete(xs)`
yourself, and the compiler runs it at scope exit. Same outcome,
different ergonomics — Rust is automatic-but-implicit, Odin is
manual-but-visible. (Forget `defer delete` in Odin and you leak;
forget to use `Vec` in the first place in Rust and you'd reach for
raw allocation, which the borrow checker fights you on.)

The allocator story is also different. Rust 2024-era `Vec<T, A>` has
the allocator as a generic type parameter; Odin stores it as a
runtime field on the array itself. Odin's choice means any
`[dynamic]T` can carry any allocator without changing the type — at
the cost of 16 bytes of per-array overhead for the allocator field.

---

## Reference: the syntax you'll need

Declaration (zero-initialized — no allocation happens yet):

    scores: [dynamic]int

Declaration with `make` (allocates immediately, with optional initial
length and capacity):

    scores := make([dynamic]int)              // len 0, cap 0
    scores := make([dynamic]int, 10)          // len 10, cap 10, zeroed
    scores := make([dynamic]int, 0, 1024)     // len 0, cap 1024 (reserve form)

Literal initializer:

    names: [dynamic]string = {"Ada", "Grace", "Linus"}

Append (note the `&` — `append` mutates the array header):

    append(&scores, 42)
    append(&scores, 1, 2, 3)             // varargs
    append(&scores, ..other_slice[:])    // splat a slice

Length and capacity:

    len(scores)   // current element count
    cap(scores)   // current allocated capacity

Pre-allocate without changing length:

    reserve(&scores, 1024)

Set length directly (zero-initializes new slots, truncates if shorter):

    resize(&scores, 6)

Free the storage:

    delete(scores)

The idiom — pair these two lines:

    scores: [dynamic]int
    defer delete(scores)

Convert to a slice (most APIs take `[]T`, not `[dynamic]T`):

    process_slice(scores[:])             // []int view into scores

---

## The mental model: slice + owner + grow

A `[dynamic]T` is a `[]T` slice (data + len) **plus** a capacity
**plus** an allocator. The underlying runtime type is literally:

    Raw_Dynamic_Array :: struct {
        data:      rawptr,        //  8 bytes — pointer to the buffer
        len:       int,           //  8 bytes — how many elements are live
        cap:       int,           //  8 bytes — how many fit before realloc
        allocator: Allocator,     // 16 bytes — { procedure, data } pair
    }

Picture it as the slice you already know with two extra fields
bolted on:

                            data       len     cap     allocator
                          ┌────────┬────────┬────────┬───────────────┐
        []int       (slice) │  ptr   │  len   │                  (slice ends here, 16 bytes)
                          ├────────┼────────┼────────┼───────────────┤
        [dynamic]int       │  ptr   │  len   │  cap   │  proc | data  │  (40 bytes)
                          └────────┴────────┴────────┴───────────────┘

`len` is "how many elements you've put in"; `cap` is "how many fit
before the next `append` has to allocate a bigger buffer". When
`append` finds `len == cap`, it asks the allocator for a larger
block (typically ~2× the old cap), copies the existing elements
across, frees the old block, and updates `data`/`cap`/`len`. That's
the whole growth story.

The reason `append` takes `&xs` and not `xs`: when it grows the
buffer, `data` changes (new pointer from the allocator), `cap`
changes (new size), and `len` changes (one bigger). All three live
in the array header, so the function needs a pointer to that header
to write them back. Pass by value and the caller would see none of
the changes.

---

## Tasks

Open `main.odin`. The procedure comments walk you through six
exercises that build a dynamic array workflow. Type the bodies
yourself; don't peek at the syntax reference above until you get
stuck.

When you finish:

    odin run main.odin -file

Compare against `expected-output.txt`.

---

## Now break it on purpose

After the file works, try each of these in turn, observe the
behavior, then revert:

1. **Forget to delete.** Remove `defer delete(scores)`. Build and run
   with `odin run main.odin -file -debug -define:ODIN_DEBUG=true`.
   The program still runs and prints correct output — the OS reclaims
   memory on process exit. Now imagine the loop ran ten thousand
   times. Lesson 08 introduces the tracking allocator which prints
   the file:line of every leaked allocation; for now just note that
   *leaks are silent at small scale* and that's exactly why they're
   dangerous.

2. **Pass `[dynamic]T` where `[]T` is expected.** Write a tiny proc
   `sum_slice :: proc(xs: []int) -> int` and try calling
   `sum_slice(scores)` (no `[:]`). Read the compile error: it tells
   you the types don't match, and that you need `scores[:]` to
   produce the slice view. The conversion is explicit, not
   automatic — Odin won't quietly hand out aliases into your owned
   buffer.

3. **Hold a pointer across a grow.** Add `before := &scores[0]`
   after the first append, then append enough new elements to force
   a reallocation (push past `cap`). Print `before` and `&scores[0]`
   and compare — they're different addresses now. `before` points
   into the freed old buffer. Dereferencing it is undefined behavior.
   This is the fundamental hazard of growable containers in every
   language; the C++ `vector` iterator invalidation rule and the
   Rust borrow checker both exist to prevent exactly this.

---

## Low-level notes

- A `[dynamic]T` header is **40 bytes** on a 64-bit machine: 8 (data)
  + 8 (len) + 8 (cap) + 16 (allocator: 8-byte proc pointer + 8-byte
  data pointer). The elements themselves live in a separately
  allocated buffer the `data` field points at.
- The growth strategy is implementation-defined but is geometric
  (typically ~2× current cap, with a minimum starting cap of around
  8). Geometric growth gives **amortized O(1)** per append even
  though any *individual* append might reallocate and copy.
- Each grow does `alloc(new_cap) + memcpy(old → new) + free(old)`.
  If you know the final size up front, `reserve(&xs, N)` once and
  skip the intermediate grows entirely. In tight loops this is a
  measurable win.
- The allocator is captured per-array, not per-call. The allocator
  in effect when the array was first allocated (via `make` or the
  first `append`) is the one used for all subsequent grows and the
  eventual `delete`. Mixing allocators on the same array is a bug
  the runtime can catch.
- `[dynamic]T` and `[]T` are different types. A slice (`[]T`) is
  `{data, len}` — 16 bytes, no ownership, no allocator. A dynamic
  array converts *into* a slice with `xs[:]`, but the slice is a
  view that becomes dangling the moment `xs` reallocates or is
  deleted. Treat slices of dynamic arrays as short-lived.

---

## Next: `08-context-and-allocators/`

We've been saying "the current context's allocator" without
explaining where that comes from. Lesson 08 makes the context
mechanism concrete: what `context.allocator` actually is, how to
swap it for a scope (arena allocators, tracking allocators,
per-frame temp allocators), and why every Odin proc implicitly
takes a hidden `context` parameter.
