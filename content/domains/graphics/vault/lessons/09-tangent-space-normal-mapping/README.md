# Lesson graphics/09 - tangent-space normal mapping

## Tasks

- [ ] TODO 1: derive per-vertex tangent vectors from triangle positions + UVs.
- [ ] TODO 2: per-pixel, build the TBN (tangent, bitangent, normal) basis.
- [ ] TODO 3: sample a normal map; remap RGB [0, 255] to XYZ [-1, 1]; transform into world space via TBN.
- [ ] Use the perturbed normal in Lambert/Phong from lesson 08.
- [ ] Now break it: forget to transpose TBN when going *from* world *to* tangent vs the other way; observe upside-down lighting.
- [ ] Now break it: skip vertex tangent interpolation and use a per-face constant tangent; observe seams.

## Tools to use here

- `<leader>or` — run; expect bumpy lighting on a flat surface
- `<leader>oq "tangent space tbn normal map"` — tinyrenderer L6bis is the canonical
- `<leader>op` — scratch an inverted-bitangent test to see flipped bumps

## Concept

Normal mapping stores a perturbation to the surface normal in a texture,
so a flat polygon looks bumpy. The trick is the normal is stored in
*tangent space* (relative to the surface) rather than world space, so
the same map can wrap onto curved surfaces without breaking.

The per-vertex *tangent* basis is derived from how the triangle's UVs
change relative to its world-space edges. The bitangent comes from
`cross(normal, tangent)`. Together with the existing normal, these form
the TBN matrix that transforms a tangent-space normal back into world
space (or any space the lighting math is in).

The reps:

1. **Tangent comes from UVs, not just positions.** You need both edge
   vectors and edge UV deltas to solve for the tangent that aligns with
   the U direction of the texture. This is a 2x2 linear system per
   triangle, solved via Cramer's rule.
2. **Re-orthogonalize after interpolation.** The TBN built per vertex
   is orthonormal; interpolated across the triangle, it might not be.
   Use Gram-Schmidt to fix tangent against normal before using.
3. **Normal map encoding.** PNG stores `[0, 255]`. Normals are
   `[-1, 1]`. Remap: `n = pixel * 2 - 1`. If you skip this, normals
   are all in the positive octant and lighting is wrong everywhere.

Sources: tinyrenderer Lesson 6bis "Tangent space normal mapping".
RTR4 ch 9.3 for the modern formulation.

## Setup

1. `cd content/domains/graphics/vault/lessons/09-tangent-space-normal-mapping`
2. Skeleton has the lit rasterizer from lesson 08 + a built-in
   procedural normal map (bumpy sin-wave pattern) + TBN stubs.

## Do this

Fill in per-vertex tangent computation, per-pixel TBN assembly, normal
map sampling, and the world-space normal transformation. Render the
sphere or cube from lesson 08 with the normal map applied; verify the
"bumpy" lighting comes through on flat geometry.

## Run

    odin run main.odin -file

Flat surface with apparent bumps because the lighting follows the
perturbed normals.

## Now break it

1. Skip the `* 2 - 1` remap. Normals all point slightly up (since RGB
   defaults near gray = (0.5, 0.5, 0.5) which decodes to (0, 0, 0) but
   raw decodes to (0.5, 0.5, 0.5) i.e. mostly +z). Surface looks shiny
   and flat.
2. Use `cross(tangent, normal)` instead of `cross(normal, tangent)`.
   The bitangent is flipped; bumps look inverted (valleys appear as
   peaks).
3. Skip the Gram-Schmidt re-orthogonalization. For large triangles
   with significant normal variation across them, the lighting drifts.

## Find more like this

    just substrate-search --bm25 "tangent space normal map tbn" --top 5

## Next: `10-sdl3-gpu-intro/` (first GPU lesson; from here on the lessons live in `lab/`)
