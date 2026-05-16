# Lesson graphics/17 - voxel raymarching on GPU (DDA traversal in compute)

## Tasks

- [ ] Read Amanatides + Woo 1987 "A Fast Voxel Traversal Algorithm for Ray Tracing" (find PDF; classic paper).
- [ ] Read Quilez "Raymarching SDFs" + "Numerical normals for SDFs" (https://iquilezles.org/articles/raymarchingdf/).
- [ ] Implement 3D-DDA on CPU first: given a ray and a uniform voxel grid, step from cell to cell.
- [ ] Port to compute shader: storage-buffer the grid, per-pixel-ray dispatch, write color to a storage texture, blit to swapchain.
- [ ] Once working on a small grid (e.g., 64^3), swap in the brickmap from lesson 16; traversal is the same algorithm, just nested.
- [ ] Render a destructible voxel volume; modify a voxel from another shader and see the next frame reflect it.
- [ ] Now break it: ray step size too large; tunneling through thin walls.
- [ ] Now break it: forget to handle ray-AABB intersection (when ray starts outside the grid).

## Tools to use here

- `<leader>op` — scratch a single-ray CPU 3D-DDA first; verify the algorithm visually
- `just lab` — once on GPU, raymarched scene replaces the rasterizer here
- `<leader>oq "3d dda voxel raymarch"` — Amanatides-Woo + Quilez
- Rebuild with `-define:INSTRUMENT=spall`, view trace — per-ray cost is the perf-critical thing

## Concept

Voxel raymarching is *rasterization's evil twin*. Instead of "project
geometry to pixels," it goes "for each pixel, march a ray and ask
what's at the first hit." It scales differently:

- Rasterization: O(triangles * pixels_covered).
- Raymarching: O(pixels * ray_steps_per_pixel).

For mostly-empty scenes with simple shading, raymarching wins. For
detailed meshes with complex shaders, rasterization wins. Destructible
voxels (Teardown, Dreams) raymarch because voxel rasterization is
worse than ray-per-pixel when voxel counts cross ~10M.

**3D DDA (Amanatides + Woo 1987)** is the canonical voxel-grid
traversal algorithm. The mental model is Bresenham in 3D: a per-axis
running error (tDelta, tMax) that says "how far until I cross the next
cell boundary?" Pick the smallest, step that axis, update the running
error. Three adds and a compare per cell. Cache-friendly because
adjacent cells in any axis differ by 1 in the array index for that
axis.

The compute shader version:
- One thread per screen pixel.
- Each thread builds its primary ray (from camera + pixel coords).
- DDA-march through the brickmap.
- On hit, shade (light + material lookup, optional shadow ray).
- Write color to the output storage texture.
- Blit the texture to the swapchain as a final fragment-shader pass.

Sources: Amanatides + Woo 1987 paper (search for
"amanatides_woo_fast_voxel_traversal.pdf"), Quilez articles, vkguide
on storage textures, Teardown's developer writeups for the brickmap
+ raymarch combo.

## Setup

Continues from lesson 16's brickmap. New compute shader in
`lab/src/game/` (or your own location). Storage texture as the output
buffer.

## Do this

Four sub-steps:
1. CPU 3D-DDA for a single ray + simple grid. Print which cells it
   visited.
2. Same in a compute shader, one thread per pixel, output to storage
   texture, blit. A simple voxel sphere should appear when raymarched.
3. Swap the simple grid for the lesson-16 brickmap. Same algorithm,
   nested.
4. Run a separate compute pass that modifies a voxel each frame
   (e.g., destruction effect). Next frame's raymarch sees the change.

## Run

    just lab

You should see a raymarched voxel scene. Press a key to destroy a
voxel chunk; it disappears in the next frame.

## What just happened

The brickmap is your scene representation. Compute shaders read and
write it. Raymarching is your renderer. There is no vertex/fragment
pipeline in the inner loop. This is the architecture Aaltonen calls
"compute-driven" and Teardown ships.

For destructible-world ambitions, this is the load-bearing lesson.
Lessons 18-19 build the physics + destruction simulation on top of
this rendering substrate.

## Now break it

1. tMax updates with the wrong sign for a negative-direction ray.
   Rays going one way work; opposite direction tunnels.
2. Ray-AABB clip: skip it. Rays starting outside the grid produce
   negative cell indices, read out-of-bounds memory, GPU hang or
   garbage.
3. Step size too large in a smooth-SDF variant (lesson 17 is grid
   variant; SDF is Quilez's adjacent topic). Misses thin features.

## Find more like this

    just substrate-search --bm25 "3d dda voxel raymarch traversal" --top 5

## Next: `18-xpbd-substep-loop/`
