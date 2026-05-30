# Lesson 06 - slices

## Concept

A slice in Odin, written `[]T`, is a **view** into a contiguous run of `T`
values that live somewhere else. It is two words: a pointer to the first
element, and an integer length. That is the entire runtime representation.
A slice does not allocate, it does not own, it does not free. It just says
"there are `len` consecutive `T`s starting here."

This is the workhorse type for passing array-like data around. When a
procedure wants to read or write some run of integers without caring
whether they came from a fixed array, a dynamic array, a chunk of a
larger buffer, or freshly heap-allocated memory, it takes `[]int`. The
caller hands over a 16-byte header (on a 64-bit machine) and the
procedure can index, iterate, take `len`, sub-slice, and mutate the
underlying elements. The cost of the call is the cost of copying two
words.

The trade you make for that flexibility is responsibility. The slice
header has no idea who owns the storage it points at, no idea how long
that storage will stay valid, no idea whether the backing array has
since been resized. If the backing storage goes away, the slice silently
becomes a pointer to garbage. Odin does not have lifetimes, so the
compiler will not stop you. Keeping a slice valid is your job.

---

## Leveling with you (if you come from OOP)

In C# / Java / TypeScript the language gives you a hierarchy of
collection types that all *own their data*: `T[]`, `List<T>`, `IList<T>`,
`IEnumerable<T>`, `IReadOnlyList<T>`. Behind each of these is a heap
allocation, a length, often a capacity, sometimes a tree of indirections.
When you pass a `List<int>` to a method, you're passing a reference to a
managed object whose lifetime is tracked by the GC; the method can append,
clear, replace elements, and the original caller sees all of it because
you're both pointing at the same object.

An Odin slice is **not** that. It's closer to C#'s `Span<T>`, which was
deliberately added to .NET to provide exactly this concept: a borrowed
view into memory that someone else owns. A `Span<int>` is a pointer plus
a length; it doesn't allocate; it doesn't free; it might be looking into
a `T[]`, a stackalloc, a piece of a string, or a chunk of unmanaged
memory. The compiler enforces some lifetime rules to keep you safe
(`Span<T>` is a `ref struct`, can't escape to the heap, can't be a field
of a class). Odin gives you the same view-shaped value with none of the
enforcement: you get the flexibility, you carry the discipline.

There is no `List<T>` equivalent in this lesson. Odin's growable
container is `[dynamic]T`, which is lesson 07. The distinction matters:
`[]T` is a **borrowed view** (no ownership, no growth, fixed length once
made), `[dynamic]T` is an **owned, growable buffer** (allocates, grows,
must be freed). A `[dynamic]T` can be implicitly converted to `[]T` to
hand a procedure a view of its contents, the same way `List<T>` exposes
`AsSpan()` in C#.

### Compared to C

C does not have a slice type. The C way to pass "some integers" to a
function is:

    void process(int *nums, size_t count);

The pointer and the length travel as two separate arguments, and it is
the caller's job to keep them in sync. The compiler does not check that
`count` matches the real allocation. Pass `process(buf, 100)` when `buf`
only has 50 elements, and `process` happily reads 200 bytes past the end
of the buffer. This is one of the most productive bug factories in the
language.

Odin's `[]int` is exactly the same idea (pointer plus count), except
**the language treats them as a single value**. You can't pass the
pointer without the length, you can't pass the length without the
pointer, and `len(s)` will always agree with the slice you were handed.
The bug class doesn't disappear (you can still build a slice that points
past valid memory), but you stop being able to *accidentally* desync the
pointer from its length, because there is only one value.

The other thing C lacks: there is no syntax for "the middle of this
array". You write the pointer arithmetic yourself: `process(buf + 10,
20)` to mean "20 elements starting at index 10". Odin writes that as
`buf[10:30]`, and the result is still a `[]int` that other code can
sub-slice further.

### Compared to C#

| Concept | C# | Odin |
|---------|----|----|
| Borrowed view, mutable | `Span<T>` | `[]T` |
| Borrowed view, read-only | `ReadOnlySpan<T>` | (no built-in; convention only) |
| Owned, growable buffer | `List<T>` | `[dynamic]T` (lesson 07) |
| Fixed-length array value | `T[]` (heap) or stackalloc | `[N]T` (inline value, lesson 05) |
| Get a view over a list | `list.AsSpan()` | implicit `[]T` from `[dynamic]T` |
| Sub-view | `span.Slice(start, length)` | `s[start : start+length]` |
| Length | `span.Length` | `len(s)` |

The mental swap from C# is mostly: stop reaching for `List<T>` by reflex.
A lot of code in idiomatic Odin passes `[]T` around and never grows it,
because the caller already allocated enough. You only reach for
`[dynamic]T` when you genuinely don't know the size up front.

Note one missing thing: Odin has no built-in `ReadOnlySpan<T>`. The
compiler does not stop a procedure that takes `[]int` from mutating the
underlying elements. If you want "read-only", you document it in the
procedure name and trust callers, or you pass by value through a wrapper
struct. This is a real ergonomic gap versus C#.

### Compared with Rust

Rust's `&[T]` is the direct equivalent: a fat pointer (data + length)
that borrows from some owner. The big difference is that Rust's borrow
checker tracks the lifetime of the slice and refuses to compile code
where the slice could outlive its backing storage:

    fn dangling() -> &[i32] {
        let v = vec![1, 2, 3];
        &v[..]                // compile error: `v` doesn't live long enough
    }

Odin will happily compile the same shape:

    dangling :: proc() -> []int {
        nums := [3]int{1, 2, 3}
        return nums[:]        // compiles; returns pointer into dead stack frame
    }

There is no lifetime tracking and no warning. The slice header you return
points at a stack frame that has been popped, and the next procedure
call will overwrite it. You are responsible for not writing this. The
rule of thumb: a slice is valid only as long as its backing storage is
valid, and the language can't help you reason about that.

Rust also distinguishes `&[T]` from `&mut [T]` at the type level. Odin
doesn't; `[]T` is always mutable through.

---

## Reference: the syntax you'll need

### Making a slice from an existing array

    nums: [6]int = {10, 20, 30, 40, 50, 60}

    all  := nums[:]      // []int, length 6, whole array
    mid  := nums[1:4]    // []int, length 3, {20, 30, 40}
    tail := nums[3:]     // []int, length 3, {40, 50, 60}
    head := nums[:2]     // []int, length 2, {10, 20}

The expression `nums[lo:hi]` is **half-open**: it includes index `lo`,
excludes index `hi`. `len(nums[lo:hi]) == hi - lo`. Both bounds are
optional; omit `lo` for "from the start", omit `hi` for "to the end",
omit both for "everything". Out-of-range bounds (lo < 0, hi > len,
lo > hi) panic at runtime in debug builds.

### Length, capacity, indexing

    len(all)             // 6
    cap(all)             // 6   (for slices, cap == len)
    all[0]               // 10
    all[len(all) - 1]    // 60

`cap(slice)` exists but is equal to `len(slice)` for a plain `[]T`. The
slice/cap distinction matters for `[dynamic]T` (lesson 07), not here.

### Iteration

    for value in nums { ... }
    for value, index in nums { ... }
    for &value in nums { value = 0 }     // iterate by reference, mutate in place

Same `value, index` order as fixed arrays from lesson 05: value first
because that's what loops usually want.

### Passing to a procedure

    sum :: proc(values: []int) -> int {
        total := 0
        for v in values { total += v }
        return total
    }

    main :: proc() {
        nums: [6]int = {1, 2, 3, 4, 5, 6}
        fmt.println(sum(nums[:]))     // prints 21
    }

The call passes 16 bytes (pointer + length) by value. The procedure sees
`values` as `[]int` with `len(values) == 6`. If it mutates `values[0]`,
the change is visible in `nums` back in `main`, because they point at
the same memory.

### Making a slice with its own backing storage

    fresh := make([]int, 6)              // allocates 6 ints, zeroed
    defer delete(fresh)                  // release when done

    sized := make([]int, 6, context.allocator)
    defer delete(sized)

`make([]T, n)` allocates `n * size_of(T)` bytes through the current
allocator, zeros them, and gives you back a slice that owns that
allocation. You must `delete` it when you're done. This is how you get a
slice whose backing storage you control (instead of borrowing from a
fixed array). Most lessons after this use `make` plus `defer delete`.

### The underlying representation

A slice header is two fields:

    Raw_Slice :: struct {
        data: rawptr,    // 8 bytes on 64-bit
        len:  int,       // 8 bytes on 64-bit
    }

That is the entire runtime value of any `[]T`. 16 bytes total. Type
information lives only at compile time; at runtime there is no `T` tag
on the slice itself.

---

## The mental model: a slice is a view, not a container

If you take one thing from this lesson, take this: a slice is a labeled
window onto someone else's memory.

    nums (backing array, 6 ints, 48 bytes on the stack):

      index:    0    1    2    3    4    5
              +----+----+----+----+----+----+
      value:  | 10 | 20 | 30 | 40 | 50 | 60 |
              +----+----+----+----+----+----+
                ^    ^                   ^
                |    |                   |
                |    +-- mid starts here, len 3
                +-------- all starts here, len 6
                                         ^
                                         + tail ends just past index 5

    all  = {data: &nums[0], len: 6}     // 16 bytes
    mid  = {data: &nums[1], len: 3}     // 16 bytes
    tail = {data: &nums[3], len: 3}     // 16 bytes

All three slices point into the same 48 bytes of storage. There is one
copy of the data; there are three views over it. Writing `mid[0] = 999`
stores 999 at the address `&nums[1]`. Therefore `nums[1]` is now 999,
`all[1]` is now 999, and the slices `mid` and `all` both reflect the
change the next time you read them. There was no copy; there was no
"propagation"; you wrote one memory location and three names disagree
about what to call it.

This is called **aliasing**, and it is the most important property of
slices to internalize. It is the same model as C# `Span<T>` or Rust
`&mut [T]`. If aliasing is unexpected behavior to you, you'll write bugs
where one procedure "magically" sees a change made by another. If
aliasing is your *intent*, slices are the cheapest possible way to
expose a sub-region of a buffer to other code.

The flip side: when the backing array goes away, all views into it
become invalid. A slice into a local `[6]int` is valid until the
function returns. A slice into a `[dynamic]int` that you then `append`
to is valid only until the append triggers a reallocation. A slice into
a `make`-allocated buffer is valid until you `delete` that buffer. The
slice header doesn't change when the backing storage dies; it just
silently starts pointing at freed or stale memory.

---

## Tasks

Open `main.odin`. The procedure comments walk you through six exercises
that build the slice mental model: take a slice of a fixed array, see
the aliasing, pass slices to procedures, sub-slice a slice, iterate by
reference, and allocate a slice with `make`. Type the bodies yourself.

When you finish:

    odin run main.odin -file

Compare against `expected-output.txt`.

---

## Now break it on purpose

After the file works, try each of these in turn, observe the result,
then revert:

1. **Out-of-bounds slice expression.** Add `bad := nums[2:99]` after the
   array is declared and print it. Build, run, read the panic. Note that
   bounds checks include the *upper* index: `nums[2:6]` is fine on a
   6-element array because the upper bound is exclusive, but `nums[2:7]`
   panics. This is a runtime check that the compiler inserts in debug
   builds; it can be disabled with `-no-bounds-check`.

2. **Mutate through a slice, watch the array change.** You already do
   this in the tasks, but try the opposite direction: write to
   `nums[1]` directly and then print `mid` (a slice that covers that
   element). Confirm the slice sees the change. This is the "one
   memory, many names" rule from the model above, and it goes both
   ways.

3. **Dangling slice.** Write a small proc:

       leak :: proc() -> []int {
           local: [4]int = {1, 2, 3, 4}
           return local[:]
       }

   Call it from `main`, store the result in a variable, then call a
   second function that uses some stack space (a few `fmt.println`s with
   intermediate computations will do), then print the slice. The
   compiler will not warn you. You may see the original values, you may
   see garbage, you may see whatever the next stack frame happened to
   write. This is the dangling-slice failure mode and it is what the
   "you are responsible for not outliving the backing storage" line
   means in practice.

4. **Slice header copy vs element copy.** Take a slice `a := nums[:]`,
   make a second variable `b := a`, then write `b[0] = 777`. Print
   `a[0]`. You'll see 777. Assigning one slice to another copies the
   *header* (16 bytes: pointer + length), not the elements. Both names
   now point at the same backing storage. To get a real copy you'd use
   `slice.clone` from `core:slice`, which allocates fresh memory and
   copies element-by-element.

---

## Low-level notes

- A slice on a 64-bit machine is exactly 16 bytes: an 8-byte data
  pointer plus an 8-byte length. Compare:

  | Type     | Size on 64-bit | Notes                                   |
  |----------|---------------:|-----------------------------------------|
  | `[6]int` | 48 bytes       | value, no header, lives inline          |
  | `[]int`  | 16 bytes       | header only, data lives somewhere else  |
  | `^int`   | 8 bytes        | bare pointer, no length                 |

  Passing `[]int` to a procedure copies the 16-byte header. The elements
  are not touched. That is why "take a slice and pass it" is the
  idiomatic way to give a procedure read/write access to a range of
  memory: it's cheap and the length rides along.

- The underlying type is `Raw_Slice :: struct { data: rawptr; len: int }`
  in `base:runtime`. The `T` in `[]T` is purely a compile-time tag for
  indexing arithmetic and type-checking; the runtime header is
  type-erased.

- `make([]T, n)` calls the current allocator, asks for `n * size_of(T)`
  bytes, zeros them, and returns a slice header pointing at the
  allocation. `delete(s)` returns those bytes to the allocator. Neither
  call is special-cased for slices; they're the same `mem.alloc` /
  `mem.free` you'd use for anything else, wrapped to be type-aware.

- `cap(s)` exists on a plain `[]T` and is equal to `len(s)`. Capacity is
  only an interesting concept on growable containers, which is lesson
  07's `[dynamic]T`.

- Iteration over a slice compiles to a pointer-walk loop: start at
  `s.data`, increment by `size_of(T)`, stop at `s.data + s.len *
  size_of(T)`. There is no per-iteration bounds check; bounds are
  established once by the loop bound.

---

## Next: `06b-pointers/`

You've seen pointers in passing already (`for &v in s`, `^Player`, `&mu`).
Lesson 06b makes them the main topic: what `^T` actually is, how `&`
and `^` work, the distinction between `^T` (one) / `[^]T` (many, no
length) / `[]T` (slice with length), and `new` / `free`.

Pointers are foundational for everything after this lesson - a
`[dynamic]T` is a pointer plus length plus capacity, so understanding
pointers makes lesson 07 (dynamic arrays) click.

A `[dynamic]T` is an owned, growable buffer: pointer plus length plus
capacity plus an allocator handle. It can `append`, it can resize, it
owns its memory and must be `delete`d. The thing that makes it click
with this lesson: a `[dynamic]T` converts implicitly to `[]T`, so every
procedure you wrote that takes a slice in this lesson keeps working
when the caller is using a dynamic array. The view stays the same; only
the storage strategy changes.
