# Lesson 16 — `when` and build flags

## Concept
`when` is the **compile-time `if`**. Branches that don't match the
condition are *not even compiled* — references inside dead branches
don't have to exist. The classic use is per-OS code paths and debug-
only instrumentation.

`#config(NAME, default)` defines a compile-time constant whose value
can be overridden from the command line with `-define:NAME=value`.

## Setup
1. `cd content/domains/odin/vault/content/domains/odin/vault/lessons/16-when-and-build-flags`
2. Open `main.odin`.

## Do this
Type:

```odin
package main

import "core:fmt"

// Custom build-time constants. Overridable with -define:NAME=value.
VERBOSE :: #config(VERBOSE, false)
GREETING :: #config(GREETING, "hello")

main :: proc() {
    when ODIN_OS == .Windows {
        os_name :: "Windows"
    } else when ODIN_OS == .Linux {
        os_name :: "Linux"
    } else when ODIN_OS == .Darwin {
        os_name :: "macOS"
    } else {
        os_name :: "other"
    }

    fmt.printfln("%s, %s — running on %s (%v)", GREETING, "world", os_name, ODIN_ARCH)

    when ODIN_DEBUG {
        fmt.println("DEBUG build: extra checks active")
    } else {
        fmt.println("RELEASE build")
    }

    when VERBOSE {
        fmt.println("VERBOSE: this line only exists when -define:VERBOSE=true")
    }
}
```

## Now do this
Run each command and compare output.

1. Default:

       odin run main.odin -file

   **You should see** (Windows example):

       hello, world — running on Windows (amd64)
       DEBUG build: extra checks active

2. Override the greeting:

       odin run main.odin -file -define:GREETING="hellope"

   **You should see:**

       hellope, world — running on Windows (amd64)
       DEBUG build: extra checks active

3. Turn on verbose logging:

       odin run main.odin -file -define:VERBOSE=true

   **You should see** (an extra line):

       hello, world — running on Windows (amd64)
       DEBUG build: extra checks active
       VERBOSE: this line only exists when -define:VERBOSE=true

4. Release build (drops the `ODIN_DEBUG` line):

       odin run main.odin -file -o:speed -no-bounds-check

   **You should see:**

       hello, world — running on Windows (amd64)
       RELEASE build

## What just happened
- `ODIN_OS` and `ODIN_ARCH` are compile-time *enum* constants. The
  comparison `ODIN_OS == .Windows` is resolved at compile time and the
  losing branches are stripped before code generation.
- `ODIN_DEBUG` is `true` when `-debug` is on, `false` otherwise. It's
  also true by default for `odin run`.
- `#config(VERBOSE, false)` declares a compile-time bool. With nothing
  on the command line it's `false`; passing `-define:VERBOSE=true` on
  the build sets it to `true` for that compile.
- `GREETING :: #config(GREETING, "hello")` works the same for strings
  and ints — the default's type fixes the constant's type.

## Low-level interlude
`when` is **not** runtime control flow. Compare:

```odin
// Runtime branch — both arms are compiled and one is selected each call.
if some_bool { do_a() } else { do_b() }

// Compile-time branch — only one arm exists in the binary.
when ODIN_OS == .Windows { do_a() } else { do_b() }
```

The `when` form lets you reference platform-specific symbols (e.g.
`windows.GetLastError`) that don't exist on other platforms — the
non-matching branches are never type-checked or linked.

`-define:NAME=VALUE` is the project-level customization knob:
- `bool`: `true`/`false`
- `string`: bare token (`-define:NAME=foo`) or quoted (`-define:NAME="hi there"`)
- `int`: bare digits

## Now break it
1. Inside `when ODIN_OS == .Windows { … }`, write `import "core:sys/windows"`
   then call `windows.GetLastError()`. Build for Linux:
   `odin build . -target:linux_amd64`. The build still succeeds — the
   Windows branch was never compiled. That's the whole point.
2. Misspell the override: `-define:VERBOZE=true`. The compiler does
   *not* warn — `#config` keys are just key/value lookups. Read the
   default. (This is the main footgun of `-define`: typos go silent.)
3. Override with the wrong type: `-define:VERBOSE=hello` (default is
   `bool`). Now the compiler refuses with a type-mismatch.
4. Replace `when ODIN_DEBUG { … }` with `if ODIN_DEBUG { … }`. The
   release build now compiles the debug arm even though the branch is
   dead. Verify with `odin build . -o:speed -show-defineables` or by
   counting `.text` size.

## Find more like this
    just substrate-search --bm25 "when statement" --top 5
    just substrate-search --bm25 "ODIN_OS ODIN_DEBUG" --top 5
    just substrate-search --bm25 "#config define" --top 5

## Next: `content/domains/odin/vault/lessons/17-testing-with-core-testing/`
