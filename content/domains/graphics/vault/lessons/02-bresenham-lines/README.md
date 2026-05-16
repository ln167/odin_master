# Lesson graphics/02 - Bresenham line rasterization

## Tasks

- [ ] Derive Bresenham for the first octant on paper.
- [ ] TODO: implement `draw_line` for the first octant only.
- [ ] Run; verify first three test lines render solid.
- [ ] Now break it: handle `x0 > x1` (swap endpoints).
- [ ] Now break it: handle steep slopes (`|dy| > |dx|`, swap x/y roles).
- [ ] Now break it: handle negative slopes (`dy < 0`, sy = -1).
- [ ] Re-run; verify all 5 test lines render correctly.

## Tools to use here

- `<leader>or` — run
- `<leader>oq "bresenham line algorithm"` — derivation lookup
- `just verify lesson-02-bresenham-lines` — confirm
- `<leader>op` — scratch a DDA variant alongside for comparison

## Concept

Drawing a line on an integer pixel grid sounds easy until you try it.
The naive approach (`pixels[y_float_truncated] = color` along a parametric
line) does floating-point math per pixel and produces visible gaps for
shallow slopes. Bresenham's 1965 algorithm does the same thing in
integer-only arithmetic with no gaps. It's the canonical example of
"think before you compute."

This lesson asks you to derive and type Bresenham for the **first octant**:
`x0 < x1` and `0 <= slope <= 1`. You will see it work for some test lines
and fail for others. The "Now break it" section is where you generalize
to all 8 octants (a transformation, not a re-derivation).

The reps you are after:

1. **Error accumulator.** The trick is keeping a running integer error
   that says "how close am I to crossing into the next pixel row?"
   When the error exceeds half a pixel, step y. Reset the error.
   Two adds and a compare per pixel. No multiplies, no floats.
2. **Octant symmetry.** The first octant covers ~12.5% of all line
   directions. The other 87.5% are just coordinate swaps and sign flips
   of the first-octant case. Don't write 8 algorithms; write one and
   transform inputs.
3. **Frame buffer recall.** You are still writing into a `[]u32` and
   dumping PPM. Lesson 00's pattern stays. The novelty is *what* you
   write, not *how* you present it.

Sources: tinyrenderer wiki "Lesson 1: Bresenham's Line Drawing Algorithm"
(canonical), Bresenham's original 1965 IBM Systems Journal paper for the
historical derivation.

## Setup

1. `cd content/domains/graphics/vault/lessons/02-bresenham-lines`
2. Open `main.odin`. It carries the framebuffer plumbing from lesson 00
   plus an empty `draw_line` skeleton.

## Do this

You will fill in `draw_line` for the first-octant case only. The
skeleton's `main` already calls it with several test lines. After you
implement it:

1. The 30-degree line `(50, 50) -> (750, 450)` should render solid.
2. The shallow `(100, 300) -> (700, 320)` line should render solid.
3. The 45-degree line `(100, 100) -> (300, 300)` should render solid.
4. The vertical line `(400, 100) -> (400, 500)` will likely be wrong
   (it is in the second octant).
5. The right-to-left line `(700, 100) -> (100, 100)` will be wrong
   (x0 > x1).

You are expected to ship items 1-3 working, and items 4-5 broken. The
broken cases are the doorway into octant generalization in "Now break
it" below.

Derive the algorithm on paper before typing. Bresenham's 1965 derivation
in pseudo-code:

    dx = x1 - x0
    dy = y1 - y0
    err = 2*dy - dx       # initial error, scaled to avoid divisions
    y   = y0
    for x in x0 ..= x1:
        plot(x, y)
        if err > 0:
            y   += 1
            err -= 2*dx
        err += 2*dy

That's it. Three integers of state, two adds and a compare per pixel.

## Run

    odin run main.odin -file

Open `out.ppm` in your image viewer. You should see three solid lines and
two broken or absent ones.

## What just happened

`err` starts at `2*dy - dx` because we want to step y when the *fractional*
error crosses 0.5. Multiplying by `2*dx` keeps everything integer:
`err / (2*dx)` is the real error. The condition `err > 0` is the same as
`err / (2*dx) > 0`. The updates `err -= 2*dx` (after stepping y) and
`err += 2*dy` (every x step) are the per-step deltas of the same scaled
quantity.

Bresenham scales the error so divisions disappear and rounding ties are
deterministic. That deterministic-ness matters when two adjacent triangles
share an edge: they must both rasterize the same edge pixels or you get
cracks.

## Now break it

This is where you generalize. Pick the order that works for you:

1. **Backwards x: `x0 > x1`.** Easiest fix: at the start of `draw_line`,
   swap endpoints if `x0 > x1`. The pixel order changes (you now iterate
   right-to-left becoming left-to-right), the line is the same.

2. **Steep slope: `|dy| > |dx|`.** Bresenham's per-x step misses pixels
   when `|slope| > 1`. The fix: if `|dy| > |dx|`, swap the roles of x
   and y (iterate over y, step x by error). One extra branch at the
   start of the proc; the inner loop stays the same.

3. **Negative slope: `dy < 0`.** After the swap above, you can have
   `y1 < y0`. Use `y_step = (y0 < y1) ? +1 : -1` and decrement instead
   of increment when stepping y.

After all three, your `draw_line` handles every line direction. Re-run
and confirm cases 4 and 5 above now render correctly.

## Find more like this

    just substrate-search --bm25 "bresenham line rasterization" --top 5

Tinyrenderer Lesson 1 walks the same path with annotated diff snapshots
of each step. Mirrored at
`content/domains/graphics/source/raw/tier1-authoritative/tinyrenderer/`
once the html_mirror fetcher runs; until then,
https://github.com/ssloy/tinyrenderer/wiki/Lesson-1-Bresenham%E2%80%99s-Line-Drawing-Algorithm.

## Next: `02b-clipping/` (line and polygon clipping; Cohen-Sutherland and Sutherland-Hodgman)
