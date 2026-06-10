# Lesson 15 - foreign import (calling C)

## Concept

`foreign import` is how an Odin program calls a function whose code
lives in a **different language's compiled library** -- almost always
C, sometimes C++ exposed through a C-shaped interface. You don't get
the source. You get a `.lib` / `.dll` / `.so` / `.dylib` file and a
header that tells you what's inside it. Your job is to translate the
header into Odin declarations, point Odin at the library, and let the
**linker** stitch the two halves together at build time.

That's the whole feature in one sentence: `foreign` lets you declare
the *shape* of a function ("there is a `puts` somewhere that takes a
C string and returns an int") without supplying its *body*. The body
is in libc, in SDL3, in the Windows kernel, in the Mapbox SDK. Odin
emits a call site that matches what those libraries expect on the
wire, and at link time the symbol gets wired up to real code.

Why this matters: **almost every existing library in the world is a C
library, or has a C interface.** OpenGL, Vulkan, SDL, GLFW, FFmpeg,
SQLite, every operating system API, every audio library, every
physics engine. If you can't talk to C, you're stuck reimplementing
the world. `foreign import` is the door.

---

## Leveling with you (if you come from OOP)

If you've ever written this in C#:

    [DllImport("kernel32.dll")]
    static extern int GetCurrentProcessId();

then you already understand the feature. That's **P/Invoke**, and
it's the same idea: tell the runtime "there's a function named
`GetCurrentProcessId` over in `kernel32.dll`, here's its signature,
call it for me." The CLR finds the DLL, looks up the symbol, marshals
the arguments across the managed/unmanaged boundary, and gives you
back the return value.

Odin's version is heavier in syntax but does less hidden work. There
is no marshaller. There is no garbage-collected heap on one side and
manual `malloc` on the other side. There is no "managed string" that
secretly gets copied into a UTF-16 buffer for you. When you declare:

    foreign libc {
        puts :: proc "c" (s: cstring) -> i32 ---
    }

you are saying, *literally*: "I promise that somewhere in the linked
binary, there is a symbol called `puts` that takes one argument
(a pointer to a null-terminated byte string) in whatever register the
C calling convention says, and returns a 32-bit integer in whatever
register the C calling convention says." There is no translation
layer. The Odin compiler emits the exact machine instructions a C
compiler would have emitted for `puts(s)`. If your declaration lies
about the signature, you get **silent corruption**, not an exception.

The TypeScript / Node equivalent is `ffi-napi` or `node-ffi`. The
Python equivalent is `ctypes`. Same conceptual model in every
language: declare the contract, link to the library, hope you got the
contract right.

---

### Compared to C (skim if you've never written C)

In C, calling another C function is the most boring thing in the
world. You `#include <stdio.h>`, write `puts("hi");`, and the
compiler already knows the signature because the header told it. The
linker finds `puts` in libc (which is linked by default on every
platform) and you're done. No ceremony at all.

The interesting thing about Odin's `foreign` system is that it makes
visible what C hides:

1. **You declare the signature yourself.** There is no `#include`. The
   header file's job -- telling the compiler what `puts` looks like --
   is now your job, written in Odin's syntax instead of C's.
2. **You name the calling convention.** In C this is implicit; every
   function is `cdecl` unless tagged otherwise. In Odin you write
   `proc "c" (...)` so it's explicit which ABI applies.
3. **You name the library.** In C, `puts` lives in libc and libc is
   linked by default, so you never think about it. In Odin you write
   `foreign import libc "system:c"` (Linux) or
   `foreign import libc "system:libucrt.lib"` (Windows) and the build
   passes that name to the linker.
4. **Strings are not interchangeable.** A C string is a pointer to
   bytes that ends at the first zero byte. Odin's `string` is a
   pointer + a length, no terminator. They are **not** the same
   memory layout. To pass an Odin string to C you must convert to
   `cstring` (and the conversion either copies + null-terminates, or
   asserts that your string already has a trailing zero).

The actual function call -- once you've got the declaration right --
is identical to what C would emit. Same registers, same stack frame,
same return path.

### Compared to C#

Side by side. Same function: "give me the current process ID, an
integer, from the Windows kernel."

C#:

    [DllImport("kernel32.dll")]
    static extern int GetCurrentProcessId();

    var pid = GetCurrentProcessId();

Odin:

    foreign import kernel32 "system:Kernel32.lib"

    foreign kernel32 {
        GetCurrentProcessId :: proc "stdcall" () -> u32 ---
    }

    pid := GetCurrentProcessId()

Differences:

- C#'s `[DllImport]` is an *attribute* on a single method. Odin
  bundles many extern declarations together inside one
  `foreign LIB { ... }` block.
- C# infers a default calling convention; Odin makes you spell
  `"stdcall"` (Win32 ABI) or `"c"` (cdecl) explicitly. This is good:
  Win32 actually uses stdcall, and if you guess wrong the call site
  trashes the stack.
- The `---` at the end of each line is Odin's marker for "no body,
  this is just a declaration." It's the parser's way of distinguishing
  a foreign declaration from a normal proc that you forgot to write.
- C# marshals strings, arrays, structs for you (sometimes well,
  sometimes painfully). Odin does not marshal anything. You convert
  types yourself.

### Compared with Rust

Rust's syntax is the closest:

    #[link(name = "c")]
    extern "C" {
        fn puts(s: *const c_char) -> c_int;
        fn strlen(s: *const c_char) -> usize;
    }

    unsafe { puts(b"hi\0".as_ptr() as *const c_char); }

Same shape: name the library, declare the calling convention, list
the procedures with C-compatible types. The big surface differences
are that Rust forces every foreign call to be inside an `unsafe`
block (Odin doesn't), and Rust has a `c_char` / `c_int` /
`c_size_t` ladder of platform-correct integer aliases (Odin has the
same thing in `core:c` -- `c.int`, `c.size_t`, etc.).

---

## Reference: the syntax you'll need

### Importing the library

The `foreign import` declaration tells the linker which library file
holds the symbols. The name on the right is platform-specific:

    when ODIN_OS == .Windows {
        foreign import libc "system:libucrt.lib"
    } else when ODIN_OS == .Darwin {
        foreign import libc "system:System"
    } else {
        foreign import libc "system:c"
    }

`system:` means "ask the system linker to find it". For a library
shipped alongside your project you'd write a relative path:
`foreign import sdl "vendor/SDL3/SDL3.lib"`.

The left-hand name (`libc` above) is just a local handle; you'll use
it again on the next line to attach declarations to it.

### Declaring the procedures

    @(default_calling_convention="c")
    foreign libc {
        puts   :: proc(s: cstring) -> i32 ---
        strlen :: proc(s: cstring) -> uint ---
    }

Read this top to bottom:

- `@(default_calling_convention="c")` -- every proc in the block uses
  the C calling convention unless overridden. You could instead spell
  it per-proc as `proc "c" (...)`, but the attribute is less noisy
  when you have many.
- `foreign libc { ... }` -- attach these declarations to the library
  imported under the local name `libc`.
- `puts :: proc(s: cstring) -> i32 ---` -- a normal Odin proc
  signature, but ending with `---` instead of a `{ ... }` body. The
  `---` is what marks it as foreign: "no body, the linker will find
  one."

### The `cstring` type

`cstring` is the Odin type that **lays out in memory the same way C
char pointers do**: a pointer to bytes, terminated by a zero byte, no
length stored anywhere. It is *not* the same type as Odin's `string`,
which is a `{data: ^byte, length: int}` pair with no terminator.

Conversions:

    s: cstring = "hello"                  // literal: compiler emits a null-terminated byte buffer
    s2: cstring = cstring(some_byte_ptr)  // if you know the pointer is null-terminated
    odin_str := string(c_str)             // C -> Odin: walks to find the null, builds a length

A bare `"hello"` literal is typed as `string` by default. When the
target type is `cstring` (such as a `cstring` parameter), the
compiler emits a null-terminated buffer for you. Hand-built strings
(from concatenation, slicing, file reads) are NOT null-terminated;
passing them to a C function expecting `cstring` is a bug that will
read past the end of your buffer until it finds a random zero.

### `core:c` -- platform-correct integer aliases

In real C bindings you'll see `c.int`, `c.long`, `c.size_t`,
`c.uintptr_t`, etc. These come from `import "core:c"` and they expand
to the correct size for the current target platform. Use them when
binding real C APIs; don't hardcode `i32` for what the C header
calls `int`, because `int` is `i64` on some platforms.

### `core:c/libc` -- pre-made bindings to the C standard library

Odin already ships bindings to libc as `core:c/libc`. You can:

    import "core:c/libc"
    libc.puts("hello")

For libc specifically you almost never need to write your own
`foreign import` block. The point of writing one in this lesson is to
**see how it works** so that the day you need to bind some random C
library that nobody has wrapped yet, you'll know what to do.

### Struct layout: `#packed` and `#align`

When you pass structs across the C boundary, both sides have to agree
on byte layout. C's default rule is "fields appear in declaration
order, with padding inserted so each field is naturally aligned, and
the whole struct is padded to a multiple of its largest field's
alignment." Odin matches this by default, so most of the time
ordinary struct declarations Just Work.

When they don't, you have two knobs:

    My_Packed :: struct #packed {        // remove all padding; fields are back-to-back
        a: u8,
        b: u32,
    }

    My_Aligned :: struct #align(16) {    // force the whole struct to 16-byte alignment
        position: [4]f32,
    }

`#packed` is what you reach for when a C header says
`#pragma pack(1)`. `#align(N)` is for SIMD-friendly types or any
struct that the C side declared with `alignas(N)`.

This lesson does not pass structs across the boundary -- libc's
`puts` and `strlen` only take strings -- but the rule is good to know
before you graduate to SDL3 or OpenGL, both of which throw structs
around constantly.

---

## The mental model: declare the contract, link the symbol

A `foreign` declaration generates **no code**. The compiler does not
emit a single instruction for the body of `puts` -- there is no body.
What it emits is a reference: "at this call site, jump to wherever
the linker decides `puts` lives." Then the linker, much later in the
build, walks all the `.lib` / `.so` / `.dylib` files you named in
your `foreign import` lines, finds a symbol called `puts`, and
patches its address into your call site.

This means three things:

1. **The Odin compiler cannot type-check the C side.** Your
   declaration could say `puts :: proc(s: cstring) -> [4]f64 ---`
   and Odin would compile that without complaint. At runtime, the
   real `puts` returns one int, your code reads four floats from
   registers that contain garbage, and you get nonsense. There is no
   protection. Verify your declarations against the C header.

2. **Linker errors look different from compile errors.** Misspell
   `puts` as `putz`, and you get an `unresolved external symbol
   putz` from the linker, not a syntax error from Odin. The error
   surfaces at the very end of the build, after everything else
   succeeded.

3. **The library must actually be there at link AND run time.** A
   `.dll` / `.so` is loaded by the operating system when your program
   starts. If the file is missing or the wrong version, the OS
   refuses to launch your binary. For `system:c` and friends this is
   never a problem (libc is always present). For SDL or Mapbox or
   anything else you're shipping, you need to put the runtime library
   next to your executable or in a system-known path.

---

## Tasks

Open `main.odin`. The procedure-level comments walk you through four
exercises that build up the foreign-import skill:

1. **Use the pre-made bindings.** Call `libc.puts` from
   `core:c/libc` to see that the easy path works.
2. **Convert an Odin string to a C string.** Show the type mismatch,
   then fix it.
3. **Write your own `foreign` block.** Declare `puts` and `strlen`
   yourself, bound to libc, and call them. This is the lesson's
   center of gravity.
4. **Round-trip a length.** Call your own `strlen`, get back a C
   `size_t`, print it.

Type the bodies yourself. When you finish:

    odin run main.odin -file

Compare against `expected-output.txt`.

**Why the output looks out of order.** Your `fmt.println` lines (the four
`--- step N ---` headers and the `strlen` result) do *not* interleave with
the C `puts` lines (`from the bundled binding`, `hello, Ada`, `from my own
foreign import`). All the `fmt` lines print first, then all the `puts` lines.
That is a buffering artifact, not a bug: Odin's `fmt` writes to its own stdout
buffer and libc's `puts` writes to C's separate stdio buffer, and the two
flush independently — neither runtime controls the other's flush timing. The
moment you mix two runtimes writing to the same terminal you give up ordering
between them. If you needed strict interleaving you'd flush explicitly
(`libc.fflush(nil)` after each C call) or route every line through one side.

---

## Now break it on purpose

After the file works, try each of these in turn, observe what
happens, then revert.

1. **Wrong calling convention.** Change `proc "c"` to `proc "stdcall"`
   on your `puts` declaration. On x86-64 Linux/macOS this is a no-op
   (only one convention exists). On 32-bit Windows it would corrupt
   the stack; on 64-bit Windows the ABI for libc is still effectively
   the same so you may not see a crash, but you've just lied to the
   compiler. The point is: there is **no protection**. The compiler
   trusts you.

2. **Wrong return type.** Declare
   `puts :: proc(s: cstring) -> [4]f64 ---` and try to print the
   returned value. You'll get garbage floats. Notice that nothing
   crashed and nothing warned you. This is how ABI mismatches behave:
   silently wrong, not loudly wrong.

3. **Passing an Odin string where cstring is required.** Try
   `libc.puts(some_string)` where `some_string : string`. You'll get
   a compile error -- this is one of the few mistakes Odin *can*
   catch, because `string` and `cstring` are different types in
   Odin's type system. Now convert with
   `strings.clone_to_cstring(some_string, context.temp_allocator)`
   and watch it work.

4. **Misspell the symbol name.** Change `puts` to `putz` in your
   foreign block, leaving the call site as `putz(...)`. Build. Read
   the *linker* error -- on this Windows/MSVC toolchain it reads
   `unresolved external symbol putz` (Unix linkers phrase the same
   thing as `undefined reference to 'putz'`). Either way it surfaces at
   the very end of the build, from the linker, not from the Odin
   compiler. This is the error you'll hit most often when binding a new
   library and getting the C symbol name slightly wrong.

---

## Low-level notes

- A **calling convention** is the contract between caller and callee
  about which registers hold which arguments, who cleans up the
  stack, and which register holds the return value. On x86-64
  Linux/macOS the System V ABI puts the first six integer args in
  `rdi, rsi, rdx, rcx, r8, r9`. On x86-64 Windows the convention is
  different: `rcx, rdx, r8, r9` plus shadow space. If your
  declaration uses the wrong convention, the callee reads its
  arguments from the wrong registers and you get garbage.

- ABI mismatches are **silent**. There is no runtime check that the
  signature you declared matches the symbol you called. The CPU just
  executes the call, the callee reads its arguments from wherever the
  convention says, and life goes on with corrupted values. This is
  the single most dangerous thing about FFI in any language.

- `foreign` itself generates **no code**. It's purely a declaration
  to the linker. If you write a `foreign` block and never call any
  of the procedures in it, the linker still demands the symbols
  exist (with the default settings). To declare optional symbols
  you'd use `@(link_name=...)` and dynamic loading, which is a
  more advanced topic.

- The C standard library is special in that it's linked into every
  C program by default. On Linux it's `libc.so.6`, on macOS it's
  inside `libSystem.dylib`, on Windows it's a pair of MSVC runtime
  libs. The `when ODIN_OS == ...` block in `core:c/libc/stdio.odin`
  exists exactly to paper over those three names so you can write
  `import "core:c/libc"` and not care which platform you're on.

- Strings are the single most error-prone part of C FFI. `cstring`
  in Odin is `^u8` plus an implicit "ends at the first zero byte".
  Odin string literals like `"hello"` automatically get a trailing
  zero when targeted at a `cstring` parameter, so direct literals
  Just Work. Strings you build at runtime (via `fmt.tprintf`,
  slicing, file reads) are **not** null-terminated; passing them to
  C without conversion reads past the end.

---

## Next: `16-when-and-build-flags/`

Conditional compilation. You already saw a glimpse of it above:
`when ODIN_OS == .Windows { ... }` chooses different code paths at
compile time based on the target platform. Lesson 16 covers the full
machinery -- `when`, build tags, the `ODIN_*` constants -- which is
how you write a single source tree that compiles cleanly for Windows,
Linux, macOS, web, and consoles.
