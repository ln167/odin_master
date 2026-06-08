# Lesson 05 - fixed arrays

## Concept

A fixed array in Odin is written `[N]T` and behaves as a **value**:
its length `N` is part of the type, it lives inline (no heap, no
separate length word), and assigning one copies every element. This
is the same memory model as a C array, but with the language treating
it as a real first-class value instead of a thing-that-decays-to-a-
pointer-the-moment-you-look-at-it.

---

## Leveling with you (if you come from OOP)

If your instinct on hearing "Vec3" is "a `Vector3` class with an
`.Add()` method and a `.Length()` property" — that's the model to
unlearn for this language, and for game dev in general.

In C# / Java / TypeScript, a vector is a **thing that knows how to do
vector stuff**. The data and the behavior live together. You write
`v.Add(other)` and the runtime dispatches a method through a vtable
or a JIT'd call. The vector "owns" its operations.

In Odin (and C, Rust, GLSL, HLSL), a vector is **three floats sitting
next to each other in memory**. Twelve bytes. That's the whole thing.
There is no `.Add` because there's nothing for `.Add` to be attached
to — `[3]f32` doesn't have methods, it's not a type the language
thinks of as having an interior life. The operations are free
procedures or operators that take three floats and return three
floats: `linalg.length(v)`, `linalg.dot(a, b)`, `a + b`.

This generalizes everywhere. There is no `Player` class with an
`.Update()` method. There is a `Player` struct (some bytes) and a
free proc `update_player :: proc(p: ^Player, dt: f32)`. There is no
"manager" object that owns a list of entities. There is a `[dynamic]
Entity` and a loop that runs over it.

The reason this matters isn't ideology; it's the CPU. **A game runs
fast when the CPU reads memory in straight lines.** The OOP layout
(an array of `Player` references pointing at scattered heap objects,
each with a vtable header and its own allocation) makes the CPU
jump around. The data-oriented layout (an array of `Player` values
packed end-to-end) makes it stream. The methods-on-objects framing
encourages the first; the data-is-data, behavior-is-functions
framing encourages the second.

You will feel the absence of `.` autocomplete for a week. Then you
will stop noticing.

---

### Compared to C (skim if you've never written C)

Three pieces of vocab first — they're not obvious if you came from
C# / TypeScript:

**Pointer.** A pointer is a number that holds the *address* of some
data, instead of the data itself. In C, `int x = 5;` stores a 4-byte
integer somewhere in memory. `int *p = &x;` stores an 8-byte address
(the location where `x` lives) in `p`. You read the actual integer
back through `*p`. Pointers are how C lets one piece of code share
data with another without copying it.

**Pass by value vs pass by pointer.** When a C function takes a
normal value (`foo(x)`), it receives a *copy*. Modifying the copy
inside the function doesn't touch the original. When it takes a
pointer (`foo(&x)`), the function receives the address and can read
or write the original through it. This is the C# distinction between
value types (`int`, `struct`) and reference types (`class`), except
you do it by hand.

**Pointer decay.** Now the weird part. Declare an array in C:

    int a[4] = {10, 20, 30, 40};

Locally, `a` is an array. `sizeof(a)` is `16` (four 4-byte ints).
You can index it as `a[0]`. Fine. But the moment you pass `a` to a
function:

    void process(int a[4]) {
        printf("%zu\n", sizeof(a));   // prints 8, NOT 16
    }

The compiler silently rewrites the parameter type from "array of 4
ints" to "pointer to int". Inside `process`, `a` is just a pointer
(8 bytes on a 64-bit machine). The array's length has **decayed** —
disappeared from the type. There is no `len(a)` in C; the function
has no way to ask how long the array is. So you pass the length as
a second argument, every time, forever:

    void process(int *a, size_t n) { ... }

Why it matters: if a caller passes the wrong `n` (off by one,
copy-pasted from a different array, forgot to update after resizing
the source array), `process` happily reads past the end of memory
and you get a corrupted struct, a security bug, or a crash three
frames later. This class of bug is most of what makes C dangerous.

**What Odin does instead.** `nums: [4]int` is a real type that stays
itself:

    process :: proc(nums: [4]int) {
        fmt.println(len(nums))   // always prints 4
    }

The procedure receives the whole 32 bytes by value (copied — for
this size, that's nothing). The length rides along inside the type,
so `len(nums)` works. A caller trying to pass a `[5]int` gets a
compile error: different type. The length-bug class doesn't exist
because there's no length being passed around as a separate thing.

(For larger arrays where copying would actually cost something, you
pass `^[4]int` — a pointer to the array, like C — or a `[]int`
slice, which we'll see in lesson 06. Both keep the length attached.)

This is what "no pointer decay" means: the type doesn't quietly
mutate into a weaker, length-less type the moment you cross a
function boundary.

### Compared to C++

`std::array<int, 4>` gets you the value semantics and the carried
length, so the *semantics* are the same as Odin's `[4]int`. The
differences are:

1. **Syntax weight.** Odin's `[4]int` is one token pair; C++'s
   `std::array<int, 4>` is a template with a header include.
2. **Element-wise arithmetic.** This is the big one. In Odin,

       p: [3]f32 = {1, 2, 3}
       q: [3]f32 = {10, 20, 30}
       r := p + q       // r is {11, 22, 33}

   works out of the box for any numeric `T`. The `+`, `-`, `*`, `/`
   operators are defined element-wise on `[N]T` when `T` is numeric.
   No SIMD intrinsics, no overloaded operator, no library. In C++
   you would either write a loop, reach for `std::valarray`, or
   pull in glm/Eigen. Odin treats short numeric arrays as the
   natural type for game-engine vector math, so it builds the
   operators in.
3. **Swizzles.** A `[4]f32` supports `.x .y .z .w` and `.r .g .b .a`
   accessors as a courtesy for graphics code. C++ requires a custom
   struct or a union trick.

### Compared with Rust

Rust has `[T; N]` with the same value semantics and length-in-type
discipline. The notable difference is that Rust does NOT define
element-wise `+` on `[T; N]`; you need `std::simd` (nightly) or a
crate. Odin gives it to you in the core language.

---

## Hello the lesson covers

You'll write a small program that:

1. Declares a fixed array of ints and prints its length and end
   elements.
2. Iterates with `for v, i in nums` and notes the index-comes-second
   ordering.
3. Defines a `Vec3` alias for `[3]f32` and uses element-wise math
   on two of them.
4. Takes a slice of the int array and prints it.
5. (Break it.) Causes one out-of-bounds panic and one
   length-mismatch compile error, deliberately, and reads the
   message.

The point is to internalize: `[N]T` is a value with a known length,
the operators are richer than C++'s, and the type system refuses to
let you mix lengths.

---

## Reference: the syntax you'll need

Declaration with type and literal:

    nums: [4]int = {10, 20, 30, 40}

Builtin length (a compile-time constant for fixed arrays):

    len(nums)            // 4

For loop, value-then-index. Note the order is **value first**, which
is deliberate: most loops don't need the index, so the more common
thing is named first.

    for v, i in nums { ... }

If you only want values:

    for v in nums { ... }

Type alias and array literal:

    Vec3 :: [3]f32
    p: Vec3 = {1, 2, 3}

Slicing produces a `[]T` slice (covered properly in lesson 06):

    middle := nums[1:3]   // type []int, length 2

Out-of-bounds access. A *constant* index is caught at compile time:

    a[10]                 // COMPILE error: Index '10' is out of bounds range 0..<4

An index the compiler can't prove triggers a *runtime* bounds check:

    i := len(os.args) + 9
    a[i]                  // runtime panic: Index 10 is out of range 0..<4

Bounds checks can be turned off project-wide with the `-no-bounds-
check` build flag once you've measured and decided it matters.

---

## Tasks

Open `main.odin`. The file has the package line and an empty `main`.
The procedure-level comments tell you what each step should do; type
the bodies yourself. Don't look at this README's syntax block while
typing the first attempt; look only if you get stuck.

When you finish, run:

    odin run main.odin -file

Compare your output to `expected-output.txt`. If it matches you're
done.

---

## Now break it on purpose

Append two more lines to `main` after everything works:

1. Read `a[10]`. Build it. Because `10` is a compile-time constant, Odin
   proves it is outside `0..<4` and **rejects it at compile time**:
   `Index '10' is out of bounds range 0..<4`. No runtime check is even
   emitted. The bounds *check* you may have heard about is only for
   indices the compiler can't prove — e.g.
   `i := len(os.args) + 9` then `a[i]`, where `i` isn't known until
   runtime. *That* version builds, then **panics at runtime**:
   `Index 10 is out of range 0..<4`. So: constant index → compile error;
   unprovable index → runtime panic.
2. Try to add a `[3]f32` and a `[4]f32`. Build. Read the compile
   error. This one IS a compile error, because the lengths are part
   of the types. Compare to the C version, where the analogous code
   would silently compile and read past the end of the shorter
   array.

Then delete the break-it lines so the file matches expected output.

---

## Low-level notes

- `[4]int` on a 64-bit machine is 32 bytes, naturally aligned. No
  header, no length field, no pointer indirection. Same layout as
  `int a[4]` in C.
- `[3]f32` (the Vec3 alias) is 12 bytes. When you want N of them
  packed for SIMD, you'll use `#soa [N]Vec3` in lesson 12, which
  pivots the layout to three separate `[N]f32` columns.
- The `+ - * /` operators on `[N]T` are compiled to straight-line
  scalar code at `-o:none` and `-o:minimal`, and the optimizer can
  vectorize them at higher levels. You're not paying a hidden cost
  versus writing the loop yourself.

---

## Next: `06-slices/`

A slice (`[]T`) is a pointer-plus-length view into a fixed array,
a dynamic array, or any other contiguous storage. Lesson 06 makes
the difference concrete.
