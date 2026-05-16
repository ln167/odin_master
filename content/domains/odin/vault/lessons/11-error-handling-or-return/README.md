# Lesson 11 — `or_return` and `or_else`

## Concept
Odin has no exceptions. Procs return `(value, err)` (or `(value, ok)`).
Two operators sweeten the calling code:

- `or_return` — pop the last return; if non-`nil` (or `false`), bail out
  and bubble it up. The enclosing proc must have named, compatible
  returns.
- `or_else` — provide a default for an optional-ok or `(value, ok)` /
  `(value, err)` expression.

## Setup
1. `cd content/domains/odin/vault/lessons/11-error-handling-or-return`
2. Create a sibling file `content/domains/odin/vault/lessons/11-error-handling-or-return/numbers.txt`
   with three lines:

       1
       2
       not_a_number

3. Open `main.odin`.

## Do this
Type:

```odin
package main

import "core:fmt"
import "core:os"
import "core:strconv"
import "core:strings"

// Long form: explicit error checks.
load_long :: proc(path: string) -> ([]byte, os.Error) {
    data, err := os.read_entire_file(path, context.allocator)
    if err != nil { return nil, err }
    return data, nil
}

// Short form: or_return propagates err. Note the named returns.
load_short :: proc(path: string) -> (data: []byte, err: os.Error) {
    data = os.read_entire_file(path, context.allocator) or_return
    return
}

main :: proc() {
    data, err := load_short("numbers.txt")
    if err != nil {
        fmt.eprintln("read failed:", err)
        return
    }
    defer delete(data)

    sum := 0
    for line in strings.split_lines_iterator(&(string)(data)) {
        // or_else: parse_int returns (int, ok). Default to 0 on failure.
        n := strconv.parse_int(line) or_else 0
        sum += n
    }
    fmt.println("sum:", sum)
}
```

## Now do this
1. `:w`
2. `odin run main.odin -file`

3. **You should see:**

       sum: 3

(Lines `1` and `2` parse; `not_a_number` falls through to the `0` default
via `or_else`.)

## What just happened
- `or_return` requires named returns (`-> (data: []byte, err: os.Error)`)
  so the operator knows which slot to assign the popped error into.
- The bare `return` at the end of `load_short` returns the named values
  as they currently stand — `data` was set by the successful call,
  `err` is `nil`.
- `parse_int` returns `(int, bool)`. `or_else` strips the bool tail; if
  `ok == false` it evaluates to the right-hand expression (`0`).
- `strings.split_lines_iterator` treats the byte slice as a string and
  yields one line per call. No allocation.

## Low-level interlude
`or_return` is **just an early return**. There's no exception table, no
unwinder, no thrown object — the compiler expands `expr or_return` into
roughly:

```odin
{
    tmp_value, tmp_err := expr
    if tmp_err != nil { err = tmp_err; return }
    tmp_value
}
```

That's it. Cost: one branch. The same as a hand-written check, just less
typing. `or_else` is the dual — pick the default when the trailing
boolean/error says "no". Both are *expressions*, so they nest:

```odin
n := strconv.parse_int(s) or_else fallback() or_else 0
```

## Now break it
1. Drop the named returns on `load_short` (use `-> ([]byte, os.Error)`
   instead of `-> (data: …, err: …)`). The compiler refuses `or_return`
   and tells you why.
2. Misspell the filename so the read errors. Verify the error reaches
   `main` and prints its enum value (`.Not_Exist` on Windows, `.ENOENT`
   on POSIX-flavored builds).
3. Replace `or_else 0` with a hard `strconv.parse_int(line)` (drop the
   `, ok`). The compiler refuses to silently discard the `ok` —
   matching what you saw in lesson 03.

## Find more like this
    just substrate-search --bm25 "or_return" --top 5
    just substrate-search --bm25 "or_else" --top 5
    just substrate-search --bm25 "named returns" --top 5

## Next: `content/domains/odin/vault/lessons/12-structs-and-soa/`
