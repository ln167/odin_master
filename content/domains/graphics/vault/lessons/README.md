# Graphics curriculum, lessons 00 through 19

Per the design doc at
`docs/superpowers/specs/2026-05-09-graphics-curriculum-research.md`.

This index tracks two distinct states per lesson:

- **Scaffolded:** the lesson dir, README, and `main.odin` skeleton exist
  in this repo. The README walks the concept and the skeleton compiles
  cleanly under `odin check` with TODOs the user fills in.
- **Done:** the user has finished the TODOs, the program runs, and the
  expected output (PPM dump or stdout) matches.

You can be Scaffolded but not Done (the slot is ready, you have not yet
worked through it). You cannot be Done without first being Scaffolded.

## Order

You should do these in order. Each lesson assumes the previous ones.
Three lessons get a "b" suffix; they are inserts that cover
API-agnostic or engine-systems knowledge (clipping, immediate-mode UI,
sampling theory). Do them inline.

## Status

| #   | Title                                                   | Scaffolded | Done | Phase    |
|-----|---------------------------------------------------------|------------|------|----------|
| 00  | Frame buffer (buffer, write pixels, dump PPM; no window)| [x]        | [ ]  | CPU      |
| 01  | Vectors, matrices, dot/cross, homogeneous coords        | [x]        | [ ]  | theory   |
| 02  | Bresenham + DDA line rasterization                      | [x]        | [ ]  | CPU      |
| 02b | Line and polygon clipping (Cohen-Sutherland)            | [x]        | [ ]  | CPU      |
| 03  | Triangle rasterization (edge functions, barycentric)    | [x]        | [ ]  | CPU      |
| 04  | Z-buffer, hidden surface removal                        | [x]        | [ ]  | CPU      |
| 05  | Projection (orthographic, perspective, NDC, viewport)   | [x]        | [ ]  | CPU      |
| 06  | Camera (view matrix, lookAt, FPS controller)            | [x]        | [ ]  | CPU      |
| 07  | Texture sampling, perspective-correct interpolation     | [x]        | [ ]  | CPU      |
| 08  | Lambert + Phong, gamma, sRGB                            | [x]        | [ ]  | CPU      |
| 09  | Tangent-space normal mapping                            | [x]        | [ ]  | CPU      |
| 09b | Immediate-mode UI (Dear ImGui)                          | [x]        | [ ]  | concept  |
| 10  | SDL3-GPU intro: device, swapchain, render pass, triangle| [x]        | [ ]  | GPU      |
| 11  | Vertex/fragment shaders, uniforms, push constants       | [x]        | [ ]  | GPU      |
| 11b | Sampling, aliasing, dithering                           | [x]        | [ ]  | theory   |
| 12  | Index buffers, instancing, basic mesh loading           | [x]        | [ ]  | GPU      |
| 13  | Compute shaders: dispatch, workgroups, storage buffers  | [x]        | [ ]  | GPU      |
| 14  | Bindless mental model, descriptor indexing, BDA         | [x]        | [ ]  | GPU      |
| 15  | GPU-driven culling + indirect draw                      | [x]        | [ ]  | GPU      |
| 16  | Spatial structures: uniform grid, SVO, brickmaps        | [x]        | [ ]  | CPU+GPU  |
| 17  | Voxel raymarching on GPU (DDA in compute)               | [x]        | [ ]  | GPU      |
| 18  | XPBD substep loop on CPU, then port to compute          | [x]        | [ ]  | CPU+GPU  |
| 19  | Destruction: voxel cut, island detection, flood fill    | [x]        | [ ]  | CPU+GPU  |

## How to use this file

When you finish a lesson, flip its "Done" box to `[x]`. When a lesson
gets scaffolded, flip its "Scaffolded" box to `[x]`. The diff against
last commit shows you what changed at a glance.

If a lesson is scaffolded but turns out wrong, edit it in place. Don't
add a "b" suffix unless the lesson is genuinely a sibling rather than a
correction.

## Lessons in detail

Each lesson dir has:

- `README.md`: concept, conventions, derivation pointers, "do this",
  "now break it", "next" pointer, sources cited.
- `main.odin`: a compileable skeleton with TODOs. Run with
  `odin run main.odin -file`.

Several lessons (00, 02, 02b, 03 onward through 09) share the same
framebuffer + PPM-dump pattern from lesson 00. You will retype the
plumbing each time at first; once that gets old, factor it into a
shared package (`tools/domains/odin/graphics_lib/` is a reasonable
home).

## Sources

Tier-1 and tier-2 sources are recorded in `content/manifest.yaml` under
`domain: graphics`. Mirrored upstream content lives at
`content/domains/graphics/source/raw/`. Aaltonen "No Graphics API" is
the only source currently mirrored manually; the rest will arrive when
the `html_mirror` fetcher pipeline ships.

Physical books referenced (not in manifest):

- Real-Time Rendering 4th ed (Akenine-Moller, Haines, Hoffman)
- Foundations of Game Engine Development Vol 1 + Vol 2 (Lengyel)
- Real-Time Collision Detection (Ericson)
- Game Engine Black Book: Wolfenstein 3D + DOOM (Sanglard)
