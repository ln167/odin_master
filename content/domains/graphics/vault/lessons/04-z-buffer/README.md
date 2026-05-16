# Lesson graphics/04 - z-buffer

## Tasks

- [ ] Allocate a parallel `z: []f32` buffer initialized to `+infinity`.
- [ ] Extend `draw_triangle` to take three z values, one per vertex.
- [ ] Compute the pixel's z by barycentric interpolation from edge-function values.
- [ ] Per-pixel: write only if `interpolated_z < z[i]`; on write, update `z[i]`.
- [ ] Draw two overlapping triangles at different depths; verify the nearer one wins per pixel.
- [ ] Now break it: forget to reset z-buffer between frames; observe what happens on frame 2.
- [ ] Now break it: use `>` instead of `<`; observe inversion.

## Tools to use here

- `<leader>or` — run; verify two triangles interleave at intersection
- `<leader>oq "z-buffer depth interpolation barycentric"` — math refresher
- `just verify lesson-04-z-buffer` — confirm
- `<leader>op` — scratch a quantized (u8) z-buffer to see z-fighting stripes

## Concept

A z-buffer (a.k.a. depth buffer) is the second framebuffer-sized array
every rasterizer needs. Each pixel stores the z (depth) of whatever was
drawn there. When you go to write a new pixel, you compare its z to
what's stored; you write only if the new pixel is closer.

Three things to get right:

1. **Reset every frame.** Initialize to `+infinity` (or `f32_MAX`)
   before drawing. Forgetting this is the most common bug; you'll see
   stale depth from last frame masking valid writes.
2. **Interpolate z per pixel.** The barycentric weights from lesson 03
   give you `z = w0*z0 + w1*z1 + w2*z2`. The three edge function values
   divided by total area ARE the barycentric weights.
3. **Compare convention.** Smaller z = closer (standard). If your
   `<` and `>` ever feel backwards, you have the wrong convention
   somewhere upstream (probably your projection in lesson 05).

The reps:

- **You computed barycentric weights last lesson without naming them.**
  The three edge-function values are an unnormalized barycentric
  coordinate. Divide each by the total triangle area (= 2x signed area =
  the edge function of the whole triangle) and you have the weights
  used for z, color, and texture interpolation alike.
- **Z is just another vertex attribute.** Once z works, color
  interpolation works the same way (lesson 07 will reuse this).

Sources: tinyrenderer Lesson 3 "Hidden faces removal (z buffer)".
RTR4 ch 23.5 for the modern hardware view of depth testing.

## Setup

1. `cd content/domains/graphics/vault/lessons/04-z-buffer`
2. Open `main.odin`. The skeleton carries forward `pixels`, the
   `edge_func` + `triangle_aabb` from lesson 03, and adds a `z[]`
   array and a depth-aware `draw_triangle_z` stub.

## Do this

The skeleton's main draws two intersecting triangles at different
depths. Without z-buffering they paint in draw order. With z-buffering
they interleave at the intersection.

## Run

    odin run main.odin -file

Open `out.ppm`. Two triangles overlap; near pixels of each show through
where they win the depth test.

## What just happened

The z-buffer turns a 2D rasterizer into a 3D one. Without it, you'd
need to sort triangles back-to-front per frame (the "painter's
algorithm"), which fails on intersecting geometry. The z-buffer is
O(pixels) per frame; painter's sort is O(triangles log triangles) plus
the cost of cycles you can't break. The z-buffer wins.

## Now break it

1. Skip the z-buffer reset between draws. The first triangle works; the
   second one stomps on the first because all the depth values from the
   first are still in `z[]`.
2. Use a `[]u8` z-buffer (quantize to 256 levels). For close triangles
   you'll see "z fighting" stripes as adjacent pixels round to the same
   quantized depth. Real GPU depth buffers are 24-bit or 32-bit float
   for this reason.
3. Compute z with a plain average `(z0+z1+z2)/3` instead of barycentric
   interp. The depth comparison still mostly works because the average
   is close to the centroid, but pixels near vertices are wrong by up
   to `max_z_delta`. Verify with a steeply-tilted triangle.

## Find more like this

    just substrate-search --bm25 "z-buffer depth interpolation barycentric" --top 5

## Next: `05-projection/`
