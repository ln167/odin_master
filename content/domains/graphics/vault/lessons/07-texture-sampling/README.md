# Lesson graphics/07 - texture sampling and perspective-correct interpolation

## Tasks

- [ ] TODO 1: load a small image into memory as `[]u32` (use a hand-built checkerboard for now; PNG loading comes later).
- [ ] TODO 2: extend triangle rasterizer to interpolate `(u, v)` per pixel using barycentric weights.
- [ ] TODO 3: implement nearest-neighbor texture sampling: `texel = texture[int(v * H) * W + int(u * W)]`.
- [ ] Now break it: interpolate u and v linearly in screen space (the "naive" way); observe the swimming/skewing on a tilted quad.
- [ ] TODO 4: implement perspective-correct interpolation: interpolate `u/w` and `v/w` and `1/w`, then divide at the pixel.
- [ ] Compare both methods side by side; verify perspective-correct removes the swim.

## Tools to use here

- `<leader>or` — run; compare `out_naive.ppm` vs `out_correct.ppm`
- `<leader>oq "perspective correct interpolation texture"` — tinyrenderer supplement
- `<leader>op` — scratch a single-attribute (just z) interp before extending to UV

## Concept

Two things in this lesson, both about *how to interpolate vertex
attributes across a triangle*.

**Part 1: barycentric attribute interpolation.** You already have edge
function values from lesson 03; dividing by total area gives barycentric
weights. Any per-vertex attribute (color, UV, normal, depth) interpolates
the same way: `attr_pixel = w0*attr0 + w1*attr1 + w2*attr2`.

**Part 2: perspective-correct.** The catch: linear interpolation in
screen space is wrong for non-fronto-parallel triangles. A line from
near-A to far-B in 3D maps to a line in screen space, but the *parameter
t* along that screen-line is not the same as the t along the 3D line.
The fix is to interpolate `attr / w` instead of `attr`, plus interpolate
`1 / w`, and at each pixel divide them: `attr_3d = (attr/w)_pixel /
(1/w)_pixel`. The `1/w` divide undoes the perspective distortion.

This matters everywhere there is depth variation across a triangle:
- Texture mapping (UV interpolation; the canonical demo of the bug).
- Normal interpolation (Phong shading; lesson 08).
- Depth itself (already perspective-corrected via the z-buffer if you
  used the post-projection z, which is `z/w`; see lesson 04).

Sources: tinyrenderer "Linear interpolation with perspective deformations"
supplement (https://github.com/ssloy/tinyrenderer/wiki/Lesson-3bis-linear-interpolation-with-perspective-deformations).
Aras Pranckevicius "Daily Pathtracer" series has cleaner code samples
than tinyrenderer's C++.

## Setup

1. `cd content/domains/graphics/vault/lessons/07-texture-sampling`
2. Skeleton has the triangle rasterizer from lesson 03/04 + a built-in
   checkerboard generator + UV interpolation stubs.

## Do this

You will fill in UV interpolation (naive first, then perspective-correct)
and a `sample_nearest` proc. Draw a textured quad tilted away from the
viewer; verify the perspective-correct version doesn't swim.

## Run

    odin run main.odin -file

Two PPMs: `out_naive.ppm` (visibly skewed checkerboard near the back of
the quad) and `out_correct.ppm` (uniform checker grid).

## Now break it

1. Forget to divide by `1/w` at the pixel. The texture warps in a
   subtler way; the bug looks like a near-correct image with skewed
   diagonals.
2. Use `int()` casts instead of `floor()` for UV-to-texel. For negative
   UVs (e.g., tiling textures with wrap-around), `int(-0.3)` is 0 but
   `floor(-0.3)` is -1. Different visual artifacts.
3. Sample with bilinear (4 texels + 4 weights) instead of nearest.
   Smoother but blurrier. Trade-off you'll revisit with mipmapping in
   lesson 11b.

## Find more like this

    just substrate-search --bm25 "perspective correct interpolation texture" --top 5

## Next: `08-lambert-phong-gamma/`
