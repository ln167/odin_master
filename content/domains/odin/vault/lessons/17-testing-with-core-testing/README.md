# Lesson 17 — testing with `core:testing`

## Concept
A test in Odin is a procedure annotated `@(test)` that takes
`t: ^testing.T` and uses `testing.expect`, `testing.expect_value`, etc.
to encode expectations. `odin test <pkg>` finds them, runs them in
parallel, watches memory, and reports failures.

## Setup
1. `cd content/domains/odin/vault/content/domains/odin/vault/lessons/17-testing-with-core-testing`
2. Create `mathx.odin`:

   ```odin
   package mathx

   abs_int :: proc(x: int) -> int {
       return -x if x < 0 else x
   }

   add :: proc(a, b: int) -> int { return a + b }
   ```

3. Create `mathx_test.odin` (in the same package — same dir, same `package mathx`).

## Do this
Type `mathx_test.odin`:

```odin
package mathx

import "core:testing"

@(test)
abs_int_handles_zero :: proc(t: ^testing.T) {
    testing.expect_value(t, abs_int(0), 0)
}

@(test)
abs_int_handles_negatives :: proc(t: ^testing.T) {
    testing.expect_value(t, abs_int(-7), 7)
    testing.expect_value(t, abs_int(-1), 1)
}

@(test)
add_is_commutative :: proc(t: ^testing.T) {
    cases := [?]struct{ a, b: int }{ {1, 2}, {-3, 5}, {0, 0}, {100, -100} }
    for c in cases {
        testing.expectf(t, add(c.a, c.b) == add(c.b, c.a),
            "add not commutative for %d, %d", c.a, c.b)
    }
}
```

## Now do this
1. `:w` (both files saved).
2. From `content/domains/odin/vault/lessons/17-testing-with-core-testing`:

       odin test .

3. **You should see** something like:

       [INFO ] --- [<timestamp>] Starting test runner with N thread(s)…
       [INFO ] --- [<timestamp>] The random seed sent to every test is: …
       [INFO ] --- [<timestamp>] Memory tracking is enabled. …
       …
       Finished 3 tests in <ms> :: SUCCESS

(Format varies slightly across compiler builds; the line that matters
is the final `SUCCESS` summary.)

## What just happened
- `@(test)` marks the procedure as a test entry point. Without it,
  `odin test` ignores the proc.
- Each `@(test)` runs on its own thread by default, with its own
  `^testing.T` and its own memory tracker.
- `testing.expect_value(t, got, expected)` is the typed assertion —
  it prints both values on failure.
- `testing.expectf(t, cond, format, args...)` is the printf-style form
  for richer messages.
- "Table-driven tests" — the slice of structs in `add_is_commutative`
  — are the idiomatic way to keep many cases compact.

## Low-level interlude
The runner allocates a per-test memory tracker (lesson 08). Any leaked
or bad-freed allocation in your test code is flagged with a file:line.
That's why the framework's output starts with "Memory tracking is
enabled" — leaks fail the test even if every `expect_value` passed.

`odin test` builds the package the same way `odin build` would, then
links in the test runner. There's no magic here — your tests are real
Odin code with the same access (or lack thereof) as production code in
the same package. Tests in `package mathx` can see private members of
`mathx`; a test in a sibling `package mathx_tests` cannot.

## Now break it
1. Change `abs_int` to `return x` (drop the negate). Run `odin test .`
   again. You'll see:

       [ERROR] --- […] [mathx_test.odin:13:abs_int_handles_negatives()]
               expected 7, got -7
       Finished 3 tests in <ms> :: 1 test failed.

   Note the file:line. Restore the proc.
2. Add `_ = make([]int, 4)` (with no `delete`) inside one of the tests.
   The runner reports a `+++ leak` line and fails the test.
3. Run only one test:

       odin test . -define:ODIN_TEST_NAMES=mathx.add_is_commutative

   Useful when iterating on a single failure.

## Find more like this
    just substrate-search --bm25 "core:testing" --top 5
    just substrate-search --bm25 "@(test)" --top 5
    just substrate-search --bm25 "ODIN_TEST" --top 5

## Next: `content/domains/odin/vault/lessons/18-hot-reload-tour/`
