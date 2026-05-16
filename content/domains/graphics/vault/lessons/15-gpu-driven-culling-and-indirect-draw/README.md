# Lesson graphics/15 - GPU-driven culling + indirect draw

## Tasks

- [ ] Read Aaltonen SIGGRAPH 2015 "GPU-Driven Rendering Pipelines" PDF (sections on multi-draw indirect and cluster culling).
- [ ] Read vkguide.dev "Draw Indirect" (https://vkguide.dev/docs/gpudriven/draw_indirect/).
- [ ] Allocate a storage buffer for draw arguments (SDL_GPUIndexedIndirectDrawCommand or equivalent).
- [ ] Write a compute shader that, given an array of bounding boxes and a frustum, writes draw args for visible items only.
- [ ] Issue an SDL_DrawGPUIndexedPrimitivesIndirect call referencing that buffer.
- [ ] Bench: 10000 objects with CPU culling vs GPU culling. Measure frame time and draw counts.
- [ ] Implement a two-pass: occluder buffer rendered first, then early-z culling for remaining objects.
- [ ] Now break it: forget to clear the draw-args buffer between frames; observe ghost draws from last frame.

## Tools to use here

- `just lab` — run; bind F2 (or similar) to toggle culling on/off, watch frame time
- `just bench cull-vs-uncull` — comparative perf once both paths work
- `<leader>oq "indirect draw GPU-driven culling"` — Aaltonen 2015 SIGGRAPH + vkguide
- Rebuild with `-define:INSTRUMENT=tracy`, attach Tracy live — inspect culling-pass cost

## Concept

GPU-driven rendering means: **let the GPU decide what to draw**. The
CPU submits a fixed number of draw calls; the GPU writes the actual
parameters (vertex count, instance count, base instance) into a
buffer; the GPU consumes them.

The pipeline:

1. **CPU.** Build a list of candidate draws: meshes, bounding boxes,
   transforms.
2. **Compute pass.** Per candidate: cull (frustum, occlusion, distance).
   If visible, write to draw-args buffer + per-instance buffer.
3. **Indirect draw.** `vkCmdDrawIndexedIndirect` (Vulkan) /
   `SDL_DrawGPUIndexedPrimitivesIndirect` (SDL3-GPU) reads the count
   from a counter buffer and the args from the args buffer. The CPU
   doesn't know how many draws will issue.

This is *why* bindless matters: each indirect-draw entry needs to
identify its own material, mesh, etc. by integer index, not by
"which descriptor set is bound." Bind everything once, index per draw.

Two-pass occlusion culling is the modern technique:
- Pass 1: render last-frame's visible occluders into a depth buffer.
- Pass 2: cull current-frame candidates against that depth (a
  conservative estimate). Render survivors.

This is what Frostbite, Unreal Nanite, idTech, Doom Eternal do.
Detractors call it overkill; for a destruction engine with potentially
millions of voxel-derived meshes, it is necessary.

Sources: Aaltonen 2015 SIGGRAPH "GPU-Driven Rendering Pipelines"
(https://advances.realtimerendering.com/s2015/aaltonenhaar_siggraph2015_combined_final_footer_220dpi.pdf),
vkguide.dev gpudriven section, Nanite SIGGRAPH 2021 talk for the modern
extreme version.

## Setup

In `lab/src/game/`. Requires bindless setup from lesson 14 (so each
draw can know its own material). Without bindless, GPU-driven still
works but per-draw resource selection has to use bound texture arrays.

## Do this

Three sub-steps:
1. Indirect draw with a single fixed entry. Validate the wiring works.
2. Indirect draw with N entries written by a compute shader from
   bounding boxes + a frustum. Frustum culling on GPU.
3. Two-pass occlusion: render last-frame survivors first as occluders,
   re-cull this frame's candidates against the resulting depth buffer.

## Run

    just lab

A scene with 10000 objects. CPU has no idea which are drawn; bench
shows ~30x speedup vs naive per-object draw calls when most are
off-screen.

## Now break it

1. Forget the buffer-write barrier between the compute pass and the
   indirect draw. The draw reads stale args.
2. Indirect draw with negative or huge instance counts (writes
   garbage into the count slot). Some drivers crash, some silently
   draw nothing.
3. Skip frustum culling entirely (every candidate draws). Confirm
   the bench: per-frame cost grows linearly with candidate count,
   not visible count.

## Find more like this

    just substrate-search --bm25 "indirect draw GPU-driven culling" --top 5

## Next: `16-spatial-structures/`
