package lesson_17

import "core:testing"

// Convention: tests live in the SAME package as the code they test,
// inside files whose names end in `_test.odin` (or any file at all,
// honestly — the `@(test)` attribute is what flags the proc, not the
// filename). Same-package means tests can see package-private names,
// which is usually what you want.
//
// We're using `tests.odin` rather than `main_test.odin` because this
// lesson has exactly one test file and the name should reflect that.
// In a real package you would probably write `clamp_test.odin`
// alongside `clamp.odin`.

// TASK 1 — happy path.
//
// Write a test proc named `clamp_in_range_returns_value_unchanged`
// that asserts: when `value` is already between `lo` and `hi`, the
// proc returns `value` untouched. Pick any in-range case (e.g.
// value=5, lo=0, hi=10). Use `testing.expect_value(t, got, want)`
// — that's the typed assertion; on failure it prints both sides,
// so you don't have to write the message yourself.
//
// Skeleton:
//
//     @(test)
//     clamp_in_range_returns_value_unchanged :: proc(t: ^testing.T) {
//         testing.expect_value(t, clamp_to_range(5, 0, 10), 5)
//     }


// TASK 2 — below-range case.
//
// Write `clamp_below_range_returns_lo`. Pass a value that's less
// than `lo` (e.g. value=-3, lo=0, hi=10) and assert the result is
// `lo` (0). One `expect_value` call is enough; you don't need to
// test every negative number, just the rule.


// TASK 3 — above-range case.
//
// Write `clamp_above_range_returns_hi`. Pass a value greater than
// `hi` (e.g. value=99, lo=0, hi=10) and assert the result is `hi`
// (10). Symmetric with the previous test.


// TASK 4 — edge cases via a table.
//
// Write `clamp_handles_boundary_values`. This one tests both
// boundaries (value == lo, value == hi) AND a degenerate range
// (lo == hi). The idiomatic Odin pattern is a table of structs:
//
//     cases := [?]struct{ value, lo, hi, want: int }{
//         {0,  0, 10, 0 },   // value == lo
//         {10, 0, 10, 10},   // value == hi
//         {7,  7,  7, 7 },   // lo == hi, value matches
//         {7,  3,  3, 3 },   // lo == hi, value above
//     }
//     for c in cases {
//         testing.expectf(t,
//             clamp_to_range(c.value, c.lo, c.hi) == c.want,
//             "clamp_to_range(%d, %d, %d) should equal %d",
//             c.value, c.lo, c.hi, c.want)
//     }
//
// `testing.expectf` is the printf-style assertion: a bool to check
// plus a format string for the failure message. Use it instead of
// `expect_value` whenever the failure needs to identify *which row*
// of the table failed.

// Run with:
//     odin test .
// Compare to expected-output.txt (only the SUCCESS summary line is
// stable across runs; timestamps, thread counts, and timings vary).
