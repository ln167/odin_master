# Verifying every claim against a real compile

The promise these pages make — stated in the reference page's footer, "sizes &
the L4 error are real compiler output" — is the whole reason to trust them. A
number on the page with nothing behind it quietly poisons that trust. So the
discipline is: **anything the page asserts as fact comes from a real compiled
Odin program, captured by a claim under `claims/lessons/<slug>/`, before you
write the prose around it.**

The README is not a source of truth for this. It is frequently shallower than
what you'll show, sometimes inconsistent with the example you pick, and
occasionally just wrong. Measure; don't trust.

## The harness in one paragraph

A **claim** is a directory under `claims/lessons/<slug>/<name>/`. A one-line
`claim.txt` picks the assertion; supporting `.odin` files are the probe. Run one
with `just claim lessons/<slug>/<name>` (alias `just verify lessons/<slug>/<name>`)
or all with `just verify-all`. **The claim name is resolved relative to `claims/`,
so it must include the `lessons/` prefix** — `just claim lessons/06b-pointers/sizes`,
not `06b-pointers/sizes` (the bare form looks under `tests/`, doesn't find it, and
crashes). Verdicts are PASS / FAIL / INCONCLUSIVE. `doctor` couples
these to the live lesson, so they don't rot. Full design:
`docs/superpowers/specs/2026-06-07-claim-verification-harness-design.md`.

## Map each on-page fact to a claim kind

| What the page shows | Claim kind | How to encode it |
|---|---|---|
| a size / byte layout / `size_of` / `align_of` / a printed value | `output` | Probe `main.odin` prints it; `expected.txt` holds the exact stdout. (A dir with just `main.odin` + `expected.txt` and no `claim.txt` is an implicit `output` claim.) |
| a compiler **error** you display verbatim | `fails <file> "<substr>"` | Build must fail *and* `<substr>` must appear in the output. Put the **same** substring on the page. |
| a runtime **panic** / crash you mention | `panics <file> "<substr>"` | Build succeeds, run crashes nonzero, `<substr>` present. |
| "this snippet compiles / is accepted" | `compiles <file>` | Build must succeed. |
| "B is faster than A" / any perf delta | `faster [k]` | `variant.odin` with `variant_A`/`variant_B` returning a work-derived `u64`; B must be ≥ k× faster (default 1.5). |
| "A and B produce the same result" (refactor equivalence) | `equiv` | `variant.odin` with `variant_A`/`variant_B` returning equal printable values. |
| nondeterministic text in `output` (an address, a pointer value) | `output` + `<...>` | Write `addr = <addr>` in `expected.txt`; `<...>` matches any text on that line. |
| a build-flag / cross-compile outcome | add `flags.txt` | Whitespace-split tokens splice into the build (e.g. `-define:FOO=true`, `-target:linux_amd64`). |

`<file>` is one `.odin` file (built `-file`) or `.` to build the whole dir as a
package.

## Measuring memory layout (the byte strips)

The reference page's L1 shows real little-endian bytes (`0x00,0x00,0x00,0x40` =
`2.0` as `f32`). To get those for *your* example, write a probe that constructs
the value and dumps its bytes, run it, and copy the hex onto the page. Sketch:

```odin
package main
import "core:fmt"
import "core:mem"

Circle    :: struct { radius: f32 }
Rectangle :: struct { w, h: f32 }
Triangle  :: struct { a, b, c: f32 }
Shape :: union { Circle, Rectangle, Triangle }

main :: proc() {
	s: Shape = Rectangle{w = 2, h = 3}
	bytes := mem.any_to_bytes(s)          // the live slot, as []u8
	fmt.printf("size_of(Shape) = %d\n", size_of(Shape))
	for b in bytes do fmt.printf("%02x ", b)
	fmt.println()
}
```

Make it an `output` claim: capture the real stdout into `expected.txt`. Now the
page's bytes, slot size, and the strip's used/idle/tag/pad regions are all
pinned to a passing claim. (Verify the construct names against the toolchain —
`any_to_bytes` vs `ptr_to_bytes` vs `transmute` — by compiling the probe; don't
assume the API from memory.)

## The perf gate has teeth — respect INCONCLUSIVE

`faster` returns **INCONCLUSIVE** (exit 2) when the speedup is inside the box's
~15% noise band, the two timing batches disagree, or a kernel is too fast/noisy
to time. That is a *feature*: it refuses to certify sub-noise wins. If your
"X is faster than Y" claim comes back INCONCLUSIVE, the honest page does not
state a speedup — say "comparable", show the structural reason (cache locality,
one branch vs an indirect call) without a fabricated multiplier, or cut it.
Never round an INCONCLUSIVE up to a PASS in prose.

## Reuse what's already verified

Two shortcuts worth taking every time:

- The README's **"Now break it on purpose"** list is usually already encoded as
  `fails`/`panics` claims in `claims/lessons/<slug>/break-*/`. Their `claim.txt`
  substrings are *verified error strings* — lift them onto the page verbatim
  (the reference L4 shows `Unhandled switch case: …`, exactly such a string).
- The lesson's **`solution`** claim's `expected.txt` must byte-match the
  lesson's `expected-output.txt` (`doctor` enforces this). If your page shows
  the lesson program's output, pull it from there.

## Don't forget to actually run it

Writing a claim isn't verifying it. Run `just verify-all` (or the specific
claims) and read the verdicts. A claim that you *think* passes but never ran is
the same risk as an unbacked number. After authoring, do a final
`just verify-all` and confirm every on-page fact maps to a PASS — and that you
didn't leave a new probe in a FAIL/INCONCLUSIVE state.
