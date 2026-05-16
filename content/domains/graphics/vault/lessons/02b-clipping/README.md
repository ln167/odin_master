# Lesson graphics/02b - clipping

## Tasks

- [ ] TODO 1: implement `compute_outcode` returning the 4-bit code.
- [ ] TODO 2: implement `clip_line` (Cohen-Sutherland algorithm).
- [ ] Run; verify lines clip to the inner rectangle, fully-outside lines render nothing, fully-inside lines render fully.
- [ ] Now break it: swap LEFT/RIGHT bits (silent visual bug).
- [ ] Now break it: skip the trivial reject (perf only).
- [ ] Now break it: degenerate clip rect (xmin > xmax); add sanity guard.

## Tools to use here

- `<leader>or` — run
- `<leader>oq "cohen sutherland outcode clipping"` — algorithm refresher
- `just verify lesson-02b-clipping` — confirm
- `<leader>op` — scratch a Liang-Barsky variant for contrast

## Concept

The framebuffer is finite. Lines and polygons can extend past it.
"Clipping" is computing the intersection of a primitive with a rectangle
(2D screen) or a frustum (3D camera volume) so you only rasterize the
visible part.

`set_pixel` already handles clipping at the per-pixel level (its bounds
check skips out-of-range pixels). That works but is wasteful: a 10000-pixel
line that is mostly off-screen still iterates 10000 times. Real clipping
trims the line *parametrically* before rasterization so you only iterate
over the visible segment.

This lesson covers two algorithms:

1. **Cohen-Sutherland (1967) for line clipping.** Assigns a 4-bit outcode
   to each endpoint encoding which sides of the rectangle it is outside
   (bit 0: left, 1: right, 2: bottom, 3: top). If both outcodes are zero,
   the line is fully inside. If their AND is nonzero, the line is fully
   outside. Otherwise, find the side both endpoints disagree on, intersect
   with that side, replace the outside endpoint, and recurse.

2. **Sutherland-Hodgman (1974) for polygon clipping.** Takes a polygon
   and a single clip plane (or screen edge) and produces a new polygon
   with the outside-of-plane vertices removed and intersection vertices
   inserted. Apply once per clip plane (4 for screen rect, 6 for view
   frustum) to fully clip.

The reps you are after:

1. **Outcodes.** Bitwise classification of 2D regions is the same trick
   used in tile-based rasterization, BVH traversal, and SIMD culling.
   Get the bit layout right once.
2. **Parametric intersection.** Given a line `P0 + t * (P1 - P0)`, finding
   `t` at the moment `x = clip_edge` is a one-line linear interp. This
   recurs everywhere: ray-AABB intersection, frustum-vs-bounding-box,
   per-pixel attribute interpolation in the triangle rasterizer.
3. **Why we don't just per-pixel-clip.** Bandwidth. A line clipped to its
   visible segment first costs O(visible_pixels). Clipped per-pixel only,
   it costs O(line_length). For HUDs, debug overlays, and dense
   wireframes, the difference is real.

Sources: original Cohen-Sutherland 1967 paper (IBM Systems Journal),
original Sutherland-Hodgman 1974 paper (CACM), Foley/van Dam ch 3.
Lengyel FGED Vol 2 ch 6 covers frustum clipping with cleaner derivations.

## Setup

1. `cd content/domains/graphics/vault/lessons/02b-clipping`
2. Open `main.odin`. It carries the framebuffer + draw_line from
   lesson 02 (assumed working for all 8 octants now) plus skeletons
   for `compute_outcode`, `clip_line`, and a clip-rect parameter.

## Do this

You will fill in:

- `compute_outcode(x, y, xmin, ymin, xmax, ymax: int) -> u8` returning
  a 4-bit code per the layout in the source comments.
- `clip_line(x0, y0, x1, y1, xmin, ymin, xmax, ymax) -> (cx0, cy0, cx1, cy1, visible)`
  using Cohen-Sutherland.

Your `draw_line_clipped` wrapper then becomes:
clip first, then call into `draw_line` from lesson 02 with the trimmed
endpoints.

The `main` proc draws several lines that extend past the clip rectangle
(set to the inner half of the screen). After clipping works, the lines
should terminate exactly at the clip rectangle's edges, not at the
framebuffer edges.

## Run

    odin run main.odin -file

Open `out.ppm`. The clip rectangle is drawn as a thin gray border.
Test lines should:

- Cross the rectangle: render only the inside segment.
- Be fully outside: render nothing.
- Be fully inside: render fully.

## What just happened

Cohen-Sutherland is the canonical example of "trivial accept / trivial
reject / hard case" thinking. The outcode AND test is the trivial reject
(both endpoints share at least one outside-half-plane). The outcode OR
test is the trivial accept (both endpoints inside). Only the hard case
runs the per-edge intersection loop, and even then it converges in at
most 4 iterations (one per rectangle edge).

## Now break it

1. Swap the outcode bits for "left" and "right". Lines that should clip
   on the left now clip on the right. The error is silent: lines render
   in the wrong place rather than crashing. Note the failure mode and
   revert.
2. Skip the outcode AND test (the trivial reject). Performance drops on
   scenes with many off-screen lines, but correctness is preserved. This
   is the "is this optimization actually load-bearing" check.
3. Set `xmin > xmax` (degenerate rectangle). Most implementations loop
   forever or crash. Add a sanity check at the top of `clip_line`.

## Sutherland-Hodgman as a sidebar

Polygon clipping comes back in lesson 05 (frustum clipping after
projection). The shape of that algorithm:

    out = polygon
    for each clip_plane:
        in = out
        out = []
        for each edge (a, b) of in:
            if a inside and b inside: out.append(b)
            if a inside and b outside: out.append(intersect(a, b, plane))
            if a outside and b inside: out.append(intersect(a, b, plane)); out.append(b)
            if a outside and b outside: skip

You don't implement it here. Lesson 05 will, with the homogeneous
coordinates from lesson 01 doing the heavy lifting.

## Find more like this

    just substrate-search --bm25 "cohen sutherland clipping outcode" --top 5

## Next: `03-triangle-rasterization/`
