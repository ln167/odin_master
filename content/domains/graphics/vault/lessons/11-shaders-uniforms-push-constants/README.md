# Lesson graphics/11 - shaders, uniforms, push constants

## Tasks

- [ ] Modify the vertex shader from lesson 10 to read positions from a vertex buffer.
- [ ] Set up an SDL_GPUBuffer for vertex data; upload positions.
- [ ] Bind the buffer with SDL_BindGPUVertexBuffers; draw via SDL_DrawGPUPrimitives.
- [ ] Add a push constant for an MVP matrix; update it per frame; multiply in the vertex shader.
- [ ] Animate the triangle (rotate via push-constant time).
- [ ] Add a uniform buffer for a color (more durable than push constants for larger payloads).
- [ ] Now break it: skip the upload; see what stale memory looks like.
- [ ] Now break it: push constant payload too large (>128 bytes typically); see what error you get.

## Tools to use here

- `just lab` — run; rotating triangle should appear
- `python lab/build.py hot` — rebuild after edits; shader changes reload too
- `<leader>oq "vertex buffer push constants uniform"` — SDL3 wiki + Fischer
- `<leader>op` — scratch new shader logic in isolation before wiring to the pipeline

## Concept

This lesson teaches the four ways shaders get data from the CPU:

1. **Vertex buffers.** Per-vertex attributes (position, color, UV,
   normal). Bound to vertex input slots. Each draw reads sequentially.
2. **Uniform buffers.** Small (~64KB) buffers of "data the same for the
   whole draw call." Bound to a slot; shaders index by name. Update by
   memcpy + transfer.
3. **Push constants.** Tiny (~128 bytes typically), inline-with-draw-call
   data. Update is free (no buffer transfer). Use for MVP matrices,
   per-draw indices, animation time.
4. **Storage buffers.** Large, read-write from compute shaders. Lesson 13.

For now: vertex buffer for positions, push constant for MVP. That gets
you to "a textured 3D mesh on screen" without descriptor-set complexity.

Push constants in SDL3-GPU are exposed via
`SDL_PushGPUVertexUniformData(cmd, slot, data, size)` and the analogous
fragment version. They are technically uniform buffer slot 0+1 mapped
to push-constant memory under the hood; SDL3 abstracts the difference.
Per-stage limit is small (read SDL_gpu.h to confirm exact size).

Aaltonen's "No Graphics API" critique calls out push-constant
permission as one of the things modern APIs got *right* (vs OpenGL).
Use them liberally.

Sources: SDL3 wiki SDL_PushGPUVertexUniformData docs, SimonDev's GLSL
shader course (concepts; framework is three.js so strip the API parts).

## Setup

Continues from lesson 10 in `lab/src/game/`.

## Do this

Build a vertex buffer with a single triangle's positions. Modify the
vertex shader to read from the buffer (declare `layout(location = 0)
in vec3 position;`). Add a push constant for an MVP matrix. Update the
MVP per frame to rotate the triangle.

## Run

    just lab

Rotating triangle. Hot-reload the shader to change colors; hot-reload
the .odin to change the rotation speed.

## Now break it

1. Forget to call `SDL_UploadToGPUBuffer` (the transfer step). Vertex
   data is undefined; you get garbage geometry or nothing.
2. Push more than the per-stage push-constant budget. SDL3 errors;
   know the error.
3. Forget to declare the vertex input layout in the pipeline state.
   The shader reads uninitialized memory.

## Find more like this

    just substrate-search --bm25 "vertex buffer push constants uniform" --top 5

## Next: `11b-sampling-aliasing-dithering/`
