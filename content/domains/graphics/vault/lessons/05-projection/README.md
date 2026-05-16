# Lesson graphics/05 - projection

## Tasks

- [ ] Derive the orthographic projection matrix on paper.
- [ ] Derive the perspective projection matrix on paper (frustum or fov form).
- [ ] TODO 1: implement `ortho_proj(left, right, bottom, top, near, far)`.
- [ ] TODO 2: implement `perspective_proj(fov_y_rad, aspect, near, far)`.
- [ ] TODO 3: implement `project_and_viewport(v: [3]f32, mvp, w, h) -> [3]f32` returning screen-space (x, y, z) where z is in NDC.
- [ ] Draw a wireframe cube with both projections; verify ortho gives parallel edges and perspective gives foreshortening.
- [ ] Now break it: swap near and far; observe what happens to depth ordering.
- [ ] Now break it: forget the homogeneous w divide; observe perspective collapse.

## Tools to use here

- `<leader>or` — run; expect side-by-side ortho and perspective cubes
- `<leader>oq "perspective projection matrix homogeneous"` — Lengyel + tinyrenderer derivations
- `just verify lesson-05-projection` — confirm
- `<leader>op` — scratch a different FOV or aspect ratio

## Concept

Projection is the step that turns 3D points into 2D screen positions
plus a depth. It is a 4x4 matrix multiplication (in homogeneous coords)
followed by a perspective divide (`xyz / w`) followed by a viewport
remap (`[-1, 1] NDC -> [0, w-1] x [0, h-1] pixels`).

Two flavors:

1. **Orthographic.** Parallel edges stay parallel. Used for 2D games,
   isometric games, CAD, and shadow-map rendering. Matrix scales and
   translates each axis independently; w stays 1; no perspective
   divide does anything interesting.
2. **Perspective.** Far things look smaller. The classic camera. The
   matrix produces a non-unity w; dividing xyz by it shrinks distant
   things. Encoded once, applied per vertex by the GPU.

Conventions used in this curriculum (OpenGL-style):

- Right-handed coordinate system, Y up, Z out of screen toward viewer.
- NDC range is `[-1, 1]` on all three axes after perspective divide.
- Near plane is positive z = -near in view space (looking down -z).
  This convention catches a sign you have to track; some references
  use looking-down-+z and the sign flips.

Sources: Lengyel FGED Vol 2 ch 6 (rigorous), tinyrenderer Lesson 4
"Perspective projection" (concrete walkthrough), Sebastian Lague's
"Coding Adventure: Software Rasterizer" YouTube
(https://www.youtube.com/watch?v=yyJ-hdISgnw) covers the visual
derivation in ~10 minutes.

## Setup

1. `cd content/domains/graphics/vault/lessons/05-projection`
2. Open `main.odin`. Skeleton has the framebuffer + draw_line +
   draw_triangle_z from prior lessons plus projection stubs.

## Do this

You will fill in `ortho_proj`, `perspective_proj`, and
`project_and_viewport`. The main draws a wireframe cube at the origin
with both projections, side by side.

The perspective matrix in column-major form (Odin matrix literal layout
appears row-stacked but stores column-major):

    f := 1.0 / tan(fov_y * 0.5)
    matrix[4, 4]f32{
        f/aspect, 0,  0,                            0,
        0,        f,  0,                            0,
        0,        0,  (far + near) / (near - far),  (2 * far * near) / (near - far),
        0,        0, -1,                            0,
    }

## Run

    odin run main.odin -file

Open `out.ppm`. You should see two cubes: one with parallel edges (ortho)
and one shrinking-with-distance (perspective).

## What just happened

The `-1` in the w-row of the perspective matrix is the entire reason
perspective divide does anything. It copies `-z` into the output w
component. Dividing xyz by w then divides by depth, which is what makes
distant things small. Take that -1 out and you have an ortho matrix
in disguise.

## Now break it

1. Swap near and far. Depth values fall outside [-1, 1] and the z-buffer
   from lesson 04 rejects everything, or accepts everything, depending
   on the comparison direction. Sign carefully.
2. Skip the `xyz / w` divide. Perspective becomes ortho (kinda) but z
   is wrong because w wasn't 1 going in. Note the wrong behavior, fix.
3. Use a 90-degree fov. Edge artifacts at the screen boundary. Try 60
   and 120; see which feels right for an FPS.

## Find more like this

    just substrate-search --bm25 "perspective projection matrix homogeneous" --top 5

## Next: `06-camera/`
