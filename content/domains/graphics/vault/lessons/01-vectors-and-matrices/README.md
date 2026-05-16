# Lesson graphics/01 - vectors and matrices

## Tasks

- [ ] TODO 1: implement `dot3(a, b: [3]f32) -> f32`.
- [ ] TODO 2: implement `cross3(a, b: [3]f32) -> [3]f32` (right-handed).
- [ ] TODO 3: implement `transform_point(m, p) -> [3]f32` (homogeneous, divide by w).
- [ ] Run; all assertions should print `all ok`.
- [ ] Do the "Now break it" exercises (flip cross sign; divide by p.x instead of p.w).

## Tools to use here

- `<leader>or` — run the file; passes print `all ok`
- `<leader>oq "homogeneous coordinates cross product"` — derivation refresher
- `just verify lesson-01-vectors-and-matrices` — diff against reference
- `<leader>op` — scratch space to test another transform

## Concept

You almost certainly know the math here. The lesson is **the conventions
this curriculum picks** and what changes when you pick differently.

The conventions for this curriculum (matches tinyrenderer, Lengyel FGED,
and the SDL3-GPU + GLSL ecosystem):

- **Right-handed coordinate system, Y up.** Z points out of the screen
  toward the viewer. (OpenGL convention; flip Z if porting from DirectX.)
- **Column vectors, post-multiplication.** A point `p` transforms as
  `p' = M * p`. Read transformations right-to-left. This is the convention
  in GLSL, Odin's built-in `matrix` type, and most graphics math texts.
- **Column-major matrix storage in memory.** When you write a 4x4 matrix
  literal in Odin source code, the visible "rows" of source text are the
  *columns* of the matrix. (Odin's `matrix[R, C]T` indexes as `m[row, col]`
  but stores column-major in memory.)
- **Homogeneous coordinates.** Points are `(x, y, z, 1)`, directions are
  `(x, y, z, 0)`. The fourth component lets a 4x4 matrix encode
  translation as well as rotation/scale.

The reps you are after:

1. **Dot product** as projection onto a direction; sign tells you which
   side of a plane a point is on.
2. **Cross product** as perpendicular direction + parallelogram area;
   sign tells you winding (CCW vs CW), which lesson 03 uses for triangle
   rasterization.
3. **Composition order matters.** `T * R * v` translates the rotated
   vector; `R * T * v` rotates the translated vector. They are different.

Sources: Holmer "Math for Game Devs" YouTube series parts 1-4 (visual
derivations), Lengyel FGED Vol 1 ch 1-4 (rigorous), tinyrenderer Lesson 4
(geometry) for graphics-specific pacing.

## Setup

1. `cd content/domains/graphics/vault/lessons/01-vectors-and-matrices`
2. Open `main.odin`. It's a skeleton with TODOs and assertions.

## Do this

You will implement three procs from scratch (Odin's `core:math/linalg`
has them, but **the rep is implementing them**, not calling them):

- `dot3(a, b: [3]f32) -> f32`
- `cross3(a, b: [3]f32) -> [3]f32`
- `transform_point(m: matrix[4, 4]f32, p: [3]f32) -> [3]f32`
  (treat `p` as a homogeneous point; multiply by `m`; divide xyz by w.)

The skeleton has assertions that will fire if your implementations are
wrong. Run the program: it should print `all ok` and exit zero.

## Run

    odin run main.odin -file

Expected output:

    all ok

If an assertion fires, the message tells you which test failed. Read it,
fix the implementation, re-run.

## What just happened

- `dot3([1,0,0], [0,1,0]) == 0` because perpendicular vectors project to
  zero. If your dot returns nonzero, you summed wrong terms.
- `cross3([1,0,0], [0,1,0]) == [0,0,1]` is the right-handed convention.
  Left-handed would give `[0,0,-1]`. If yours is flipped, you have the
  wrong sign somewhere; that bug propagates into normals and lighting
  later.
- `transform_point` with a translation matrix `T(2, 3, 5)` applied to
  `[1, 1, 1]` should yield `[3, 4, 6]`. If yours yields `[1, 1, 1]`, you
  forgot the homogeneous `1` in the fourth component.

## Now break it

1. Swap the order in cross: `b.y * a.z - b.z * a.y, ...`. The result
   should flip sign. Confirm and revert.
2. In `transform_point`, divide by `p.x` instead of `p.w`. Most points
   will still work because `w == 1` after a non-projective transform; the
   bug only shows up after a perspective projection (lesson 05). Note the
   silent-failure mode and revert.
3. Use Odin's built-in matrix multiply (`m * vec4`) and confirm your
   `transform_point` output matches. They should agree to floating-point
   precision.

## Find more like this

    just substrate-search --bm25 "homogeneous coordinates cross product" --top 5

Lengyel FGED Vol 1 ch 1-4 is the rigorous reference. Holmer's YouTube
series is the visual reference; both work better with this lesson than
without.

## Next: `02-bresenham-lines/`
