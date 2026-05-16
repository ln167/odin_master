# Lesson graphics/08 - Lambert + Phong, gamma, sRGB

## Tasks

- [ ] TODO 1: implement Lambert diffuse: `intensity = max(0, dot(normal, light_dir))`.
- [ ] TODO 2: implement Phong specular: `intensity_s = pow(max(0, dot(reflect(-L, N), V)), shininess)`.
- [ ] TODO 3: apply gamma to the output: `linear -> sRGB` (raise to 1/2.2 power; or apply the proper sRGB curve).
- [ ] Render a sphere or cube with directional lighting; verify shading.
- [ ] Now break it: skip the gamma step; observe washed-out colors.
- [ ] Now break it: forget to normalize the normal after barycentric interpolation; observe lighting "scaling" with triangle size.

## Tools to use here

- `<leader>or` — run; expect smooth-shaded sphere or cube
- `<leader>oq "phong lighting gamma srgb"` — RTR4 ch 5 + Wronski sRGB articles
- `<leader>op` — scratch a "lighting in sRGB space" bug to see why we don't do it

## Concept

Lighting is just dot products. Lambert (diffuse) is `dot(N, L)`,
clamped to zero. Phong (specular) reflects the light around the normal
and dots it with the view direction. Both are physically wrong but
cheap and good enough for learning. The real fix (Cook-Torrance / GGX
BRDF) waits until you care about realism; for now, ship the math you
can derive in two minutes.

Gamma is the one thing that confuses everyone. Monitors don't display
colors linearly. They apply an inverse-gamma curve (~2.2 power) to
whatever 8-bit value you write. If your math is in linear space (which
all the lighting math here implicitly is), you must apply the *forward*
gamma (`raise to 1/2.2`) before writing the pixel. Otherwise dark
regions are too dark and bright regions blow out.

The reps:

1. **Normalize after interpolation.** Barycentric interpolation of
   normals does not preserve unit length. Renormalize per pixel before
   feeding into a dot product. Otherwise the apparent lighting depends
   on triangle size.
2. **sRGB is not gamma 2.2.** Close, but the actual sRGB curve has a
   linear segment near black. `pow(x, 1/2.2)` is a good approximation
   that's fast; the proper `srgb_encode()` is correct.
3. **Stay in linear, gamma only at the end.** Lighting math is wrong
   if you do it in sRGB space. Multiplications in sRGB are not what
   they look like. Decode textures to linear on read, do lighting,
   encode to sRGB on write.

Sources: RTR4 ch 5 (shading models) + ch 8 (lights), Lengyel FGED Vol 2
ch 7, Wronski "Bart's Blog" articles on sRGB/gamma.

## Setup

1. `cd content/domains/graphics/vault/lessons/08-lambert-phong-gamma`
2. Skeleton has the rasterizer + depth + projection + camera from
   prior lessons. Adds normals per vertex and a lighting stub.

## Do this

Fill in Lambert, Phong, and the gamma encode. Render a sphere
approximated as a triangle mesh (skeleton provides the mesh
generator) or a single tilted cube. Verify shading.

## Run

    odin run main.odin -file

Sphere/cube with smooth shading. Top-left lit, bottom-right dark.

## Now break it

1. Skip gamma. Compare to gamma'd version. Dark regions look "muddy."
2. Do lighting in sRGB-encoded space (no decode on input, no encode on
   output). Saturated colors clamp and pop.
3. Interpolate the light direction (Goraud-style) instead of computing
   it per pixel from interpolated normal (Phong-style). For close-in
   lights and large triangles, the difference is huge; for distant
   lights and small triangles, you can't tell.

## Find more like this

    just substrate-search --bm25 "phong lighting gamma srgb" --top 5

## Next: `09-tangent-space-normal-mapping/`
