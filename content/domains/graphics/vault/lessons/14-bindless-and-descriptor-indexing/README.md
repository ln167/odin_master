# Lesson graphics/14 - bindless mental model, descriptor indexing, BDA

## Tasks

- [ ] Read Aaltonen "No Graphics API" (in `content/domains/graphics/source/raw/tier2-curated/sebastianaaltonen/`).
- [ ] Read Tardif "Bindless Oriented Programming" (https://alextardif.com/BindlessProgramming.html).
- [ ] Read Joestar "Vulkan Pills 1: Bindless Textures" (https://jorenjoestar.github.io/post/vulkan_bindless_texture/).
- [ ] Read vkguide.dev gpudriven section on descriptor indexing.
- [ ] Diagram on paper: what a bindless render submission looks like vs the bindful version you wrote in lessons 11-12.
- [ ] In SDL3-GPU: bind the maximum allowed sampled textures per stage and index into them by a uniform texture-index. This is the closest SDL3-GPU gets to bindless today.
- [ ] (Optional appendix) Drop SDL3-GPU and use raw Vulkan via SDL3's vulkan helpers: enable VK_EXT_descriptor_indexing, allocate a descriptor pool with 1000+ slots, index by per-draw integer. This is the real bindless story.

## Tools to use here

- `<leader>oq "bindless descriptor indexing BDA"` — Tardif, Joestar, Aaltonen, vkguide
- `just lab` — run; bound-array indexing should drop the draw count
- Read the Aaltonen mirror at `content/domains/graphics/source/raw/tier2-curated/sebastianaaltonen/`
- `<leader>op` — scratch a small N-texture-array indexing experiment before wiring into the engine

## Concept

Bindless is the design pattern that says: **don't bind textures and
buffers per draw call; bind them all once, index by integer per draw**.

Why it matters:

- A scene with 1000 textures requires 1000 descriptor sets and 1000
  bind operations per frame (or batched into N draws by texture).
  Bindless: bind one descriptor table at frame start, every draw indexes
  by `gl_DrawID` or `gl_InstanceIndex`.
- Compute and GPU-driven rendering (lesson 15) require it. You can't
  call `vkCmdBindDescriptorSets` from inside a compute shader; you can
  index a bindless table.
- Modern hardware (~2014 onward) is bindless-native. Descriptor sets
  are a software abstraction over what is, in hardware, just a memory
  pointer. APIs that hide this are imposing ceremony for hardware that
  no longer exists. (Aaltonen's whole argument.)

**Buffer Device Address (BDA)** is the same idea applied to buffers:
a buffer is a 64-bit GPU pointer, used directly from shaders. No
descriptor binding, no slot management.

**The catch for SDL3-GPU specifically.** As of release-3.4.8, SDL3-GPU
does NOT expose bindless. The FAQ says drop to raw Vulkan if you need
it. SIGGRAPH 2025 panel said "we'll add it when ~99% of hardware
supports it" (estimated 80-85% today). See section 5 of the curriculum
design doc.

What you can do in SDL3-GPU today:

- Bind up to N sampled textures per stage (check SDL_gpu.h for exact
  count; was undocumented at time of writing).
- Use a uniform-buffer or push-constant integer to index into the
  bound array.
- Pre-batch your scene so draws within a batch share materials.

This is *bounded bindless*. It works for hundreds of textures, not
millions.

For the destruction engine target: bounded bindless via SDL3-GPU is
enough until voxel material counts cross ~256. Then either rebatch or
drop to raw Vulkan.

Sources: Aaltonen "No Graphics API"
(content/domains/graphics/source/raw/tier2-curated/sebastianaaltonen/),
Tardif (https://alextardif.com/BindlessProgramming.html), Joestar
(https://jorenjoestar.github.io/post/vulkan_bindless_texture/),
vkguide.dev gpudriven, curriculum design doc § 5.

## Setup

This lesson is concept-heavy and implementation-light. The reading is
the load-bearing part. Implementation lives in `lab/src/game/` as a
swap: textures previously bound per-draw now live in a fixed array
indexed by push constant.

## Do this

- Build a small material atlas: N hardcoded colors (or N tiny
  textures), N >= 8. Bind all to fragment stage. Push-constant an
  integer index per draw; shader does `out = textures[index]`.
- Compare draw counts: before (one bind per material), after (one
  bind at frame start, N draws with different indices).

## Now break it

1. Index past the bound array's end. UB in spec; some hardware
   returns black, some crashes the GPU.
2. Forget to bind ANY texture; index 0 reads uninitialized. Visually,
   this is "everything is one color" or a hang.
3. Mix bindless-style draws with traditional per-draw binds. Confused
   state; debug via RenderDoc or validation layers.

## Find more like this

    just substrate-search --bm25 "bindless descriptor indexing BDA" --top 5

## Next: `15-gpu-driven-culling-and-indirect-draw/`
