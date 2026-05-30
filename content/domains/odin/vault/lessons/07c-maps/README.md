# Lesson 07c - maps

## Concept

A **map** in Odin is written `map[K]V` and is the language's built-in
**hash table**: an unordered collection of key/value pairs where lookup,
insert, and delete are all O(1) on average. Keys must be hashable
(most basic types qualify automatically); values can be anything.

A map is heap-allocated, allocator-aware, and grows on insert. The
underlying buffer doubles when it fills up, the way a `[dynamic]T`
does. Like a `[dynamic]T`, a map *owns* its memory: you create it with
`make`, you free it with `delete`, and forgetting either is a leak.

This is the workhorse container for "value per key" when the universe
of keys is **decided at runtime** -- usernames, asset paths, entity
ids, network message types you discover from a header byte. For
"value per key" where the universe is **known at compile time**
(four elements, ten weapon slots, seven days of the week), the right
tool is the `[Enum]T` array from lesson 05, not a map.

---

## Leveling with you (if you come from OOP)

If your reflex on hearing "key/value store" is `Dictionary<K, V>` in
C#, `HashMap<K, V>` in Java, or `Object` / `Map` in JavaScript, you
already know the *shape* of what `map[K]V` does. You add with
`m[k] = v`, you read with `m[k]`, you ask "does this key exist?", you
iterate.

Three things change in Odin, and all three are the same idea wearing
different clothes: **no garbage collector, so ownership is explicit**.

**First: declaring the type does not allocate the table.** Writing
`m: map[string]int` gives you a *nil* map -- the header exists on the
stack, but the underlying bucket array hasn't been allocated. Writing
to a nil map at runtime is a crash. You must call `make` first to get
a real, usable map. C# `Dictionary<K,V>` allocates inside its
constructor; Odin makes the allocation a separate line you have to
write yourself.

**Second: you free it.** `defer delete(m)` on the line after `make`,
the same idiom you learned with `[dynamic]T`. No `delete`, no GC, the
table sits in memory until the process ends.

**Third: lookup of a missing key silently returns the zero value.**
`m["not in map"]` returns `0` for `map[string]int`, `""` for
`map[K]string`, `nil` for `map[K]^Thing`. No exception, no special
sentinel. That's a footgun if you don't know it -- the same code that
"works" for present keys silently returns nonsense for absent ones.
The fix is the **comma-ok** form: `v, ok := m[k]`. `ok` is `true` iff
the key was actually present. Treat the one-value lookup as something
you only use when you've already checked existence (or genuinely
don't care which case you're in).

---

### Compared to C

C has no built-in map. You reach for a third-party hash table (uthash,
khash, stb_ds), or you write your own with open addressing and a
linear probe, or you fake it with a sorted array + bsearch. All three
options are real engineering tasks. Odin treating `map[K]V` as a
primitive saves you that whole detour.

### Compared to C#

`Dictionary<K, V>` is the direct counterpart. Semantics line up
one-for-one:

| C# `Dictionary<K, V>` | Odin `map[K]V` |
|------------------------|----------------|
| `var m = new Dictionary<string, int>();` | `m := make(map[string]int)` |
| `var m = new Dictionary<string, int>(1024);` | `m := make(map[string]int, 1024)` |
| `m["Bob"] = 2;` | `m["Bob"] = 2` |
| `m["Bob"]` (KeyNotFoundException if absent) | `v, ok := m["Bob"]` (no exception, `ok` is false) |
| `m.TryGetValue("Bob", out var v)` | `v, ok := m["Bob"]` |
| `m.ContainsKey("Bob")` | `"Bob" in m` |
| `m.Remove("Bob")` | `delete_key(&m, "Bob")` |
| `m.Count` | `len(m)` |
| `foreach (var kv in m) { ... }` | `for k, v in m { ... }` |
| GC eventually reclaims it | `delete(m)` -- you call it, or you leak |

Two real differences:

1. **No exception on missing key.** `m[k]` returns the zero value
   silently. The comma-ok form is how you check. This is the same
   design decision as Go's, and it pushes you to be explicit about
   "is this key actually here?" instead of catching exceptions.
2. **`delete_key` takes a pointer.** `delete_key(&m, k)` mirrors
   `append(&arr, x)` from lesson 07: removal can resize the table,
   and to write back the new state the proc needs a pointer to the
   map header.

### Compared with Go

Go's `map[K]V` is the closest analog by far -- same syntax, same
comma-ok idiom, same unordered iteration. There is one trap that
matters:

**Go auto-initializes**, sort of. Actually, no, it doesn't either:
`var m map[string]int` in Go gives you a nil map, and writing to it
panics, *just like Odin*. The Go convention is `m := make(map[string]
int)` or `m := map[string]int{}`. So at the language level the rule is
the same. The reason people *think* Go auto-initializes is that
reading from a nil map in Go is legal (it returns the zero value),
while writing to one panics. Odin matches Go here.

The real Go-vs-Odin gap is **the rest of the language**: Go has a GC,
so `delete(m)` doesn't exist -- you just stop referencing the map and
the runtime reclaims it. Odin makes you pair every `make` with a
`delete`.

### Compared with Rust

`HashMap<K, V>` is the equivalent. Same semantics, longer syntax:

| Rust | Odin |
|------|------|
| `let mut m: HashMap<String, i32> = HashMap::new();` | `m := make(map[string]int)` |
| `m.insert("Bob".into(), 2);` | `m["Bob"] = 2` |
| `m.get("Bob")` returns `Option<&i32>` | `v, ok := m["Bob"]` |
| `m.contains_key("Bob")` | `"Bob" in m` |
| `m.remove("Bob")` | `delete_key(&m, "Bob")` |
| Drop runs automatically on scope exit | `defer delete(m)` written by hand |

Rust models "missing key" with `Option<&V>`; Odin models it with the
second boolean. Same idea, two different type-system expressions.

---

## Reference: the syntax you'll need

Declaration of the type (no allocation yet -- the map is nil):

    m: map[string]int

Create the table:

    m := make(map[string]int)              // empty, default capacity
    m := make(map[string]int, 1024)        // initial capacity hint (avoids early grows)

Pair the cleanup with the creation:

    m := make(map[string]int)
    defer delete(m)

Insert or update:

    m[key] = value

Lookup that silently returns the zero value on miss (usually NOT what
you want):

    v := m[key]

Lookup with a boolean for existence -- the **safe** form:

    v, ok := m[key]
    if ok { /* key was present, v is real */ }

Membership-only check (no value needed):

    ok := key in m

Remove one key:

    delete_key(&m, key)                    // note the &, like append

Empty the whole map (keep the allocation, drop all entries):

    clear(&m)

Iterate (key first, then value -- opposite of arrays):

    for k, v in m { ... }
    for k in m { ... }                     // keys only

Length and capacity:

    len(m)                                 // number of entries currently in the map
    cap(m)                                 // bucket capacity before next resize

Free the whole map (releases the buckets, the map becomes nil):

    delete(m)

Map literal (per the Odin docs, requires `#+feature dynamic-literals`
at the top of the file to enable):

    m := map[string]int{
        "Bob"   = 2,
        "Chloe" = 5,
    }

---

## The mental model: a value per key, grown on demand

Two things to internalize about `map[K]V`, and both come from
"declaration is just a type":

**`m: map[string]int` does not allocate.** It puts a small map header
(a pointer to buckets, a length, a capacity, an allocator) on the
stack with the pointer set to nil. Writing to that map at runtime
crashes -- there are no buckets to write into. You **must** call
`make` before you use it. This is the most common bug for newcomers
and the one to drill on first.

    m: map[string]int       // nil map
    m["Bob"] = 2            // CRASH: write to nil map

vs

    m := make(map[string]int)
    defer delete(m)
    m["Bob"] = 2            // fine

**`v := m[k]` returns zero on miss.** Always. No exception, no panic,
no warning. The same call that gives you back a real value for a
present key gives you back `0` for an absent one, and you can't tell
which from the value alone. Reach for the two-value form by default;
treat the one-value form as a deliberate "I know this key is here"
shortcut.

    score := m["unknown"]       // score is 0; was that a real 0 or a missing key?
    score, ok := m["unknown"]   // ok tells you which case you're in

---

## When to reach for a map vs bit_set vs [Enum]T

You now have three "value-per-element" containers in your toolkit.
Picking the right one is mostly about whether the set of elements is
**fixed at compile time** or **discovered at runtime**, and whether
you need a value at all or just membership:

| Need | Use | Lesson |
|------|-----|--------|
| Membership for a fixed enum universe | `bit_set[Enum]` | 05b |
| Value per element of a fixed enum universe | `[Enum]T` | 05 |
| Value per element of a DYNAMIC universe (strings, ids, runtime keys) | `map[K]V` | this lesson |

The escalation ladder from lesson 05b extends naturally:

    fixed universe, yes/no    ->  bit_set[Enum]       (1 byte, bit ops)
    fixed universe, value     ->  [Enum]T             (stack, integer offset)
    dynamic universe, yes/no  ->  map[K]bool          (or map[K]struct{})
    dynamic universe, value   ->  map[K]V             (this lesson)

If you can describe the key space with an `enum`, the lower rung is
faster and cheaper -- no hashing, no allocation, no buckets. Reach for
`map` when the key space genuinely isn't fixed.

---

## Tasks

Open `main.odin`. Six numbered exercises walk you through the full
lifecycle of a map: create, insert, two flavors of lookup, iterate,
remove, count.

When you finish:

    odin run main.odin -file

Compare against `expected-output.txt`.

---

## Now break it on purpose

After your file works, try each of these in turn, observe the
behavior, then revert:

1. **Forget `make`.** Change `name_to_score := make(map[string]int)`
   to just `name_to_score: map[string]int` (no `make`). Build. The
   build succeeds -- declaration is legal. Now run it. The first
   `name_to_score[k] = v` crashes at runtime with a nil-map write.
   This is the most common new-to-Odin mistake on maps. The fix is
   one line.
2. **Single-value lookup of a missing key.** Print `name_to_score
   ["Liberty"]` directly without the comma-ok form. Observe that it
   prints `0`, looks completely fine, and silently lies. A real `0`
   score and a missing entry are indistinguishable from the value
   alone. This is why the two-value form is the default.
3. **Unhashable key type.** Try declaring `m: map[[dynamic]int]int`.
   Build. Read the compile error -- dynamic arrays are not hashable
   because their identity isn't stable. (Strings, ints, fixed arrays,
   and structs of hashable fields all work.)
4. **Iterate twice, compare orders.** Run your program twice. The
   `for k, v in name_to_score` section may print in the same order
   both times, or it may not. Map iteration order is intentionally
   not part of the language's guarantees -- the hash table reserves
   the right to reorder buckets between runs, between compiler
   versions, and after grows. If you depend on iteration order, you
   have a bug waiting to happen.
5. **Use after `delete`.** Add `delete(name_to_score)` near the top
   (delete, not delete_key), then try `name_to_score["Crim"] = 5` on
   the next line. The map is back to nil and the write crashes. Same
   shape of bug as item 1.

---

## Low-level notes

- A map header is small (a handful of pointer-sized fields: a data
  pointer to the bucket array, a length, a capacity, an allocator,
  and a hash seed). The buckets and the keys/values themselves live
  in a separately allocated buffer the data pointer addresses.
- Buckets grow geometrically, the same as `[dynamic]T` -- when load
  factor crosses a threshold, the table allocates a bigger bucket
  array, rehashes every live entry into it, and frees the old one.
  Reserving capacity up front with `make(map[K]V, N)` skips the
  intermediate grows when you know roughly how many entries you'll
  have.
- Iteration order is unspecified by design. The hash table reorders
  on grow, which would make any order guarantee meaningless. If you
  need a stable order, collect the keys into a `[dynamic]K`, sort
  the slice, then iterate the slice (this is what the iteration
  section of `main.odin` does so its output is deterministic).
- Lookup hits cache nicely when the table fits in L1/L2, which is
  most of the time for game-dev workloads. The big perf gotcha isn't
  the table -- it's the **key type**. Hashing a long string is
  measurably slower than hashing an int. If you're using strings as
  keys in a hot loop and it shows up in a profile, consider
  interning the strings to ints first.
- Pointer-to-value lookup (`v_ptr, ok := &m[k]`) lets you mutate the
  value in place. The docs note that `m["Chloe"].x = 0` (direct
  field assignment on the indexed value) is prohibited; use the
  pointer form instead, or reassign the whole value with `m[k] = ...`.

---

## Next: `08-context-and-allocators/`

You've now seen three allocator-aware containers in a row:
`[dynamic]T` (lesson 07), the `defer delete` discipline that pairs
with them (lesson 07b), and `map[K]V` (this lesson). They all share a
hidden parameter: the allocator they pull memory from. Lesson 08
makes that parameter visible -- what `context.allocator` is, how to
swap it for a scope (arena allocators, tracking allocators, per-frame
temp allocators), and why every Odin proc implicitly takes a hidden
`context` parameter.
