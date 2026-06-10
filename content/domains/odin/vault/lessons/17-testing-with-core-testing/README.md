# Lesson 17 - testing with core:testing

## Concept

Odin ships with a built-in test runner. You don't pick a framework, you
don't add a dev-dependency, you don't configure a runner: you write a
procedure, annotate it `@(test)`, give it the signature `proc(t:
^testing.T)`, and run `odin test .` from the directory the package
lives in. The compiler links your code against `core:testing`,
discovers every `@(test)` proc in the package, spawns a thread per
test, and reports pass/fail with file:line.

That's the whole model. There is no test class, no `BeforeEach`, no
fixture system, no test discovery DSL, no `[TestCategory]` filtering
attribute. The test runner is small on purpose; the assertions are a
handful of procs (`testing.expect`, `testing.expect_value`,
`testing.expectf`, `testing.fail_now`); and the things it *does* give
you for free are the ones that actually matter at runtime: per-test
threading, per-test memory leak tracking, and a deterministic random
seed printed at the top of every run so a flaky test can be reproduced.

---

## Leveling with you (if you come from OOP)

You already know this shape — it's xUnit / NUnit / MSTest with the
ceremony stripped off. In C# you write:

    public class MathTests
    {
        [Fact]
        public void Add_IsCommutative()
        {
            Assert.Equal(7, Calculator.Add(3, 4));
            Assert.Equal(7, Calculator.Add(4, 3));
        }
    }

In Odin you write:

    @(test)
    add_is_commutative :: proc(t: ^testing.T) {
        testing.expect_value(t, calculator.add(3, 4), 7)
        testing.expect_value(t, calculator.add(4, 3), 7)
    }

Same pattern. The `[Fact]` attribute becomes `@(test)`. The
`Assert.Equal(expected, actual)` call becomes `testing.expect_value
(t, value, expected)`. The `MathTests` class becomes... nothing. There
is no test class because there is no class. A test is a free procedure
that the runner happens to invoke; it doesn't belong to anything.

The other difference is that the `t` parameter is explicit. xUnit
hides the test-context object behind static `Assert.X` calls; Odin
passes it as the first argument because that's how Odin passes
context anywhere — through arguments, not through ambient global
state. `t` is the handle the runner uses to record which expectations
failed and where, and you thread it through to every assertion.

You will not miss the class. The first time you want to share setup
between two tests you'll write a helper proc and call it from both,
which is what `[TestInitialize]` was a poor substitute for anyway.

---

### Compared to C

C has no built-in test framework. The standard library gives you
`assert()` from `<assert.h>` and nothing else. If you want anything
resembling a test runner you bolt on a third-party library: **Check**
(autotools-based, fork-per-test for crash isolation), **CMocka**
(supports mocking), **Unity** (single-header, embedded-friendly,
fashionable for firmware), or **Greatest** (also single-header). Or
you roll your own: a `main()` in `tests.c` that calls each
`test_foo()` function in turn, prints `OK`/`FAIL`, and tracks a
counter.

None of those are *bad*, but the absence of a default means every C
project picks differently, the conventions don't compose, and there's
no shared muscle memory across codebases. Odin picking a default and
shipping it as `core:testing` collapses that decision tree to zero.

### Compared to C#

Direct parallel:

| C# (xUnit)                              | Odin                                       |
|-----------------------------------------|--------------------------------------------|
| `using Xunit;`                          | `import "core:testing"`                    |
| `[Fact]`                                | `@(test)`                                  |
| `public void MyTest()`                  | `my_test :: proc(t: ^testing.T)`           |
| `Assert.Equal(want, got)`               | `testing.expect_value(t, got, want)`       |
| `Assert.True(cond, "msg")`              | `testing.expect(t, cond, "msg")`           |
| `Assert.Fail("reason")`                 | `testing.fail_now(t, "reason")`            |
| `[Theory]` + `[InlineData(...)]`        | a `[?]struct{...}` table + `for` loop      |
| `dotnet test`                           | `odin test .`                              |
| `--filter "FullyQualifiedName=..."`     | `-define:ODIN_TEST_NAMES=pkg.test_name`    |

Note one ordering trap: `testing.expect_value(t, got, want)` puts
**actual first, expected second**. xUnit puts expected first
(`Assert.Equal(want, got)`). This trips people up exactly once when
they're reading a failure message and the labels look swapped. The
Odin signature is `(t, value, expected)` — it reads as "I expect this
value to equal this expected value."

### Compared with Rust

Rust is the closest neighbour. The pattern is the same:

    #[test]
    fn add_is_commutative() {
        assert_eq!(add(3, 4), 7);
        assert_eq!(add(4, 3), 7);
    }

`#[test]` becomes `@(test)`. `assert_eq!` becomes
`testing.expect_value`. Rust passes the test handle implicitly through
a panic-on-failure mechanism (the test framework catches the panic and
marks the test failed); Odin passes the test handle explicitly as
`t: ^testing.T` and you call methods on it. Rust's `cargo test` is
Odin's `odin test .`.

Functionally identical, slightly different style. Rust's macros do
fancier printing of failed `assert_eq!` (pretty-prints both sides
with diff highlighting in nightly); Odin's `testing.expect_value`
prints "expected X, got Y" plainly. Either way you read the
file:line and fix the bug.

---

## Reference: the syntax you'll need

### Imports and basic shape

    import "core:testing"

    @(test)
    my_test :: proc(t: ^testing.T) {
        testing.expect_value(t, my_proc(), 42)
    }

The attribute is `@(test)` — parentheses are required, the bare form
`@test` does NOT work. The proc must take exactly one argument of
type `^testing.T` and return nothing.

### The assertion procs you'll actually use

    testing.expect(t, condition, "optional message")
    testing.expect_value(t, value, expected)
    testing.expectf(t, condition, "format %d %s", arg1, arg2)
    testing.fail_now(t, "bail out immediately")
    testing.fail(t)        // mark failed but keep running

`expect` is the boolean form ("is this condition true?"). Use it when
the assertion is naturally a single bool — `is_sorted(xs)`, `len(s) >
0`, `err == nil`.

`expect_value` is the typed-equality form. Prefer it whenever you're
comparing two values, because the failure message names both sides
for you. `testing.expect_value(t, got, want)` on failure prints
something like `expected 7, got -7`.

`expectf` is the printf form. Use it inside a loop over test cases so
the failure message can identify *which row* failed: `"row %d:
clamp(%d, %d, %d) = %d, want %d"`.

`fail_now` aborts the current test immediately (`-> !` — it returns
the never-type, like `panic`). `fail` flags failure but lets the rest
of the test keep running, so you can collect multiple errors per
test.

### Running tests

    odin test .                                            # run every @(test) in this package
    odin test . -define:ODIN_TEST_NAMES=pkg.specific_test  # run one
    odin test . -define:ODIN_TEST_THREADS=1                # serialize (helpful for debugging)
    odin test . -define:ODIN_TEST_FANCY=false              # plain output, no progress bars

The package name in `ODIN_TEST_NAMES` is the `package` declaration at
the top of the source file, not the directory name.

---

## The mental model: tests are just procs the test runner calls

There is no magic here, and that's the entire point.

When you run `odin build .`, the compiler emits a normal binary whose
entry point is your `main`. When you run `odin test .`, the compiler
emits a *different* binary whose entry point is the test runner from
`core:testing`. The runner walks the symbol table for procs flagged
`@(test)`, spawns a thread per proc, calls each one with a freshly
allocated `^testing.T`, and tallies what comes back.

That's it. No reflection, no decorator hook, no test-discovery
service running in the background. The `@(test)` attribute is just a
marker the compiler stamps into the binary so the runner can find the
proc later. Your test proc is the same kind of proc as any other; it
gets compiled into the binary only when test mode is active because
the compiler skips test-flagged procs in regular `odin build` to
avoid bloating the production binary.

The corollary: a test proc can do anything a normal proc can do. It
can call package-private helpers (it's in the same package). It can
allocate. It can spawn threads. It can read files. The runner doesn't
sandbox you — what it *does* give you is a per-test memory tracker
that flags leaks and a fail-fast handle (`t`) you can write to.

---

## Tasks

Two files in this lesson:

- `main.odin` — the proc under test (`clamp_to_range`) plus a trivial
  `main` so `odin run .` still works.
- `tests.odin` — four English-prose test tasks. Read the comments and
  type the bodies yourself.

The four tests build the standard happy-path / below-range /
above-range / boundary-and-degenerate-case sweep that you'd write for
any range-clamping function. Task 4 introduces the table-driven
pattern, which is what you'll reach for in real code instead of
writing one test per case.

When you finish, from this directory:

    odin test .

Compare your output to `expected-output.txt`. Only the final
`Finished N tests in <duration>. All tests were successful.` line is
stable across runs — the timestamps, random seeds, and thread counts
change every invocation.

---

## Now break it on purpose

After the four tests pass, try each of these in turn, read the
output, then revert. The failure messages teach more than the green
ones do.

1. **Forget to clamp the top.** In `clamp_to_range`, change the upper
   branch `if value > hi { return hi }` to `{ return value }`, so the
   proc stops clamping the high end. Run `odin test .`. Two tests fail:
   `clamp_above_range_returns_hi` reports `expected clamp_to_range(99,
   0, 10) to be 10, got 99`, and the boundary table fails its `(7, 3,
   3)` row (the `expectf` message prints the exact triple). Read both,
   then revert. (Tempting but *wrong*: changing `>` to `>=` here does
   nothing -- at `value == hi` both branches return `hi`, so every test
   still passes. An off-by-one only shows up when it actually changes a
   result.)

2. **Swap got and want in `expect_value`.** In task 1, change the
   assertion to `testing.expect_value(t, 5, clamp_to_range(5, 0, 10))`.
   Tests still pass — same equality — but the failure message order
   is now lying. This is why the convention is `(t, got, want)` and
   not the other way around: when it breaks, you want the message to
   match reality.

3. **Leak memory inside a test.** Add `_ = make([]int, 4)` (no
   `delete`) at the top of one test. Run again. The per-test memory
   tracker reports the leak with file:line and the test fails even
   though every `expect_value` passed. This is the feature that earns
   `core:testing` its keep — leak-detection is built in, not bolted
   on.

4. **Mark a non-test proc with `@(test)`.** Add `@(test)` above
   `clamp_to_range` in `main.odin`. Try to build. You'll get an error
   because the proc doesn't have the `proc(t: ^testing.T)` signature.
   The attribute is checked, not just recorded.

5. **Run a single test.** Use `-define:ODIN_TEST_NAMES=
   lesson_17.clamp_below_range_returns_lo`. The runner skips the
   other three. Useful when iterating on one failure in a package
   with hundreds of tests.

---

## Low-level notes

- Test procs are compiled into the binary **only** when the build is
  run via `odin test` (which sets the internal `ODIN_TEST` flag).
  Regular `odin build` strips them out, so you pay no runtime cost
  for shipping tests next to production code in the same package.

- Each `@(test)` proc gets its own thread by default. The runner
  picks the thread count from `-define:ODIN_TEST_THREADS=n` (default
  is the core count). Set it to `1` when debugging a test that
  interacts with shared state, otherwise leave it alone.

- The memory tracker the runner installs is the one from
  `core:mem` (lesson 08). Every allocation made via `context.
  allocator` during a test is recorded; anything not freed by the
  time the test returns is reported as a leak. The tracker has
  per-test scope, so a leak in test A doesn't pollute test B.

- The random seed for each run is printed at the top of the output.
  If a test flakes once in a thousand runs, copy the seed from the
  failing run and pass `-define:ODIN_TEST_RANDOM_SEED=n` to
  reproduce it deterministically. This is the kind of thing most
  test runners make you build yourself.

- Tests in `package mathx` see private members of `mathx`. If you
  want black-box tests that go through the public API only, put them
  in a sibling `package mathx_tests` in a separate directory. The
  default (same-package) is the right one for most code.

---

## Next: `18-hot-reload-tour/`

A walkthrough of the Odin + raylib game template that hot-reloads
gameplay code while the game keeps running. You'll see how the same
"split your binary into pieces and link them at runtime" mechanism
that the test runner uses is what makes hot reload work — different
goal, same machinery.
