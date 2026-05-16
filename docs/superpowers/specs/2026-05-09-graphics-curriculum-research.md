# Graphics curriculum research

- **Date:** 2026-05-09
- **Status:** Reference. Informs the `content/domains/graphics/vault/lessons/` curriculum.
- **Method:** Background subagent web search across notable practitioners, textbooks, and online courses. User constraints: skip OpenGL entirely, target SDL3 + SDL3-GPU, 1-month focused runway, physics + data-science background.

This is the working draft of the graphics curriculum. The 20-lesson sequence below is what the lessons under `content/domains/graphics/vault/lessons/00-N` should cover, in order. Tier-1 and Tier-2 sources are reflected in `content/manifest.yaml` under `domain: graphics` so they will be mirrored when the html_mirror fetcher pipeline ships. Books (Real-Time Rendering 4th ed, Lengyel's FGED Vol 1+2, Ericson's Real-Time Collision Detection) are referenced here but not in the manifest because they are physical artifacts the fetcher cannot mirror.

## 1. Recommended lesson sequence

Target ~22 lessons. CPU phase lands the mental model; GPU phase puts you on the rails Aaltonen describes. Bindless and compute come earlier than in any textbook because we have explicitly opted out of the OpenGL detour. Lessons 02b and 11b cover transferable signal-processing and computational-geometry knowledge that is API-agnostic and outlives any specific renderer.

| # | Title | Phase | Difficulty | Source(s) |
|---|---|---|---|---|
| 00 | Frame buffer (allocate buffer, write pixels, dump PPM; no window) | CPU | low | tinyrenderer L0, Sanglard Wolfenstein ch on VGA |
| 01 | Vectors, matrices, dot/cross, homogeneous coords | theory | low | Holmer "Math for Game Devs" parts 1-4, Lengyel Vol 1 |
| 02 | Bresenham + DDA line rasterization | CPU | low | tinyrenderer L1 |
| 02b | Line and polygon clipping (Cohen-Sutherland, Sutherland-Hodgman, frustum culling) | CPU/theory | medium | Foley/van Dam ch 3, Lengyel Vol 2 ch 6 (frustum), original Cohen-Sutherland 1967 + Sutherland-Hodgman 1974 papers |
| 03 | Triangle rasterization via edge functions, barycentric coords | CPU | medium | tinyrenderer L2, Muratori HH ep ~82, Pineda 1988 paper |
| 04 | Z-buffer, hidden surface removal | CPU | low | tinyrenderer L3 |
| 05 | Projection: orthographic, perspective, NDC, viewport | CPU/theory | medium | Lengyel Vol 2 ch 6, Lague "Software Rasterizer" |
| 06 | Camera: view matrix, lookAt, FPS controller | CPU | low | tinyrenderer L5 |
| 07 | Texture sampling, perspective-correct interpolation | CPU | medium | tinyrenderer L6 + "perspective deformations" supplement |
| 08 | Lambert + Phong, gamma, sRGB | CPU/theory | medium | RTR4 ch 5+8, Lengyel Vol 2 ch 7 |
| 09 | Tangent-space normal mapping | CPU | medium | tinyrenderer L6bis |
| 10 | SDL3-GPU intro: device, swapchain, render pass, first triangle | GPU | medium | Fischer "Muddling through SDL GPU", Elzanqali Medium post |
| 11 | Vertex/fragment shaders in SDL3-GPU, uniforms, push constants | GPU | medium | SDL3 wiki CategoryGPU, SimonDev GLSL course |
| 11b | Sampling, aliasing, dithering (Nyquist, box vs Gaussian filters, ordered + blue-noise dithering, mipmap LOD) | theory/GPU | medium | Wronski sampling/dithering series, Quilez "Filtering by RDP", RTR4 ch 5.4 + ch 6 (anti-aliasing), Acerola "Color Quantization & Dithering" |
| 12 | Index buffers, instancing, basic mesh loading | GPU | medium | RTR4 ch 16 |
| 13 | Compute shaders: dispatch, workgroups, storage buffers | GPU | medium | SDL3 SDL_CreateGPUComputePipeline, vkguide GPU-driven section |
| 14 | Bindless mental model, descriptor indexing, BDA | GPU | high | Aaltonen "No Graphics API", Tardif "Bindless Oriented", Joestar bindless post |
| 15 | GPU-driven culling + indirect draw | GPU | high | vkguide gpudriven/draw_indirect, Aaltonen GPU-driven Rendering Pipelines SIGGRAPH 2015 |
| 16 | Spatial structures: uniform grid, sparse voxel octree, brickmaps | CPU+GPU | high | Ericson "Real-Time Collision Detection" ch 7, Teardown gamedeveloper.com writeups |
| 17 | Voxel raymarching on GPU (DDA traversal in compute) | GPU | high | Quilez "Raymarching SDFs", Teardown rendering writeup |
| 18 | XPBD substep loop on CPU, then port to compute | CPU+GPU | high | Macklin/Mueller XPBD paper, Mueller "Ten Minute Physics" XPBD PDF |
| 19 | Destruction: voxel cut, island detection, flood fill connectivity | CPU+GPU | high | Teardown design articles, Ericson ch 4 |

## 2. Where the consensus is and isn't

Practitioners agree on the early CPU phase. Sokolov (tinyrenderer), Muratori (Handmade Hero), Lague (Coding Adventures: Software Rasterizer) and Sanglard (Black Books) all walk the same road: framebuffer, line, triangle via edge or scanline, z-buffer, projection, camera, texturing, simple lighting. Lengyel Vol 2 and RTR4 ch 2-8 cover the same material with more rigor and slower pace. There is no real disagreement that this is the foundation, and skipping it leaves you unable to debug a GPU pipeline because you do not know what it is supposed to be doing.

Disagreement starts at the API boundary. Traditional textbooks (RTR4, Lengyel) and most online courses still teach the fixed-pipeline-into-shaders progression, which implicitly requires OpenGL. Aaltonen's "No Graphics API" post and his SIGGRAPH 2023 Hype Hype talk argue the opposite: modern hardware is bindless, GPU-driven, compute-centric, and APIs that hide that (DX11-era OpenGL) teach a model the silicon stopped resembling around 2013. Blow agrees publicly that OpenGL is "literally becoming obsolete" but pragmatically still uses GL bindings in Jai for ease of bring-up, then targets D3D for shipping. For a one-month runway aimed at a destruction engine, Aaltonen's framing wins: SDL3-GPU is a thin shim over Vulkan/Metal/DX12 that exposes compute, storage buffers, and (with extension) bindless without forcing you through GL's state machine.

The other axis of disagreement is offline vs real-time. TU Wien's rendering course and PBRT teach path tracing first, on the theory that the rendering equation is the truth and rasterization is a hack. That is correct but wrong for this project. Path tracing is a worthwhile lesson 20+ side trip but not on the critical path to a destructible voxel engine where you need compute, indirect draw, and bindless before pretty light transport.

## 3. Source ranking

### Tier 1, must use

- **tinyrenderer wiki** (https://github.com/ssloy/tinyrenderer/wiki). Lessons 0-6bis are the spine of lessons 00 through 09. Strip the closing GLSL lesson 9.
- **Aaltonen, "No Graphics API"** (https://www.sebastianaaltonen.com/blog/no-graphics-api). Conceptual frame for lessons 10-15. Pair with his 2015 SIGGRAPH "GPU-Driven Rendering Pipelines" PDF for lesson 15.
- **vkguide.dev GPU-driven section** (https://vkguide.dev/docs/gpudriven). Bindless via descriptor indexing + BDA, indirect draw, compute culling. Maps to lessons 13-15. API is Vulkan, but the techniques port to SDL3-GPU one-to-one.
- **Real-Time Rendering 4th ed**, ch 2 (pipeline), 3 (GPU), 4 (transforms), 5 (shading), 9 (PBR), 19 (acceleration). Reference, not curriculum. Use as the "why does this work" backstop for lessons 03-08 and 16. (Physical book, not in manifest.)
- **Lengyel, Foundations of Game Engine Development Vol 1 (Math) + Vol 2 (Rendering)**. Vol 1 ch 1-4 for lesson 01. Vol 2 ch 6 for projection, ch 8 for lighting/shadows. Cleaner derivations than RTR. (Physical book, not in manifest.)
- **Macklin/Mueller XPBD paper** + **Mueller "Ten Minute Physics"** XPBD writeup (https://matthias-research.github.io/pages/tenMinutePhysics/09-xpbd.pdf). Lesson 18.
- **Ericson, Real-Time Collision Detection** ch 4 (BV), 7 (spatial partitioning), 8 (BVH). Lessons 16 and 19. (Physical book, not in manifest.)
- **Jonathan Fischer, "Muddling through SDL GPU"** (https://www.jonathanfischer.net/gpu-by-example/). Closest thing to a curriculum-grade SDL3-GPU walkthrough that exists. Lessons 10-12.

### Tier 2, highly useful for specific lessons

- **Sebastian Lague, "Coding Adventure: Software Rasterizer"** (YouTube, https://www.youtube.com/watch?v=yyJ-hdISgnw). Visual derivation of triangle math + projection. Lesson 03+05.
- **Inigo Quilez articles** (https://iquilezles.org/articles/). "Raymarching SDFs", "3D SDFs", "Smooth minimum", "Numerical normals". Lesson 17.
- **Freya Holmer, "Math for Game Devs"** YouTube series. Vector spaces, dot/cross, quaternions. Lesson 01.
- **Casey Muratori, Handmade Hero** ep ~80-90 (rasterizer SIMD/edge function thread on hero.handmade.network). Use for the SIMD optimization side note in lesson 03.
- **Bart Wronski, articles index** (https://bartwronski.com/articles-blog-posts-index/). Dithering and signal processing series, useful when lesson 11+ touches sampling and tone curves.
- **Aras Pranckevicius, Daily Pathtracer** (https://aras-p.info/blog/2018/03/28/Daily-Pathtracer-Part-0-Intro/). Optional bonus lesson on porting CPU compute to GPU compute, mirrors what you will do with XPBD in lesson 18.
- **Sanglard, Game Engine Black Book: Wolfenstein 3D + DOOM**. Historical color and "why it was done this way." Useful flavor for lesson 00 framebuffer + lesson 02 line drawing. (Physical book, not in manifest.)
- **Alex Tardif, "Bindless Oriented Programming"** (https://alextardif.com/BindlessProgramming.html). Lesson 14.
- **Joren Joestar, "Vulkan Pills 1: Bindless Textures"** (https://jorenjoestar.github.io/post/vulkan_bindless_texture/). Lesson 14.

### Tier 3, skip or strip

- **TU Wien Rendering course** (path tracing focused). High quality but off the critical path. Optional bonus track if you ever want a path tracer, not for the destruction engine.
- **PBRT (Pharr/Jakob/Humphreys)**. Same reason. Definitive offline reference but the wrong axis for this project.
- **learnopengl.com, ogldev, opengl-tutorial.org**. Skip. Their conceptual content overlaps tinyrenderer and Lengyel without OpenGL-poisoning the API mental model.
- **SimonDev GLSL Shaders from Scratch**. Useful for building shader intuition (lesson 11) but framed around three.js/WebGL. Rip individual concepts (UV math, smoothstep, noise) without taking the framework.
- **Acerola** YouTube. Entertaining, mostly Unity/HLSL post-processing. Pull individual videos (Color Quantization & Dithering, https://www.youtube.com/watch?v=8wOUe32Pt-E) only when lesson covers tone mapping or stylization.
- **CGPP (Hughes/van Dam)**. Comprehensive but written for a 2-semester university course. Too slow for a one-month runway.

## 4. Concrete content to rip

1. **tinyrenderer Lesson 2 "Triangle rasterization and back face culling."** The line-sweep into edge-function transition is exactly the right derivation for lesson 03.
2. **tinyrenderer "linear interpolation with perspective deformations" supplement.** Hyperbolic interpolation derivation, drops straight into lesson 07.
3. **Sebastian Lague, "Coding Adventure: Software Rasterizer"** (https://www.youtube.com/watch?v=yyJ-hdISgnw), roughly 0:00-12:00. He derives orthographic then perspective projection visually. Adapt directly for lesson 05.
4. **Aaltonen, SIGGRAPH 2015 "GPU-Driven Rendering Pipelines"** PDF, sections on multi-draw indirect and cluster culling. Skeleton for lesson 15.
5. **vkguide.dev "Draw Indirect"** (https://vkguide.dev/docs/gpudriven/draw_indirect/). Walks indirect command buffer layout. Lesson 15.
6. **Inigo Quilez "Raymarching SDFs"** + **"Numerical normals for SDFs"** (https://iquilezles.org/articles/raymarchingdf/). Compact derivations, lesson 17.
7. **Mueller "XPBD" tenMinutePhysics PDF** (https://matthias-research.github.io/pages/tenMinutePhysics/09-xpbd.pdf). The substep loop pseudocode is the lesson 18 spine.
8. **Teardown Gamasutra/Game Developer writeups** (https://www.gamedeveloper.com/design/combining-bombastic-heists-with-a-fully-destructible-voxel-world-in-i-teardown-i-). Use for the "thousands of small voxel volumes, not one big grid" architectural decision in lesson 16/19.
9. **Holmer "Math for Game Devs 2022 part 4"** (Matrices & Cross Product). Visual quaternion + basis derivation for lesson 01.
10. **Aras "Daily Pathtracer Part 5: Metal GPU"** (https://aras-p.info/blog/2018/04/03/Daily-Pathtracer-Part-5-Metal-GPU/). The CPU-to-GPU port narrative is the template for lesson 18's second half.

## 5. SDL3-GPU bindless status (as of 2026-05-09)

This replaces the prior "Open questions" section. Findings are pulled from the SDL3 wiki, the SIGGRAPH 2025 panel transcript, and the open bindless tracking issue. Every claim here is cited; anything unverified is called out at the end.

**1. Current stable version.** SDL 3.4.8, released 2026-05-02 ([releases page](https://github.com/libsdl-org/SDL/releases)). 3.4.8 is a hotfix (controller crash on Windows, zenity dialog crash on Unix), not a GPU-API change. The GPU API has been stable since the 3.0 launch in early 2025 ([SDL3 announcement](https://discourse.libsdl.org/t/announcing-the-sdl-3-official-release/57149)).

**2. What SDL3-GPU exposes today.** Resources are bound via fixed-size descriptor sets, not freely indexed. The SPIR-V layout per [SDL_CreateGPUShader](https://wiki.libsdl.org/SDL3/SDL_CreateGPUShader): vertex shaders use set 0 (sampled textures, then storage textures, then storage buffers) and set 1 (uniform buffers); fragment shaders use set 2 (same ordering) and set 3 (uniform buffers). The [CategoryGPU overview](https://wiki.libsdl.org/SDL3/CategoryGPU) confirms 4 uniform slots per stage. Per-stage maximum counts for sampled textures, storage textures, and storage buffers are not stated on the public wiki pages I read; the headers are the source of truth and I did not open them in this pass (see unknowns).

**3. Bindless / descriptor indexing.** Not exposed. The [SDL3 development FAQ](https://wiki.libsdl.org/SDL3/FAQDevelopment) says verbatim: "If you want features that are newer and have less wide-spread support, like mesh shaders and bindless textures, then you'll want to use Vulkan directly." The tracking [issue #11148](https://github.com/libsdl-org/SDL/issues/11148) is open and milestoned 3.x but has no maintainer commitment. At the [SIGGRAPH 2025 panel](https://wiki.libsdl.org/SDL3/SIGGRAPH2025PanelTranscript), Evan Hemsley (GPU API lead) gave the rule: ship a feature once ~99% of target hardware supports it, and avoid two ways to do the same thing. Bindless was estimated at 80-85% support, so "maybe someday" but not now.

**4. Drop-to-Vulkan story.** SDL3-GPU intentionally does not hand you the underlying VkDevice / VkQueue. [SDL_GetGPUDeviceProperties](https://wiki.libsdl.org/SDL3/SDL_GetGPUDeviceProperties) returns only string properties (device name, driver name, driver version, driver info), no native handles. Asked directly at SIGGRAPH 2025, Hemsley said "Absolutely not. I will never allow that." If you want true descriptor indexing today you stop using SDL_gpu.h entirely, take SDL's window/event/swapchain helpers, and create your own VkInstance + VkDevice via SDL_Vulkan_* APIs.

**5. Recommendation for lesson 14.** Teach the bindless concept via Tardif, Aaltonen "No Graphics API," and the [vkguide GPU-driven section](https://vkguide.dev/docs/gpudriven). Implement in SDL3-GPU using the bound-descriptor model (texture arrays per slot, storage buffer indices) and explicitly call out that this is "small-N bindful" not true bindless. Add a clearly-marked optional appendix for learners who want full descriptor indexing: drop SDL_gpu.h, use SDL_Vulkan_CreateSurface for windowing, and pull in vkguide ch 5 directly. Do not try to mix the two in one lesson.

**Unknowns.** I did not pull the exact `MAX_*` constants for sampled textures / storage textures / storage buffers per stage from `SDL_gpu.h`; the wiki overview pages do not list them. Resolution: open `include/SDL3/SDL_gpu.h` at tag `release-3.4.8` and quote the limits before writing lesson 14.

## SDL3-GPU limits + lesson 16-19 reference implementations (2026-05-13)

### SDL3-GPU resource limits (release-3.4.8)

I read `include/SDL3/SDL_gpu.h` from the upstream release-3.4.8 tag (https://raw.githubusercontent.com/libsdl-org/SDL/release-3.4.8/include/SDL3/SDL_gpu.h, 4606 lines, also cross-checked against the locally vendored 3.4.2 copy at `C:/Users/user1/odin/dist/vendor/sdl3/include/SDL_gpu.h`). The header defines NO compile-time `#define SDL_GPU_*MAX*` constants for binding counts or push-constant sizes. `grep "#define SDL_GPU" SDL_gpu.h` returns only usage flags, shader-format flags, color-component masks, and property name strings. Per-stage counts are passed into `SDL_GPUShaderCreateInfo` and `SDL_GPUComputePipelineCreateInfo` as plain `Uint32` fields (`num_samplers`, `num_storage_textures`, `num_storage_buffers`, `num_uniform_buffers`, lines 1747-1750 and 1968-1973 of the local header), so the practical ceiling is the underlying API (Vulkan / D3D12 / Metal), not SDL.

The single hard limit the header documents is uniform slots. Line 294: "There are 4 available uniform slots per shader stage (where the stages are vertex, fragment, and compute)." That matches https://wiki.libsdl.org/SDL3/CategoryGPU. The wiki advises: "Don't use uniform buffers for large amounts of data (more than a matrix or so). Use a storage buffer instead." No byte-size cap is given in either the header or the wiki for `SDL_PushGPUVertexUniformData` / `SDL_PushGPUFragmentUniformData` / `SDL_PushGPUComputeUniformData` (header lines 3168-3232); the docstrings name `length` but not a maximum. There is no "push constant" concept distinct from uniform slots, SDL collapses both.

Verified counts:
- Uniform buffers per stage: 4 (compile-time documented).
- Sampled textures, storage textures (read), storage textures (write), storage buffers, samplers per stage: not stated as numeric ceilings. Author-defined via the `num_*` fields. The header's only constraint is the resource-set ordering (SPIR-V set 0/1/2, DXBC t/u/b spaces, MSL [[buffer]]/[[texture]] order), lines 2593-2614 and 2698-2730.

Unverified: 3.4.8 may have added documentation I missed, but no `MAX` define exists in the diff. The runtime API offers no `SDL_GetGPULimits` query (search of the header confirms).

### Lesson 16: spatial structures

- https://github.com/AdamYuan/SparseVoxelOctree -- working Vulkan SVO with GPU rasterization-pipeline builder, raymarcher, and path tracer in C++. Builds and runs; useful as a "yes this works" reference and for the SVO traversal compute shader.
- https://github.com/Phyronnaz/HashDAG -- C++ + CUDA implementation of the Sparse Voxel DAG with interactive edits (carve, fill, paint). Closest modern equivalent to the brickmap idea (compressed sparse 3D structure with edit support). No straight brickmap implementation surfaced in this pass; van der Laan brickmap papers remain the original reference but I found no public modern C++ port.

### Lesson 17: voxel raymarching in compute

- https://github.com/francisengelmann/fast_voxel_traversal -- minimal C++ port of Amanatides & Woo (cited in the README). Algorithm is identical in compute shader form. The original 1987 PDF at `cs.yorku.ca/~amana/research/grid.pdf` would not load over my TLS (cert-name mismatch); the algorithm is reproduced verbatim in this repo's `main.cpp` and in the README, which is enough to port to GLSL/HLSL. A CiteSeerX mirror exists at `citeseerx.ist.psu.edu/document?doi=10.1.1.42.3443` but also failed cert verification.
- https://github.com/Vercidium/voxel-ray-marching -- C# DDA voxel ray march from Sector's Edge with documented optimization (cache the current chunk to skip block lookups). Translates directly to a compute shader; the optimization is the one worth teaching.

### Lesson 18: XPBD substep loop

Confirmed: `https://matthias-research.github.io/pages/tenMinutePhysics/09-xpbd.pdf` DOES contain pseudocode, not just diagrams. I extracted text with `pdftotext` and verified the substep loop appears on slide ~6 (text lines 63-87 of the extract). The block reads roughly: `while simulating: for substeps: for all particles: x_prev = x; v = v + dt*f/m; x = x + dt*v; for all constraints: solve(C, lambda); for all particles: v = (x - x_prev)/dt`. That is enough for lesson 18's spine. Backup reference: https://github.com/InteractiveComputerGraphics/PositionBasedDynamics -- the canonical C++ library, includes XPBD distance / bending / volume constraints as named features in its README.

GPU XPBD: I did not find a clean compute-shader XPBD port. NVIDIA Warp (https://github.com/NVIDIA/warp) provides GPU primitives but no XPBD example. The parallelization story (graph coloring vs Jacobi vs atomics) is documented in Macklin et al's later "Detailed Rigid Body Simulation with Extended Position Based Dynamics" (https://matthias-research.github.io/pages/publications/PBDBodies.pdf) but the PDF is 10+ MB and would not summarize cleanly; treat as "exists, read offline." For the lesson, recommend staying CPU-side and noting GPU XPBD as a known-hard follow-up.

### Lesson 19: destruction

- https://github.com/seung-lab/connected-components-3d -- C++ library implementing 3D voxel CCL with 6/18/26-connectivity, Rosenfeld-Pfaltz two-pass with union-find and SAUF decision tree. This is the concrete reference for the island-detection step. Hoshen-Kopelman per Wikipedia is 2D-only; this repo is the 3D generalization.
- https://blog.voxagon.se/2014/05/13/cracking-destruction.html -- Dennis Gustafsson (pre-Teardown, Smash Hit) on fragment identification: "Finding connected components in a series of inter-connected nodes is classic graph theory." Plane-splitting for the cut step, GJK for face-to-face adjacency, union-style ID assignment. Teardown-era posts (`blog.voxagon.se`, Spraycan + Design Notes) confirm the architecture but do not re-derive the algorithm. The 2018 "tearable objects" post returns 404; only the 2014 Smash Hit post survives as a primary-source technical writeup from this author.
