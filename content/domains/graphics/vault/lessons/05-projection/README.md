# Lesson graphics/05 - projection

## What you're learning

Two things at once:

1. **The math of projection.** How a 3D point becomes a 2D pixel plus a
   depth value. This is identical in every graphics API ever written;
   the matrices below are the same in C, C++, Rust, Odin, GLSL, HLSL.
2. **Odin syntax for linear algebra.** First-class matrix and vector
   types, the `core:math/linalg` package, column-major matrix literals,
   multiple return values, and named-result-shorthand. This part is
   what makes Odin different from C/C++.

The goal is that you finish the lesson able to write a projection
matrix from memory in Odin without copying anyone's code.

---

## Concept

A point in the world has coordinates `(x, y, z)`. The screen has
coordinates `(px, py)` measured in pixels. Projection is the function
that turns the first into the second, plus a depth value `d` for the
z-buffer.

The function is a 4x4 matrix multiplication in **homogeneous
coordinates**, followed by the **perspective divide**, followed by the
**viewport remap**.

### Homogeneous coordinates

You append a fourth coordinate `w = 1` to every point, so a 3D point
`(x, y, z)` becomes a 4D point `(x, y, z, 1)`. This is a trick, not
deep mathematics: it lets translation become a matrix multiplication
instead of a special case. In C/C++ you would write this as
`float v[4] = { x, y, z, 1.0f };` and pass it through your own matrix
multiply. In Odin it's:

    v := [4]f32{x, y, z, 1}

`[4]f32` is a fixed-size array, the same memory layout as the C
version. It is NOT a slice (`[]f32`) and not a dynamic array
(`[dynamic]f32`). Pick the right one or you will spend an hour
debugging.

### The perspective divide

After multiplying by the projection matrix, the result is `(x', y',
z', w')` with `w' != 1`. You divide all four components by `w'`. This
is the step that makes distant things smaller. In C/C++ you write it
out by hand. In Odin you write it out by hand. It is one of the few
places where there is no library shortcut, in any language, because
it's a scalar divide of a 4-vector.

### Viewport remap

After the divide the coordinates are in **NDC** (normalized device
coordinates), the cube `[-1, 1]^3`. You remap that cube to pixel
coordinates `[0, W-1] x [0, H-1]` and keep `z` in `[-1, 1]` for the
z-buffer. This is two multiplies and two adds per axis.

---

## The two matrices

### Orthographic

Parallel edges stay parallel after projection. Used for 2D, isometric,
CAD, shadow maps. The matrix scales and translates each axis to map a
chosen box `[left, right] x [bottom, top] x [near, far]` onto NDC.
Derive it from "I want `left` to map to `-1`, `right` to map to `+1`,
solve". `w` stays 1, so the perspective divide is a no-op.

### Perspective

Far things look smaller. The camera you actually want. In column-major
layout:

    f := 1 / tan(fov_y * 0.5)
    matrix[4, 4]f32{
        f / aspect, 0, 0,                           0,
        0,          f, 0,                           0,
        0,          0, (far + near) / (near - far), (2 * far * near) / (near - far),
        0,          0, -1,                          0,
    }

The `-1` in the `w` row is the entire point of perspective. It copies
`-z` into the output `w`. Dividing the rest of the vector by that `w`
is what shrinks distant geometry. Delete the `-1` and you get an
orthographic-looking result with broken depth.

---

## Odin syntax notes (the part that's not C++)

**Matrix type.** In C++ you'd write a `struct Mat4 { float m[16]; }`
or use `glm::mat4`. In Odin, `matrix[4, 4]f32` is a built-in type. The
`*` operator is matrix multiplication (no operator overloading file
needed, because the language already knows what matrices are).

**Literals are written row-by-row, stored column-major.** This is the
single most confusing thing in the lesson. The text `matrix[4,4]f32{a,
b, c, d, ...}` looks like row-major because of how your eye reads it,
but Odin stores it column-major, the same convention OpenGL/Vulkan
expect. So `M * v` works the way you'd expect from a math textbook.
If you've used GLM in C++, the surprise is that GLM constructor args
are *column-major* in source too, while Odin reads as rows. Pick a
convention and stick to it; mixing is how you get a transposed mess.

**Multiple return values.** Odin procs can return tuples natively:

    proc divide(v: [4]f32) -> (xyz: [3]f32, w: f32) { ... }

In C you'd use an out-parameter or pack into a struct. Use this for
the perspective-divide helper if you write one.

**The `linalg` package.** `core:math/linalg` gives you
`matrix4_translate_f32(v)`, `MATRIX4F32_IDENTITY`, dot products, etc.
It plays the role of GLM in a C++ project. You'll use the translate
helper in `main`; you'll write `ortho_proj` and `perspective_proj`
yourself.

**No headers, no forward declarations.** Order of procs in the file
doesn't matter, like Rust and Go, unlike C/C++.

---

## Tasks

You're going to write three procedures in `main.odin`. The file
already contains the framebuffer plumbing (`set_pixel`, `draw_line`,
`dump_ppm`) from earlier lessons; you don't need to touch those.

1. **Warmup.** In `main`, before anything else, declare a 4-vector
   `(1, 2, 3, 1)` and print its length (the 3D part only). This is
   pure Odin syntax practice: array literal, indexing, calling
   `linalg.length` on a sub-slice or computing it by hand. Delete the
   warmup before you commit.
2. **`ortho_proj`.** Given `left, right, bottom, top, near, far`,
   return a `matrix[4,4]f32` that maps the box to NDC. Derive it on
   paper first. Verify by hand-multiplying it against the corner
   `(left, bottom, near, 1)` and checking you get `(-1, -1, -1, 1)`.
3. **`perspective_proj`.** Given `fov_y_rad, aspect, near, far`,
   return the perspective matrix shown above. Don't copy the literal
   from the README; write it from the math: derive `f` from the FOV,
   then place the entries.
4. **`project_and_viewport`.** Take a 3D point, an MVP matrix, and
   the viewport size. Return `(x_pixel, y_pixel, z_ndc)`. This is
   "promote to homogeneous, multiply, divide by w, remap". Three
   short blocks.
5. Run it. You should see two wireframe cubes: a white orthographic
   one (parallel edges) and a red perspective one (foreshortened).

---

## Verification

Before drawing anything, sanity-check your matrices by printing the
result of multiplying them against known points:

- `ortho_proj(-1, 1, -1, 1, 0, 1) * [4]f32{0, 0, -0.5, 1}` should give
  roughly `(0, 0, 0, 1)`. (Center of the box -> center of NDC.)
- `perspective_proj(PI/2, 1, 1, 100) * [4]f32{0, 0, -1, 1}` should
  give a `w` of `1` after the divide. (A point on the near plane
  lands on NDC z = -1.)

If those don't hold, your matrix is wrong and no amount of cube
drawing will help.

---

## Run

    odin run main.odin -file

Open `out.ppm` in any image viewer. Two cubes, side by side.

---

## Break it on purpose

1. Swap `near` and `far` in the perspective call. Either the z-buffer
   rejects every pixel (cube vanishes) or accepts every pixel (cube
   draws back-to-front). Note which, and why.
2. Comment out the `xyz / w` divide in `project_and_viewport`. The
   perspective cube now looks orthographic but its depth is garbage.
3. Use `fov_y = PI` (180 degrees). Watch the matrix blow up (`tan(PI/2)`
   is infinite). This is why real engines clamp FOV.

---

## Sources for the math

- Lengyel, *Foundations of Game Engine Development*, Vol 2, Ch 6. The
  rigorous derivation.
- *tinyrenderer* Lesson 4. Concrete, code-first walkthrough in C++.
- Sebastian Lague, "Coding Adventure: Software Rasterizer" on YouTube.
  Visual derivation in ten minutes.

Read at most one. The math is the math; the point of this lesson is
to type it into Odin yourself.

## Next: `06-camera/`
