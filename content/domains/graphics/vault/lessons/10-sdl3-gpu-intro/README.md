# Lesson graphics/10 - SDL3-GPU intro: device, swapchain, render pass, first triangle

## Tasks

- [ ] Read the SDL3 GPU API overview (https://wiki.libsdl.org/SDL3/CategoryGPU).
- [ ] In `lab/src/game/`, replace the CPU framebuffer + streaming texture with an SDL_GPUDevice + swapchain.
- [ ] Create an SDL_GPUGraphicsPipeline with a vertex + fragment shader (provided as SPIR-V or HLSL bytecode).
- [ ] Acquire a command buffer per frame; begin a render pass; bind the pipeline; draw 3 vertices for a triangle.
- [ ] Submit and present.
- [ ] Now break it: forget to call SDL_AcquireGPUSwapchainTexture; observe nothing presents.
- [ ] Now break it: don't release the command buffer; observe leaking GPU memory.

## Tools to use here

- `just lab` — run the engine (replaces `odin run` from this lesson onward)
- `python lab/build.py hot` (second terminal) — rebuild DLL after edits, host hot-reloads
- `<leader>oq "SDL3 GPU pipeline render pass"` — wiki + Fischer walkthrough
- `<leader>op` — sketch a shader experiment before committing it to `game.dll`

## Concept

This is the lesson where everything changes. From here on, you stop
writing pixel arrays and start submitting *commands* to the GPU. The
mental model shifts:

- **Device.** A handle to the GPU. One per app.
- **Swapchain.** The chain of textures the OS hands the GPU for presentation.
  SDL3-GPU hides most of the swapchain plumbing.
- **Command buffer.** A list of GPU commands you build per frame.
  Submit it; the driver does the work asynchronously.
- **Render pass.** A scoped object that says "I'm going to render into
  these target textures." Begin, do draws, end.
- **Pipeline.** A compiled program: vertex shader + fragment shader +
  blend state + depth state + topology. Created once, bound per draw.

This is also the lesson where the CPU rasterizer (lessons 00-09) gets
retired as the primary renderer. You keep it as a reference; debugging
GPU output against CPU output is the easiest way to find shader bugs.

SDL3-GPU specifics:

- Uses SPIR-V bytecode for shaders on Vulkan/Linux, MSL on Metal/Mac,
  DXIL on D3D12/Windows. Tooling: write GLSL or HLSL, compile to all
  three with `shadercross` or `glslangValidator` + `spirv-cross`.
- Cleanly drops OpenGL. The backends are Vulkan, Metal, DX12.
- Bindless is NOT exposed; descriptor sets 0+1 for vertex resources,
  2+3 for fragment, 4 uniform slots per stage, fixed bindings. See
  curriculum design doc section 5 for the limits.

Sources: SDL3 wiki "CategoryGPU"
(https://wiki.libsdl.org/SDL3/CategoryGPU), Jonathan Fischer
"Muddling through SDL GPU" (https://www.jonathanfischer.net/gpu-by-example/),
Caleb Cornett's SIGGRAPH 2025 SDL GPU API panel transcript.

## Setup

This lesson is implemented in `lab/src/game/`. The CPU framebuffer
present loop gets replaced with a GPU pipeline. The host (`lab/host/`)
stays the same; only the DLL contents change.

Two files you will create or modify in `lab/src/game/`:
- `triangle_shader.vert` and `triangle_shader.frag` (or HLSL
  equivalents).
- `game.odin`: replace the streaming-texture present with
  `SDL_AcquireGPUSwapchainTexture` + `SDL_BeginGPURenderPass` +
  `SDL_BindGPUGraphicsPipeline` + `SDL_DrawGPUPrimitives(cmd, 3, 1, 0, 0)`
  + `SDL_EndGPURenderPass` + `SDL_SubmitGPUCommandBuffer`.

## Do this

Get a single colored triangle on screen. No vertex buffer, no uniform
data; just hardcode 3 positions in the vertex shader using
`gl_VertexIndex` (Vulkan) / `SV_VertexID` (HLSL).

## Run

    just lab

You should see a colored triangle in the lab window. Edit the shader's
color constant, save, run `python build.py hot` in the other terminal,
watch it hot-reload.

## Now break it

1. Skip `SDL_AcquireGPUSwapchainTexture`. The render pass has nothing
   to write to; nothing presents. SDL3 returns an error code; read it.
2. Submit the command buffer twice (`SDL_SubmitGPUCommandBuffer` then
   again). Behavior depends on the backend; some validate, some
   silently corrupt.
3. Use a swapchain texture without ending the render pass first.
   Validation layers will scream; the GPU may hang.

## Find more like this

    just substrate-search --bm25 "SDL3 GPU pipeline render pass" --top 5

## Next: `11-shaders-uniforms-push-constants/`
