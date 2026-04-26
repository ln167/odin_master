# Lesson 01 — hellope

## Concept
The smallest possible Odin program: a `package`, an `import`, and a `main`
procedure that prints one line.

## Setup
1. `cd lessons/01-hellope`
2. Open `main.odin` in LazyVim. It's a stub.

## Do this
Type (don't paste — typing is the rep):

```odin
package main

import "core:fmt"

main :: proc() {
    fmt.println("Hellope!")
}
```

## Now do this
1. Save (`:w`).
2. Run:

       odin run main.odin -file

3. **You should see:**

       Hellope!

## What just happened
- `package main` — every `.odin` file declares its package on line 1.
  The compiler builds one binary per `package main`.
- `import "core:fmt"` — `core:` is Odin's standard library namespace.
  `fmt` is the printing/formatting package.
- `name :: proc() { … }` — declaration syntax is `name :: value`.
  `proc()` here is the value (a procedure with no args, no return).
  It's the same `::` you'd use for a constant: `PI :: 3.14`.
- `-file` tells the compiler to treat the single file as the package
  (instead of the whole directory). Useful for one-off scripts.

## Low-level interlude
`fmt.println` does *not* allocate on the heap for short ASCII strings —
the literal `"Hellope!"` is stored in the binary's read-only data segment
and `println` just writes it to stdout via a syscall (`WriteFile` on
Windows, `write` on POSIX). The compiler doesn't insert hidden malloc.

## Now break it
1. Remove the `package main` line. Re-run. The compiler tells you
   exactly what's missing — read the message before fixing it.
2. Change `proc()` to `proc(x: int)` but leave the call empty. Re-run.
   The error names the call site and the missing argument.

## Find more like this
    odin-search "hellope" --top 5

## Next: `lessons/02-types-and-printing/`
