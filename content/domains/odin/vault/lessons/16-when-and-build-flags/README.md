# Lesson 16 - when and build flags

## Concept

`when` is `if` evaluated at compile time. You write `when COND { A }
else { B }` and the compiler picks one branch based on `COND`, which
must be a constant expression. The branch that loses doesn't get
compiled, doesn't get type-checked, doesn't get linked, doesn't end
up in the binary. It is not "dead code"; it is *no code*. The symbols
it references don't have to exist on this build target.

That single property is why `when` is the right tool for
platform-specific implementations (a Windows code path that calls
`GetLastError`, a Linux path that calls `errno`), debug-only
instrumentation (asserts, validators, telemetry that you want to pay
zero for in release), and feature flags toggled from the build
command. The runtime `if` cannot do these things because both arms
have to compile, which means both arms have to refer to symbols that
exist.

`when` plus the built-in `ODIN_*` constants plus `#config(NAME,
default)` is the whole conditional-compilation system. There is no
preprocessor, no separate macro language, no header tricks. It is
the same Odin you write everywhere else, just gated by a constant.

---

## Leveling with you (if you come from OOP)

In C# you reach for `#if DEBUG ... #endif` preprocessor directives,
or the `[Conditional("DEBUG")]` attribute on methods that should
silently vanish in release. Both work, but they live in a parallel
universe from your normal code: the preprocessor runs before the
compiler sees anything, it operates on text not on types, and the
condition vocabulary is its own small language (`#if`, `#elif`,
`#else`, `#endif`, `#define`, `#undef`).

Odin folds all of that into `when`. There is no preprocessor; `when`
is part of the language proper. The condition is a normal Odin
constant expression: you can compare enums, call `len` on a type,
test `ODIN_DEBUG`, AND/OR/NOT them together. The branches contain
normal Odin statements. It reads like an `if` because it *is* an
`if`, just one the compiler resolves before code generation instead
of at runtime.

The practical upshot: the same mental model covers what C# splits
across `#if DEBUG` (file-level toggles), `[Conditional]` (method
elision), and partial classes / target-framework `#if NET8_0`
(platform forks). One construct, used at file scope or inside a
proc, that always means the same thing: "the compiler picks one
arm, the others don't exist".

---

### Compared to C

C uses the preprocessor: `#ifdef _WIN32 ... #else ... #endif`. The
preprocessor is a separate, weaker language: it sees text, not
types. It cannot ask "is this enum value equal to that one"; it can
only ask "is this identifier `#define`d". You can `#define WINDOWS
1` in one header and `#define WINDOWS "hello"` in another and the
preprocessor will not complain - the type system isn't running yet.
Macros also pollute the global namespace, which is why every serious
C codebase wraps its macros in project-specific prefixes.

Odin's `when` runs after parsing, with the full type system on. The
condition is type-checked the same way an `if` would be. There is no
separate macro namespace because there are no macros - `ODIN_OS` is
just a constant, `#config(NAME, default)` is just a directive that
returns a constant.

### Compared to C#

C# splits the job: `#if DEBUG / #endif` blocks chunks of source,
`[Conditional("DEBUG")]` elides whole method calls at the call site,
and the build system sets the symbols (`DEBUG`, `TRACE`, target
framework monikers) up front. Odin's `when` covers all three uses.
For "elide a whole proc on this platform", you wrap the `proc`
declaration in `when` at file scope. For "skip this block of code in
release", you wrap the block in `when ODIN_DEBUG`. For "toggle this
from the build command", you read `#config(NAME, default)`.

### Compared with Rust

Rust has `#[cfg(target_os = "windows")]` attributes and the `cfg!`
macro. The mechanism is similar - it's a real part of the language,
type-checked, not a preprocessor - but it reads as attributes on
items rather than as conditional statements. Odin's `when` reads
more like normal control flow, which is the deliberate stylistic
choice: it should look like an `if`, because it behaves like an
`if`, just earlier in the pipeline.

---

## Reference: the syntax you'll need

The statement form, with chaining:

    when ODIN_OS == .Windows {
        // windows-only code
    } else when ODIN_OS == .Linux {
        // linux-only code
    } else {
        // everything else
    }

Built-in constants you'll actually use:

    ODIN_OS                  // enum: .Windows .Linux .Darwin .FreeBSD ...
    ODIN_ARCH                // enum: .amd64 .arm64 .i386 .wasm32 ...
    ODIN_DEBUG               // bool: true when built with -debug
    ODIN_OPTIMIZATION_MODE   // enum: .None .Minimal .Size .Speed .Aggressive

Custom build flags, defined inline with a default and overridden on
the command line:

    MY_FEATURE :: #config(MY_FEATURE, false)
    GREETING   :: #config(GREETING, "hello")

Override at build time:

    odin run main.odin -file -define:MY_FEATURE=true -define:GREETING="hi"

The default value's type fixes the constant's type. A `bool` default
means `-define:MY_FEATURE=hello` is a compile error. A `string`
default takes a bare token or a quoted string. An `int` default
takes bare digits.

`when` at file scope, gating an entire proc:

    when ODIN_OS == .Windows {
        platform_name :: proc() -> string { return "Windows" }
    } else {
        platform_name :: proc() -> string { return "other" }
    }

`when` inside a proc, gating a few statements:

    main :: proc() {
        when ODIN_DEBUG {
            fmt.println("debug instrumentation")
        }
    }

---

## The mental model: compile-time if

The non-taken branch never reaches code generation. It is not
compiled to instructions that get skipped at runtime; it is removed
from the program before the binary is laid out. That has two
consequences worth internalizing.

First, **zero runtime cost**. There is no branch instruction, no
prediction miss, no extra bytes in `.text`. A `when ODIN_DEBUG`
block in a release build is the same as if you had never written it.
This is what makes `when` the right home for asserts, validators,
and heavy-duty logging - you do not have to apologize for them in
release because they aren't there.

Second, **the dead branch's symbols don't have to exist**. You can
write `windows.GetLastError()` inside `when ODIN_OS == .Windows`
without that import existing on Linux. The Linux build never sees
the call, so the linker never asks for the symbol. This is the
practical workhorse use: shipping one source tree that compiles on
every target by stubbing out the parts that don't apply.

The runtime `if` cannot do either of these. Both arms compile, both
arms get type-checked, both arms reference real symbols. That is the
right shape for runtime decisions and the wrong shape for "this
platform doesn't have that function".

---

## Tasks

Open `main.odin`. The procedure-level comments walk you through five
exercises:

1. **Print the host OS** using `when ODIN_OS == .Windows / .Linux /
   .Darwin / else`.
2. **Report the architecture and debug status** with `ODIN_ARCH` and
   `ODIN_DEBUG`.
3. **Define a custom feature flag** with `#config` and gate a print
   on it.
4. **Define a custom string flag** with `#config` and use it in a
   greeting.
5. **Top-level `when`** that includes or excludes an entire proc.

Run with:

    odin run main.odin -file

Compare your output to `expected-output.txt`. Then re-run with the
overrides described in the next section.

---

## Now break it on purpose

After the file works, try each of these in turn. The point is to
feel where the compile-time wall is.

1. **Reference a symbol that doesn't exist on your platform without
   a `when` guard.** Add `import "core:sys/windows"` and call
   `windows.GetLastError()` at the top of `main`, outside any
   `when`. On Windows it compiles. Build for Linux with
   `odin build main.odin -file -target:linux_amd64` and the linker
   refuses. Now wrap the call in `when ODIN_OS == .Windows { ... }`
   and try the cross-compile again - it builds, because the Linux
   target never sees the windows-only branch.
2. **Put a runtime value in a `when` condition.** Try
   `when some_local_bool { ... }` inside `main`. The compiler
   rejects it: `when` conditions must be constant expressions known
   at compile time. Replace with `if` and it works (but compiles
   both arms).
3. **Misspell a `#config` key on the command line.** Run with
   `-define:MY_FEATUR=true`. The compiler does *not* warn. `#config`
   is a key/value lookup; an unknown key just falls through to the
   default. This is the main footgun of `-define`: typos are silent.
4. **Override a bool flag with the wrong type.** Run with
   `-define:MY_FEATURE=hello`. Now the compiler does complain - the
   default fixes the type, and `"hello"` is not a `bool`.
5. **Swap a `when` for an `if`.** Change one of your `when
   ODIN_DEBUG` blocks to `if ODIN_DEBUG`. In a debug build it still
   prints. Build with `-o:speed` and the dead arm is *also* in the
   binary, just unreachable. With `when`, it would have been
   stripped entirely.

Revert your changes after each step so the file still matches
`expected-output.txt`.

---

## Low-level notes

- `when` produces **no instructions** in the output binary. There is
  no branch, no jump, no flag check. The losing arm is removed
  before code generation, so the cost is literally zero. This is the
  feature, not a side effect.
- `#config(NAME, default)` is resolved at compile time. The result
  is a normal Odin constant - you can use it anywhere a constant of
  that type would be legal (array sizes, enum values, other `when`
  conditions, default arguments).
- `-define:NAME=VALUE` takes effect for one compile only. There is
  no persistent state; rebuild without the flag and the default
  kicks in again. For values you want pinned, set them in your
  project's build script or a wrapper.
- `ODIN_DEBUG` is `true` when you pass `-debug` and `false`
  otherwise. `odin run` defaults to debug; `odin build` defaults to
  release.
- `ODIN_OPTIMIZATION_MODE` is an enum with values `.None .Minimal
  .Size .Speed .Aggressive`. You rarely need to switch on it
  directly; usually `ODIN_DEBUG` is the axis you care about.
- Symbols inside a non-taken `when` branch are not type-checked.
  This is intentional and how cross-platform code stays clean, but
  it means a typo in your dead arm won't show up until somebody
  builds for that target. CI on every supported platform is the
  remedy.

---

## Next: `17-testing-with-core-testing/`

Now that you can gate code by platform and by flag, you'll want a
way to assert that the code does what you think on every supported
build. Lesson 17 walks through `core:testing`, Odin's built-in test
runner.
