# Lesson 15 — `foreign` and C bindings

## Concept
`foreign import <name> "<library>"` declares an external library. A
`foreign <name> { … }` block lists the procedure prototypes you want
to call. Odin handles the C ABI; you supply C-equivalent types
(`cstring`, `c.int`, `^T`, `rawptr`).

## Setup
1. `cd content/domains/odin/vault/content/domains/odin/vault/lessons/15-foreign-and-bindings`
2. Open `main.odin`.

## Do this
Type:

```odin
package main

import "core:c"
import "core:fmt"
import "core:strings"

// Pick the right system C library per OS.
when ODIN_OS == .Windows {
    foreign import libc {
        "system:libucrt.lib",
        "system:legacy_stdio_definitions.lib",
    }
} else when ODIN_OS == .Darwin {
    foreign import libc "system:System"
} else {
    foreign import libc "system:c"
}

// Default calling convention inside `foreign` is "c" — no annotation needed.
foreign libc {
    puts :: proc(s: cstring) -> c.int ---
    abs  :: proc(j: c.int)   -> c.int ---

    // link_name: bind a C symbol under a different Odin name.
    @(link_name = "puts")
    say :: proc(s: cstring) -> c.int ---
}

main :: proc() {
    // cstring literals are NUL-terminated. Pass them directly.
    puts("hello from libc.puts")
    say("hello via link_name")

    fmt.println("abs(-42) =", abs(-42))

    // Odin string -> cstring: takes O(N) for the NUL copy.
    msg := "hi from an odin string"
    c_msg := strings.clone_to_cstring(msg, context.temp_allocator)
    puts(c_msg)
    free_all(context.temp_allocator)
}
```

## Now do this
1. `:w`
2. `odin run main.odin -file`

3. **You should see:**

       hello from libc.puts
       hello via link_name
       abs(-42) = 42
       hi from an odin string

## What just happened
- `foreign import libc "system:c"` (Linux/macOS) or the Windows pair
  asks the linker to resolve the named symbols against the system C
  runtime. Nothing is loaded at parse time — symbols are looked up at
  link time.
- Inside `foreign libc { … }`, each declaration ends in `---`, telling
  the parser "no body — this is just a prototype". Without `---`, Odin
  would think you were declaring a *procedure type*.
- `@(link_name = "puts")` binds a C symbol to a different Odin name.
  Use it when the C name is ugly, conflicts, or is mangled.
- `cstring` is `^u8` to a NUL-terminated byte run. Odin string literals
  *can* implicitly convert to `cstring` since the compiler emits a NUL
  after every string-literal in the binary; non-literal strings need
  an explicit `clone_to_cstring`.

## Low-level interlude
- An Odin `string` is `(ptr, len)`. A `cstring` is `(ptr,)` plus a
  trailing zero byte. Converting `string` → `cstring` requires copying
  bytes plus a NUL. Converting `cstring` → `string` requires scanning
  for the NUL (O(N)).
- Calling convention: foreign blocks default to `"c"` (cdecl). Specify
  `"std"`/`"stdcall"` for legacy Win32 APIs, `"system"` for "the OS
  default". Mismatched conventions corrupt the stack — and Windows is
  particularly unforgiving.
- Foreign procedures receive *no implicit context*. If you call back
  into Odin from a C-style callback, you must reset it:

  ```odin
  on_event :: proc "c" (n: i32) {
      context = runtime.default_context()
      fmt.println("got", n)
  }
  ```

## Now break it
1. Drop the `---` from a prototype. The error names the parsing
   ambiguity directly.
2. Pass an `int` to `puts`. The compiler refuses — `cstring` and
   `int` aren't convertible. Try `(cstring)("hi")` to force it.
3. Call `puts(strings.clone("not nul terminated"))`. The compiler
   refuses to convert a `string` to `cstring` (no implicit NUL). The
   compile error shows you exactly the rule you're violating.
4. Forget the `when ODIN_OS` block — pick `"system:c"` only. On
   Windows, the link fails: there's no `c.lib`.

## Find more like this
    just substrate-search --bm25 "foreign import" --top 5
    just substrate-search --bm25 "binding to c" --top 5
    just substrate-search --bm25 "cstring" --top 5

## Next: `content/domains/odin/vault/lessons/16-when-and-build-flags/`
