# Lesson graphics/06 - camera

## Tasks

- [ ] TODO 1: implement `look_at(eye, target, up)` returning a view matrix.
- [ ] TODO 2: implement an FPS-style camera (position + yaw + pitch) that produces a view matrix.
- [ ] Combine view, model, projection into MVP: `mvp = proj * view * model`.
- [ ] Draw the wireframe cube from lesson 05 but with a camera that orbits around it across multiple frames (dump several PPMs).
- [ ] Now break it: invert the view matrix manually instead of constructing it from scratch; verify the two methods agree.
- [ ] Now break it: swap pitch and yaw rotation order; observe gimbal lock at pitch = +/-90 degrees.

## Tools to use here

- `<leader>or` — run; dumps 4 orbit views (view_0.ppm through view_3.ppm)
- `<leader>oq "lookat view matrix gimbal lock"` — derivation + quaternion teaser
- `just verify lesson-06-camera` — confirm
- `<leader>op` — scratch pitch values at +/-89, +/-90, +/-91 to see gimbal lock kick in

## Concept

A camera is a *transform you apply to the world*, not a thing in the
world. To "look from A toward B," you build the matrix that moves the
world so that A lands at the origin and B is on the -z axis. That
matrix is the **view matrix**, and you multiply it onto every vertex
before projection.

The full vertex transform stack:

    clip_space = projection * view * model * local_point

read right-to-left:
- `model` puts the point in world space.
- `view` puts it in camera space (camera at origin, looking down -z).
- `projection` puts it in clip space (which the perspective divide turns
  into NDC).

LookAt is the canonical view-matrix constructor. Given an eye position,
a target it should aim at, and an up direction, it builds an orthonormal
basis (forward, right, up) and inverts the resulting matrix. The
inverse of a rigid-body transform is the transpose of its rotation
part plus a translation by `-R^T * t`; you don't need to call a generic
4x4 inverse.

FPS-style camera (used in lab/ later): store `position`, `yaw`,
`pitch`. Build the forward vector from yaw + pitch with trig. Build
right and up from cross products. Feed to lookAt or build the inverse
directly.

The reps:

1. **The view matrix is the inverse of the camera's pose.** "Where is
   the camera" is one matrix; "transform world into camera space" is
   its inverse. Most bugs are sign or order confusion between these two.
2. **Order matters.** Pitch-then-yaw and yaw-then-pitch produce
   different orientations. Pick a convention (yaw applied first, in
   world space; then pitch in camera space) and stick to it.
3. **Gimbal lock is real.** Storing orientation as Euler angles works
   until pitch hits +/-90; then yaw becomes degenerate. Quaternions
   are the fix. We'll defer them until they bite, but know the failure
   mode.

Sources: tinyrenderer Lesson 5 "Moving the camera", Lengyel FGED Vol 2
ch 5 (clean derivation), Holmer "Math for Game Devs 2022 part 4" for
visual quaternion intro (deferred).

## Setup

1. `cd content/domains/graphics/vault/lessons/06-camera`
2. Open `main.odin`. Skeleton has projection from lesson 05 plus
   stubs for `look_at` and `fps_camera_view`.

## Do this

Implement `look_at` and `fps_camera_view`. The main proc orbits a
camera around the origin and dumps four PPMs (front, right, back, left
views of a wireframe cube).

## Run

    odin run main.odin -file

You should see `view_0.ppm` through `view_3.ppm`. The cube appears
from different angles. If the cube rotates instead of the camera
moving, you have the inverse direction.

## Now break it

1. Forget to normalize the up vector after cross-product fix-up. For
   non-perpendicular eye/target/up configurations, the camera basis is
   skewed and the rendered cube looks sheared.
2. Multiply `view * proj` instead of `proj * view`. Almost certainly
   wrong but compiles. Note the failure mode.
3. Try pitch = +/-89 degrees, then +/-90, then +/-91. Watch yaw stop
   working at 90 (gimbal lock). Now you understand quaternions.

## Find more like this

    just substrate-search --bm25 "lookat view matrix gimbal lock" --top 5

## Next: `07-texture-sampling/`
