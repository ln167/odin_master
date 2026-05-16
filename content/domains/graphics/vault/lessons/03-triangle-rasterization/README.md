# Lesson graphics/03 - triangle rasterization

## Tasks

- [ ] TODO 1: implement `edge_func(a, b, p)` (signed parallelogram area, 2D cross).
- [ ] TODO 2: implement `triangle_aabb` (inclusive bounding box of 3 verts).
- [ ] TODO 3: implement `draw_triangle` (AABB, clamp, three half-plane tests).
- [ ] Run; verify CCW triangles render, CW renders nothing, sliver and off-screen cases behave.
- [ ] Now break it: flip a winding (decide convention).
- [ ] Now break it: degenerate triangle (collinear); add area-zero guard.
- [ ] Now break it: AABB off-screen; verify clamp is correct.
- [ ] Read about top-left rule; understand why it exists (don't need to implement).

## Tools to use here

- `<leader>or` — run
- `<leader>oq "edge function barycentric pineda"` — algorithm derivation
- `just verify lesson-03-triangle-rasterization` — confirm
- `<leader>op` — scratch a scanline rasterizer for comparison

## Concept

Triangles are the building block of nearly every renderer ever. This
lesson asks you to fill a 2D triangle on the framebuffer using **edge
functions** (Pineda 1988), the algorithm every modern GPU rasterizer
uses internally. Cleaner than scan-line, parallelizes trivially, and
gives you barycentric coordinates "for free" as a side effect.

The core idea in one sentence: a 2D triangle's interior is the
intersection of three half-planes; each half-plane is "the side of edge
AB on which point C lies."

The edge function is the 2D cross product:

    edge(a, b, p) = (b.x - a.x) * (p.y - a.y) - (b.y - a.y) * (p.x - a.x)

It returns:
- positive if p is on the "left" of the directed edge a -> b
- negative if p is on the "right"
- zero if p is exactly on the line through a and b

For a counterclockwise (CCW) triangle (p0, p1, p2), point p is inside
**iff** all three of `edge(p0, p1, p)`, `edge(p1, p2, p)`, `edge(p2, p0, p)`
are positive (or all negative for a CW winding).

The reps you are after:

1. **Bounding box.** Don't test every pixel on the screen. Compute the
   triangle's AABB, clamp it to the framebuffer, test only those pixels.
   For a 50x50 triangle on an 800x600 framebuffer that is 2500 tests
   instead of 480000.
2. **Three half-plane tests, AND.** The inside-test is just three
   `edge() >= 0` checks combined with logical AND. Three multiplies and
   three subtracts per pixel. SIMD-friendly.
3. **Barycentric coordinates as a byproduct.** The three edge function
   values, divided by the total triangle area (= `edge(p0, p1, p2)`),
   are the barycentric weights. Use them next lesson for z-interpolation,
   color interpolation, and texture lookup.
4. **Winding order matters.** A CCW triangle and a CW triangle produce
   the same pixels (they cover the same region) but opposite signs.
   Decide your convention; backface culling later (lesson 06) depends
   on it.

Sources: Pineda 1988 paper "A Parallel Algorithm for Polygon
Rasterization" (the original), tinyrenderer Lesson 2 walks the same
algorithm with diagrams. RTR4 ch 23.1 has the modern rasterizer view.

## Setup

1. `cd content/domains/graphics/vault/lessons/03-triangle-rasterization`
2. Open `main.odin`. Skeletons for `edge_func`, `triangle_aabb`, and
   `draw_triangle` are stubbed.

## Do this

You will fill in:

- `edge_func(a, b, p: [2]int) -> int` returning the signed
  parallelogram area as defined above.
- `triangle_aabb(p0, p1, p2: [2]int) -> (xmin, ymin, xmax, ymax: int)`
  returning the inclusive bounding box of the three vertices.
- `draw_triangle(pixels, w, h, p0, p1, p2: [2]int, color: u32)` doing:
  1. compute AABB; clamp to framebuffer.
  2. for each pixel `p` in the AABB, compute the three edge functions.
  3. if all three are `>= 0` (CCW), set the pixel.

The `main` proc draws several triangles of varying shape (axis-aligned,
thin sliver, near-degenerate, both windings).

## Run

    odin run main.odin -file

Open `out.ppm`. You should see the CCW triangles filled, the CW ones
unfilled (or vice versa, depending on your sign convention). Pick a
convention and document it in your code.

## What just happened

Edge functions are the 2D analog of the half-space tests you'd use to
clip a 3D point against a plane. The same math underlies:
- Frustum culling (lesson 05): point-vs-plane.
- Back-face culling (lesson 06): triangle's signed area determines
  facing.
- Barycentric interpolation (lesson 07): the three edge values divided
  by the total area.

Pineda's 1988 contribution wasn't the math (which goes back to
projective geometry) but the observation that this formulation is
embarrassingly parallel: every pixel can be tested independently.
That's why every GPU rasterizer uses it.

## Now break it

1. **Flip a winding.** Swap p1 and p2 in one triangle. The three edge
   functions all flip sign. With the `>= 0` test, the triangle disappears.
   Add a sign-agnostic test (`(e0 >= 0 && e1 >= 0 && e2 >= 0) || (e0 <= 0 && e1 <= 0 && e2 <= 0)`)
   and confirm both windings render. Decide whether you want this or
   prefer the discipline of one canonical winding.

2. **Degenerate triangle.** Set p0, p1, p2 collinear. The total area is
   zero, the AABB has nonzero size, and every pixel test returns zero
   (which `>= 0` accepts). The whole AABB fills with the triangle color.
   Add a `total_area == 0 -> early-return` guard.

3. **AABB outside the framebuffer.** Translate a triangle off-screen.
   Without clamping, `triangle_aabb` returns negative or out-of-bounds
   coordinates and you read/write outside `pixels`. Clamp `xmin >= 0`,
   `ymin >= 0`, `xmax < w`, `ymax < h` before iterating.

4. **Edge ties.** Two adjacent triangles sharing an edge: which one
   owns the pixels exactly on the edge? With `>= 0` for both, both fill
   them, you get correct coverage. With `> 0` for both, neither fills
   them, you get cracks. Modern GPUs use the **top-left rule**: a pixel
   on a "top" or "left" edge belongs to the triangle on its right or
   below. Implementing the top-left rule is a "now break it" exercise
   you do not need to ship, but you should understand why it exists.

## Find more like this

    just substrate-search --bm25 "edge function pineda triangle rasterization barycentric" --top 5

## Next: `04-z-buffer/`
