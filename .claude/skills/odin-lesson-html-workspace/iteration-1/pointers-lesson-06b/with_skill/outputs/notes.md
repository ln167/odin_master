# Lesson 06b pointers — interactive HTML explainer (with_skill, iteration 1)

Page: `content/domains/odin/vault/lessons/06b-pointers/pointers-address-and-aliasing.html`
(byte-identical copy alongside this file).

The page follows the reference (lesson 10 `union-memory-layout.html`): dark "warm
paper" theme from the template, level-tab nav, one `<section>` per level, one data
object + one render fn per interactive component, all vanilla inline JS, no CDN.

---

## The level arc (one line per level)

- **L1 — What it is (an address you write through).** A pointer is a variable whose
  value is the *address* of another variable. Two-cell "address space" view: `p` (8
  orange address bytes) → `x` (8 value bytes). Toggle read (`x := p^`) vs write
  (`p^ = 100`) and watch x's byte 0 flip `2a → 64` while p never moves — aliasing.
- **L2 — Why you'd reach for it (shared mutation, no copy).** Same `heal` body, one
  caret of difference: `^Player` lets the callee write back to the caller; `Player`
  hands in a copy that's mutated then discarded. Two side-by-side lanes you "run."
- **L3 — The bill (lifetimes are yours).** A pointer is just a number; nothing keeps
  its target alive. Animated dangling-local frame + the *real* compile error Odin
  raises for the obvious shape, then the honest limit (indirect escapes compile
  silently). Plus the nil-deref footgun and the Rust borrow-checker contrast.
- **L4 — Why it stays clear (three pointer types).** `^T` / `[^]T` / `[]T` table; the
  emergent payoff is that the *type encodes intent* and the compiler enforces it.
  Toggle three real compile errors that prove each "no" in the table.

Closing arc recap present (one clause per level) at the end of L4.

---

## Claims created/run (all under `claims/lessons/06b-pointers/`)

Run with `python tools/substrate/claim.py lessons/06b-pointers/<name>` (note the
`lessons/` prefix — the bare `06b-pointers/...` form resolves to a nonexistent
`tests/` dir and errors; not a claim bug).

### Reused (pre-existing, re-verified PASS)
| Claim | Kind | Verdict | What it backs on the page |
|---|---|---|---|
| `solution` | output | PASS | the canonical lesson output (multi-pointer `mp[0]=10`, `tail:[20,30]`, etc.) |
| `break-pointer-arith` | fails | PASS | L4 `^int + 1` error: `Cannot convert untyped value '1' to '^int' from 'untyped integer'` |
| `break-return-local-addr` | fails | PASS | L3 dangling error: `It is unsafe to return the address of a local variable` |
| `break-deref-nil` | panics | PASS | L3 nil-deref crash; raw Windows exit `0xC0000005` (access violation) |

### Created new (all PASS)
| Claim | Kind | Verdict | What it backs |
|---|---|---|---|
| `sizes` | output | PASS | L1/L4 widths: `int=8, ^int=8, ^Player=8, ^[dynamic]string=8, [^]int=8, []int=16` |
| `deref-roundtrip` | output (`<addr>` wildcard) | PASS | L1 facts: `p == &x` is `true`, `p^ == 42`, after `p^ = 100` then `x == 100` |
| `byte-layout` | output (`<addr>` wildcard) | PASS | L1 byte strip: int 42 = `2a 00 00 00 00 00 00 00` little-endian; pointer = 8 address bytes |
| `by-value-no-mutate` | output | PASS | L2 contrast: by-pointer `hp=50` (write sticks) vs by-value `hp=20` (copy discarded) |
| `multiptr-no-deref` | fails | PASS | L4 `[^]int ^` error: `Cannot dereference 'mp' of type '[^]int'` |
| `multiptr-no-arith` | fails | PASS | L4 `[^]int + 1` error: `Cannot convert untyped value '1' to '[^]int' from 'untyped integer'` |

Full 06b sweep: **10/10 PASS.** Whole-suite `verify-all`: 119/120 PASS, 1 INCONC
(`example-faster`, a pre-existing unrelated timing claim). `just doctor odin`: PASS
(lesson↔claim coupling for 06b-pointers intact, no drift).

The address itself is nondeterministic, so the byte strip and `deref-roundtrip`/
`byte-layout` use the `<addr>` wildcard for the address lines; the page renders one
representative measured address (`0xB2CEDEF7E8`) and labels it "differs every run."
The *load-bearing* facts (the equalities `p == &x`, `p^ == 42`, `x == 100`, the int's
stable bytes) are all deterministic and pinned.

---

## Every on-page fact → its backing claim

| On-page fact | Backed by |
|---|---|
| `^int`, `^Player`, `^[dynamic]string`, `[^]int` are all 8 bytes; `[]int` is 16 | `sizes` |
| int 42 little-endian bytes `2a 00 00 00 00 00 00 00`; byte 0 → `64` on `p^ = 100` | `byte-layout` (`2a`), arithmetic `0x64 = 100` |
| pointer is 8 address bytes that hold x's address | `byte-layout` |
| `p == &x` is true; `p^ == 42`; after `p^ = 100`, `x == 100` (aliasing) | `deref-roundtrip` |
| by-pointer `Player{name="Ada", hp=50}`; by-value `Player{name="Ben", hp=20}` | `by-value-no-mutate` |
| L3 dangling compile error text | `break-return-local-addr` |
| nil-deref crashes (OS access violation, `0xC0000005`); `fmt.println(bad^)` prints `<nil>` | `break-deref-nil` (+ its probe comments) |
| L4 `^int + 1` error text | `break-pointer-arith` |
| L4 `[^]int ^` error text (incl. `Did you mean 'mp[0]'?`) | `multiptr-no-deref` |
| L4 `[^]int + 1` error text | `multiptr-no-arith` |

No number, byte, error string, or output line on the page lacks a passing probe.

Interactivity verified headlessly (extracted the `<script>`, drove all four
`renderL*` fns + every toggle against a DOM stub under node): L1 read/write byte
flip `2a`↔`64`, L2 both lanes' verdict strings, L3 alive/returned frame, L4 all three
error strings render verbatim — no exceptions.

---

## C-ism gate — how it was handled

The page describes Odin in Odin's vocabulary throughout; C/C#/Rust appear **only**
inside explicitly-labeled contrast callouts.

**The canonical sin, inverted.** The classic C-ism (calling indexing "pointer
arithmetic") is the *opposite* of this page's thesis: L4's whole point is that Odin
has **no pointer-arithmetic operators**, and that is proved with three real compile
errors (`^T + 1`, `[^]T + 1`, and `[^]T ^` all rejected at build time). "No `+` on a
pointer, ever" is stated as Odin reality, never as a C-borrowed caveat.

**C framings avoided (described as Odin instead):**
- Dereference written as postfix `p^` (Odin), never `*p` as Odin's own syntax.
- Field access via auto-deref `p.field` (Odin), never `->`; the only `->` on the page
  is Odin's *return-type arrow* in `proc() -> ^int`.
- `nil`, not `NULL`; "Odin zero-initializes a fresh pointer to nil, **not** garbage"
  (explicitly killing the "uninitialized = garbage" C-ism).
- Allocation discussed via value semantics / lifetimes-are-yours, not `malloc`/`free`;
  no bare "allocate on the heap." (`new`/`free` weren't needed for the chosen examples.)
- `[^]T` framed as **its own distinct type** (multi-pointer), not as "a pointer that's
  also an array" — the C conflation of `int *p` is named only as the labeled foil.
- The crash is an OS access violation, not "undefined behavior" hand-waving.

**Labeled contrasts used (and why each pays):**
- *"if you're coming from C# or C"* note in L2 — sharpens why Odin makes you write
  `^Player` out loud (no `ref`/`out`, no `->`); C#'s reference-as-hidden-pointer is the
  exact intuition the reader arrives with.
- *"in Rust, by contrast"* note in L3 — Rust's borrow checker makes the dangling case a
  compile error in general; naming the foil is what makes Odin's narrower guarantee land.
- *"C has one pointer that means everything"* opening L4 — the three-types split only
  reads as a feature against the one-type-does-all backdrop it replaces.

Each contrast is immediately followed by the Odin behavior in Odin terms, and no
paragraph that *describes Odin* reaches back for the C vocabulary it just used.
