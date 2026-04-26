# Lesson 04 — strings and runes

## Concept
`string` in Odin is `(ptr: ^u8, len: int)` of UTF-8 bytes. A `rune` is one
Unicode codepoint (`i32`). Slicing a string slices *bytes*, not codepoints,
which matters the moment you touch non-ASCII text.

## Setup
1. `cd lessons/04-strings-and-runes`
2. Open `main.odin`.

## Do this
Type:

```odin
package main

import "core:fmt"
import "core:strings"
import "core:unicode/utf8"

main :: proc() {
    s := "héllo"

    fmt.println("byte len:", len(s))                  // bytes, not runes
    fmt.println("rune count:", utf8.rune_count(s))    // actual codepoints

    // Iterate codepoints with `for r in s` — `for r, i in s` gives byte index.
    for r, i in s {
        fmt.printf("  byte %d -> rune %r (U+%04X)\n", i, r, r)
    }

    // Build a new string. strings.concatenate allocates via context.allocator.
    greeting := strings.concatenate({"hi, ", s, "!"})
    defer delete(greeting)   // free what we allocated
    fmt.println(greeting)
}
```

## Now do this
1. `:w`
2. `odin run main.odin -file`

3. **You should see:**

       byte len: 6
       rune count: 5
         byte 0 -> rune h (U+0068)
         byte 1 -> rune é (U+00E9)
         byte 3 -> rune l (U+006C)
         byte 4 -> rune l (U+006C)
         byte 5 -> rune o (U+006F)
       hi, héllo!

## What just happened
- `len(s)` is the byte length. `é` is two bytes in UTF-8 — that's why
  `len("héllo")` is 6 but the rune count is 5.
- `for r, i in s` decodes one rune per iteration; `i` is the byte offset,
  not a 0..N counter.
- `strings.concatenate` allocates with the current `context.allocator`.
  We `defer delete(greeting)` to free it on scope exit.

## Low-level interlude
Strings are immutable views, but they *do* point at memory that's owned
by someone — a literal (binary), an allocator, or another buffer. If you
hand a string to code that outlives the buffer, you've got a dangling
pointer. The fix is usually to allocate a copy (`strings.clone`) and
defer-free it.

## Now break it
1. Replace `for r, i in s` with `for i in 0..<len(s) { fmt.println(s[i]) }`.
   You'll print individual *bytes*. Notice how the multi-byte `é` shows up
   as two values that are not by themselves valid runes.
2. Drop `defer delete(greeting)` — the program still prints fine but now
   leaks. We'll see how to *catch* leaks in lesson 08 (allocators).

## Find more like this
    odin-search "string vs cstring" --top 5
    odin-search "strings.concatenate" --top 5
    odin-search "rune utf8" --top 5

## Next: `lessons/05-arrays-fixed/`
