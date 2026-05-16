# Lesson graphics/12 - index buffers, instancing, basic mesh loading

## Tasks

- [ ] Create an SDL_GPUBuffer of indices (u16 or u32); upload.
- [ ] Use SDL_DrawGPUIndexedPrimitives to draw a cube (8 vertices, 36 indices).
- [ ] Instance the cube N times via SDL_DrawGPUIndexedPrimitives' instance_count param; pass per-instance transforms via a storage buffer indexed by gl_InstanceIndex.
- [ ] Load a simple .obj file (positions + indices) into vertex/index buffers.
- [ ] Now break it: misalign the index buffer's stride; see the mesh tear apart.
- [ ] Now break it: bind a vertex buffer but forget to update gl_InstanceIndex in the shader; observe N copies overlapping.

## Tools to use here

- `just lab` — run; grid of N cubes appears
- `just bench instancing-cost` — measure per-instance overhead once both paths work
- `<leader>oq "index buffer instancing storage buffer"` — RTR4 ch 16
- `<leader>op` — scratch a tiny .obj loader before integrating with the engine

## Concept

Two ideas, both about removing redundancy from draws.

**Index buffers.** A cube has 8 unique vertices but uses each ~4-5 times
across its 12 triangles. Without indices, you upload 36 vertices.
With indices, you upload 8 vertices + 36 indices (smaller integers,
typically). Mesh size drops; cache hit rate up because the GPU sees
the same vertices repeatedly.

**Instancing.** "Draw this mesh 1000 times with different transforms."
One draw call, 1000 instances. Per-instance data (transforms, colors,
material IDs) lives in a storage buffer; the shader reads
`storage[gl_InstanceIndex]`. Way faster than 1000 draws.

This is the lesson where you stop hardcoding vertices and start loading
meshes. .obj is the simplest format (text, well-documented); use it
for the first lesson, switch to glTF or your own binary format later.

Sources: RTR4 ch 16, SDL3 wiki SDL_DrawGPUIndexedPrimitives,
Pikuma's mesh loading tutorial walkthrough (search YouTube for
"obj loader from scratch").

## Setup

Continues in `lab/src/game/`. The cube vertex buffer from lesson 11
gets joined by an index buffer; the draw call switches to indexed
mode.

## Do this

Three sub-steps:
1. Index buffer for a cube. Compare draw counts (36 verts vs 8 verts
   + 36 indices); confirm pixel-identical output.
2. Instance the cube N=100 times in a 10x10 grid. Per-instance offset
   in a storage buffer.
3. Replace the hardcoded cube with a loaded .obj of your choice
   (Stanford bunny, a cube you exported from Blender, whatever).

## Run

    just lab

A grid of 100 cubes. Hot-reload the mesh: swap .obj files, see new
geometry.

## Now break it

1. Use a u16 index buffer but `SDL_INDEX_TYPE_32` in the bind call.
   The GPU reads 2 indices as one; everything is degenerate.
2. Forget to bind the storage buffer before the indexed draw; per-instance
   transforms are zero or stale.
3. Set `instance_count = 0`. Nothing renders. Useful "off switch" for
   debugging.

## Find more like this

    just substrate-search --bm25 "index buffer instancing storage buffer" --top 5

## Next: `13-compute-shaders/`
