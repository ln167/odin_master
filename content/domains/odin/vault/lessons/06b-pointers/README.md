# Lesson 06b - pointers

## Concept

A pointer is a number that holds the **address** of some data instead of
the data itself. On a 64-bit machine that number is 8 bytes. The thing
the pointer *points at* (the actual integer, struct, whatever) lives
somewhere else in memory; the pointer just remembers where.

Odin writes the type "pointer to T" as `^T`. The `&` operator gives you
the address of a variable (turning a `T` into a `^T`). The `^` operator,
written *after* the pointer, gives you back the value the pointer
points at (turning a `^T` into a `T`). That postfix `^` is the
**dereference** operator.

You've already seen pointer-shaped things sneak past in earlier lessons:
`for &v in s` in slices (iterate by reference), `&mu` for a mutex
argument, `^Player` in the data-oriented-design aside. This lesson is
the dedicated tour: what a pointer IS, what `^T` / `[^]T` / `[]T` each
mean, and why a language without a garbage collector spends a keyword
on this.

---

## Leveling with you (if you come from OOP)

Here is the thing nobody told you when you were learning C#: **every
reference-type variable in C# is already a pointer.** The runtime hides
the syntax, but it's there. When you write

```csharp
Player p = new Player();
```

`p` does not contain a Player. `p` contains the address of a Player
that the GC allocated somewhere on the heap. When you write `p.Name`,
the runtime reads the address out of `p`, jumps to that location in
memory, and reads the `Name` field at the right offset. The language
just doesn't make you say "address of" out loud.

In Odin you say it out loud. The same program is

```odin
p: ^Player = new(Player)
```

`p` is an 8-byte address. `new(Player)` allocated a Player struct on
the heap and gave you back its address. Same machine code, different
syntax. The only thing that changed is that Odin asks you to be
honest about what `p` actually is.

The mental swap is small but load-bearing: instead of "this variable
is the object," it's "this variable holds the address of the object."
Once that clicks, the rest of the syntax is plumbing.

The other half of the swap: in C# the GC keeps the object alive as
long as any reference points at it. In Odin, the object lives as long
as YOU keep it alive. If you `new(Player)` and never `free` the
result, you have a leak. If you take the address of a local variable
and the function returns, the local is gone but your pointer still
points at the spot in the stack where it used to be, which is now
garbage. Lifetimes are your job. The pointer is just the address; it
has no idea whether the thing at that address is still valid.

---

### Compared to C

Same concept, different spelling. The mapping:

| Idea | C | Odin |
|------|---|------|
| Pointer type | `int *p` | `p: ^int` |
| Address-of | `&x` | `&x` |
| Dereference | `*p` (prefix) | `p^` (postfix) |
| Field through pointer | `p->name` | `p.name` (auto-deref) |
| Null | `NULL` | `nil` |
| Allocate one | `malloc(sizeof(Player))` | `new(Player)` |
| Free | `free(p)` | `free(p)` |
| C-style pointer-as-array | `int *p` (same type!) | `p: [^]int` (separate type) |

Two differences worth dwelling on:

**Why `^` instead of `*`.** Odin uses `^` because `*` is multiplication
and the parser would have to do real work to tell which is which in
expressions like `a * b`. By taking a different symbol, Odin can write
`x := p^` (deref) without any ambiguity. The postfix position is
borrowed from Pascal: the convention is "type on the left, usage on
the right." Declaration reads `p: ^int` (the `^` is on the left of
`int`), usage reads `x := p^` (the `^` is on the right of `p`). It
mirrors itself.

**Why `p.field` instead of `p->field`.** In C, `p.field` only works
when `p` is a struct value; if `p` is a pointer to a struct you have
to write `(*p).field` or the shorthand `p->field`. Odin just
auto-dereferences a single layer for you: `p.field` works whether `p`
is a `Player` or a `^Player`. The machine code is identical to writing
`(p^).field`; it's a pure source-level convenience.

**The big type-system difference: `[^]T` is its own type.** In C every
"pointer" is implicitly also "pointer to the first element of an
array of unknown length" — `int *p` lets you write both `*p` and
`p[5]` and `p + 3` and the compiler doesn't care which you mean. Odin
splits this: `^T` is "pointer to exactly one T" (no indexing, no
arithmetic), and `[^]T` is "pointer to an unknown number of T"
(indexing, slicing). When you read Odin code, the type tells you the
author's intent. When you read C, you guess.

### Compared to C#

C# has pointers (`unsafe` blocks, `int *p`, `&x`, `*p`) but they're a
fenced-off corner of the language that 99% of C# programmers never
touch. Day-to-day, every reference-type variable IS a pointer, just
with the syntax suppressed and the GC managing lifetime. The
practical comparisons:

| C# | Odin |
|----|------|
| `Player p = new Player();` | `p: ^Player = new(Player)` |
| `p.Name = "Ada";` | `p.name = "Ada"` |
| `ref int x` parameter | `x: ^int` parameter |
| `out int x` parameter | `x: ^int` parameter (caller checks for self) |
| `p == null` | `p == nil` |
| GC frees it | `free(p)` (or leak) |
| `Span<T>` (borrowed view) | `[]T` slice (lesson 06) |
| `T*` in `unsafe` | `[^]T` multi-pointer |

The `ref` / `out` keywords are how C# expresses "pass by pointer" for
value types. You write `void Heal(ref Player p, int amount)` and the
function can mutate the caller's `p`. Odin doesn't have `ref` or
`out`; you write the pointer explicitly: `heal :: proc(p: ^Player,
amount: int)`. Same thing, less syntactic sugar.

### Compared with Rust

Rust has the same primitive (a pointer is an address), then adds a
type-system layer Odin doesn't:

| Rust | Odin | What Rust adds |
|------|------|---------------|
| `&T` | `^T` (read-only by convention) | borrow tracking, no mutation |
| `&mut T` | `^T` | exclusive borrow, mutation allowed |
| `*const T` / `*mut T` | `^T` | raw pointer, no lifetime tracking, requires `unsafe` |
| Lifetime annotations | — | compile-time check that pointer can't outlive target |

Rust's borrow checker refuses to compile code where a pointer could
outlive what it points at. Odin doesn't have a borrow checker. The
same shape that fails to compile in Rust will compile in Odin and
crash at runtime — or, worse, silently read garbage and produce
wrong answers. The discipline you got for free in Rust is on you in
Odin.

That's the tradeoff. Rust trades compile-time complexity for runtime
safety; Odin trades runtime safety for a much simpler language. Both
choices are defensible; you just need to know which one you're in.

---

## Reference: the syntax you'll need

### Declare a pointer

    p: ^int                  // pointer to int, value is nil until assigned
    player_ptr: ^Player      // pointer to Player

### Get an address with `&`

    x: int = 42
    p := &x                  // p is ^int, holds the address of x

The `&` operator works on any addressable value (a local, a field of a
local, an element of a fixed array, etc.). Literals are not
addressable: `&42` is a compile error.

### Dereference with postfix `^`

    value := p^              // read: pull the int out of the address
    p^ = 100                 // write: store 100 at that address

The `^` goes AFTER the pointer expression, not before. This is one of
the most common typo classes when coming from C; the compiler will
catch you, but it's worth burning in.

### Auto-deref on struct fields

    player: Player = {name = "Ada", hp = 100}
    p := &player
    p.hp = 50                // works; equivalent to (p^).hp = 50
    fmt.println(p.name)      // works; equivalent to (p^).name

No `->` operator. The dot does the right thing whether the left side
is a struct or a pointer to a struct.

### nil and nil checks

    p: ^Player               // p is nil (the zero value for pointers)
    if p == nil {
        // ...
    }
    if p != nil {
        p.hp = 100           // safe; p points at something
    }

Dereferencing `nil` on most platforms causes a segmentation fault
(the OS aborts your program). It is not a friendly Odin panic; it is
a hardware-level crash with a stack trace, if you're lucky.

### Allocate one value on the heap

    p := new(Player)         // p is ^Player; the Player is zero-initialized
    defer free(p)            // pair the free with the new on the next line

    p.name = "Ada"
    p.hp = 100

`new(T)` asks the current allocator for `size_of(T)` bytes, zeros
them, and returns a `^T`. `free(p)` returns those bytes to the
allocator. If you `new` and forget to `free`, you have a memory leak.
The `defer` from lesson 07b is the standard way to pair them.

### Multi-pointer `[^]T`

    nums: [4]int = {10, 20, 30, 40}
    raw: [^]int = raw_data(nums[:])

    raw[0]                   // 10        - indexing works
    raw[3]                   // 40        - no bounds check
    raw[:2]                  // []int     - slice back to a bounded view

A multi-pointer is "pointer to an unknown number of T". It supports
indexing and slicing back into a regular `[]T`, but **does not
support dereferencing** (`raw^` is a compile error — what would it
even mean? deref *which* element?) and does **not** support `+`
arithmetic (`raw + 1` is a compile error; you write `raw[1:]`
instead, which gives you a multi-pointer starting at index 1 via a
slice).

You'll mostly see `[^]T` when binding to C libraries, where a C
function signature like `void process(int *nums, int count)` becomes
`process :: proc "c" (nums: [^]c.int, count: c.int)` in Odin.

---

## `^T` vs `[^]T` vs `[]T` - three pointer-ish things

These three are the most-confused trio in the language. Disambiguate
now and save yourself a week of "wait, which one do I want?"

| Type | Means | Has length? | Pointer arithmetic? | Indexing? | Deref with `^`? |
|------|-------|-------------|---------------------|-----------|-----------------|
| `^T` | pointer to ONE T | No (always 1) | No | No | Yes (`p^`) |
| `[^]T` | multi-pointer (C-style array) | No (unknown) | No (use slicing) | Yes, unchecked | No |
| `[]T` | slice (lesson 06) | Yes (carries `len`) | No | Yes, bounds-checked | No |

How to pick:

- "I have a single struct and I want to mutate it through a function" → `^T`.
- "I'm binding to a C function that takes `T *` and a separate length" → `[^]T`.
- "I want a view into N consecutive Ts that I can iterate" → `[]T`.

The slice `[]T` is just `^T` + a length, the way `[dynamic]T` is `[]T`
+ a capacity + an allocator. Each adds one piece of bookkeeping. Pick
the lightest type that gives you what you need.

---

## The mental model: a pointer is just an address

Picture memory as one giant numbered array of bytes. Every variable
lives at some byte address. A pointer is a variable whose value IS
one of those addresses.

```
memory (bytes):
  ... 0x1000  0x1001  0x1002  0x1003  0x1004  0x1005  0x1006  0x1007 ...
       +-----+-----+-----+-----+-----+-----+-----+-----+
       |  42 |  0  |  0  |  0  |  0  |  0  |  0  |  0  |   <-- x: int (8 bytes, value 42)
       +-----+-----+-----+-----+-----+-----+-----+-----+
       ^
       |
       this byte's address is 0x1000

  ... 0x2000  0x2001  0x2002  0x2003  0x2004  0x2005  0x2006  0x2007 ...
       +-----+-----+-----+-----+-----+-----+-----+-----+
       |0x00 |0x10 |0x00 |0x00 |0x00 |0x00 |0x00 |0x00 |   <-- p: ^int (8 bytes, value 0x1000)
       +-----+-----+-----+-----+-----+-----+-----+-----+
```

`p` is 8 bytes containing the number `0x1000`. To read `p^`, the CPU
takes `p`'s value (`0x1000`), uses it as an address, and reads 8 bytes
starting there. Out comes `42`. To write `p^ = 100`, the CPU takes
`p`'s value, uses it as an address, and writes 100 to those 8 bytes —
and now `x` is 100, because `x` is the variable that lives at
`0x1000`. There is no copy, no propagation, no link being followed.
There's one byte location and two names for it.

This is **aliasing** — the same concept you met with slices in lesson
06. Two pointers (or a pointer and a variable) that refer to the same
storage are aliases. Writing through one is visible through the other.
This is the entire reason pointers exist: shared mutation, no copying,
constant cost to pass to functions.

The thing this model does NOT tell you: whether the storage at
`0x1000` is still alive. The pointer is a number, period. If `x` was
a local variable in a function that has now returned, the stack space
at `0x1000` has been reused by whoever called next, but `p` still
holds `0x1000`. Reading `p^` now gives you whatever the next function
happened to leave there. This is the dangling-pointer footgun, and it
is THE pointer footgun. Odin will not warn you.

---

## Tasks

Open `main.odin`. Six exercises walk you through declaring pointers,
mutating through them, passing them to procs, and allocating on the
heap. Type the bodies yourself; don't peek at the syntax reference
above until you're stuck.

When you finish:

    odin run main.odin -file

Compare your output to `expected-output.txt`. (One line of the output
is an address that will be different every run — the file uses
`<addr>` as a placeholder for that line.)

---

## Now break it on purpose

After your file works, try these one at a time and read what happens:

1. **Dereference nil.** Add `bad: ^int` (uninitialized, so nil). Be careful
   *how* you deref it: `fmt.println(bad^)` does **not** crash — fmt receives
   `bad^` as an `any` whose data pointer is nil and prints `<nil>` instead of
   ever loading from address 0. To actually trigger the crash, force a real
   load — `y := bad^` and then use `y`, or write through it with `bad^ = 5`.
   Build, run: on Windows / Linux / macOS you get a segmentation fault or
   access violation — the OS killed your program for touching address 0. No
   friendly Odin message. This is the most common pointer bug in C and C++
   codebases, and Odin gives you no extra help avoiding it.
2. **Return the address of a local.** Write a proc:

       dangling :: proc() -> ^int {
           local := 7
           return &local
       }

   Build it. The compiler **rejects** this: `Error: It is unsafe to
   return the address of a local variable ('&local') from a procedure`.
   Odin has a targeted escape check that catches the direct case
   (returning a slice of a local, `local[:]`, is blocked the same way).
   The dangling-pointer hazard itself is still real and unchecked in
   *general*, though: an address that escapes **indirectly** - stored
   through an out-pointer, kept in a struct that outlives the call, held
   past an arena reset - compiles silently and still dangles. Odin guards
   the obvious shape, not lifetimes in general (that's Rust's job, not
   Odin's).
3. **Pointer arithmetic on `^T`.** Try `q := p + 1`. Compile error.
   The single-value pointer does not support `+`. To do C-style
   pointer math you need a `[^]T`.
4. **Forget to `free`.** Take the heap allocation task (task 5) and
   delete the `defer free(p)`. The program still runs and produces
   correct output — the OS reclaims memory on process exit. Now
   imagine that allocation happens once per frame for ten hours.
   Lesson 08 introduces the tracking allocator which prints every
   leaked allocation with a file:line; for now just notice that
   leaks are *silent* at small scale, which is exactly why they're
   dangerous.

---

## Low-level notes

- A pointer is 8 bytes on a 64-bit machine, 4 bytes on a 32-bit
  machine. Same size regardless of what it points at — `^int`,
  `^Player`, and `^[dynamic]string` are all the same width.
- `nil` is the literal integer value `0`. A pointer-equals-nil check
  is a compare-to-zero, which is one of the cheapest instructions on
  any CPU.
- Auto-deref of `p.field` is a pure source-level rewrite. The
  compiler emits the same machine code as `(p^).field`. There is no
  hidden vtable lookup, no runtime check, no overhead.
- `new(T)` allocates `size_of(T)` bytes via `context.allocator` and
  zeros them. The returned `^T` is valid until you `free` it. The
  underlying call ends up at `mem.alloc`, which is the same path
  `make` takes for slices and dynamic arrays.
- Multi-pointer slicing (`p[i:j]`) produces a `[]T` slice that
  carries the length `j - i`. This is how you climb back up the
  type ladder from "C interop" (`[^]T`) to "bounded view" (`[]T`).
- Pointer arithmetic on `[^]T` via slicing is in units of
  `size_of(T)`, not bytes. `p[3:]` on a `[^]Player` advances by
  three Player-widths, not three bytes. The type carries the
  element size; the bookkeeping happens at compile time.

---

## Next: `06c-parameters-and-passing/`

You now know what `^T`, `[^]T`, and `[]T` each are. Lesson 06c is the
synthesis: what happens when values, views, and pointers cross a
procedure boundary. Why parameters are immutable, why `n += 1` on a
parameter won't compile, the `n := n` shadow idiom, how Odin's calling
convention passes big things by hidden pointer (and the one aliasing
footgun that leaks), and the actual rule for when to pass by value vs.
by `^T` in a game.
