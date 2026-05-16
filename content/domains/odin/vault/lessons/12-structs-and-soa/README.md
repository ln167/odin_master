# Lesson 12 — structs and `#soa`

## Concept
A regular `[N]Particle` is **array-of-structs (AoS)** — every particle's
fields live next to each other in memory. Prefix the array type with
`#soa` and Odin transposes the layout to **struct-of-arrays (SoA)**:
`#soa[N]Particle` becomes one `[N]f32` for `pos.x`, another for `pos.y`,
etc. Same indexing syntax (`p[i].pos.x`); different memory layout.

## Setup
1. `cd content/domains/odin/vault/lessons/12-structs-and-soa`
2. Open `main.odin`.

## Do this
Type:

```odin
package main

import "core:fmt"

Particle :: struct {
    x, y, z: f32,
    vx, vy, vz: f32,
    mass: f32,
}

N :: 4

main :: proc() {
    aos: [N]Particle
    soa: #soa[N]Particle

    // Same indexing syntax for both.
    for i in 0..<N {
        aos[i] = Particle{x = f32(i), y = 0, z = 0, vx = 1, vy = 0, vz = 0, mass = 1}
        soa[i] = aos[i]
    }

    // Step them once.
    dt: f32 = 0.5
    for i in 0..<N {
        aos[i].x += aos[i].vx * dt
        soa[i].x += soa[i].vx * dt
    }

    fmt.println("aos:", aos)
    fmt.println("soa:", soa)

    // SoA exposes per-field arrays directly.
    fmt.println("soa.x:", soa.x[:])
    fmt.println("soa.y:", soa.y[:])
    fmt.println("soa.mass:", soa.mass[:])

    // Both addresses refer to the same f32 slot.
    assert(&soa[0].x == &soa.x[0])
    fmt.println("layouts agree on element addresses")
}
```

## Now do this
1. `:w`
2. `odin run main.odin -file`

3. **You should see:**

       aos: [Particle{x = 0.5, y = 0, z = 0, vx = 1, vy = 0, vz = 0, mass = 1}, …]
       soa: [Particle{x = 0.5, y = 0, z = 0, vx = 1, vy = 0, vz = 0, mass = 1}, …]
       soa.x: [0.5, 1.5, 2.5, 3.5]
       soa.y: [0, 0, 0, 0]
       soa.mass: [1, 1, 1, 1]
       layouts agree on element addresses

(`fmt` prints `#soa` arrays as if they were AoS — that's deliberate.
The element view is the same; only the bytes underneath differ.)

## What just happened
- The two declarations have *identical interfaces*: `aos[i].x` and
  `soa[i].x` both work, and `assert(&soa[0].x == &soa.x[0])` confirms
  the address-of-field-of-element matches the address-of-element-of-
  field-array.
- `soa.x` is a real array view (`[N]f32`), so `soa.x[:]` is a `[]f32`
  you can pass to anything that wants a contiguous f32 buffer (SIMD,
  GPU upload, audio mixing).
- The bytes for `aos` go `x0,y0,z0,vx0,vy0,vz0,mass0, x1,y1,…`.
  The bytes for `soa` go `x0,x1,x2,x3, y0,y1,…, mass0,mass1,…`.

## Low-level interlude
- AoS wins when you touch *most fields* of *one* element at a time
  (typical OOP). One element fits in one or two cache lines.
- SoA wins when you touch *one field* of *many* elements at a time
  (`for p in particles { p.x += p.vx * dt }` over millions of particles).
  Each cache line is packed with the next eight `f32`s the loop wants.
- SoA is also the natural shape for SIMD: `simd.f32x8` loads of `soa.x`
  are aligned, contiguous, and don't pull in the unused `mass` bytes.
- Tradeoff: random-access patterns that touch all fields per element
  are *worse* under SoA — you fault a cache line per field per element.

The Odin docs cover the full spectrum, including `#soa[]Particle` slices
and `#soa[dynamic]Particle` dynamic arrays. Same rules apply.

## Now break it
1. Compare `size_of([N]Particle)` to `size_of(#soa[N]Particle)`. They're
   identical (both `N * size_of(Particle)`); SoA is a transposition,
   not a packing.
2. Try `aos.x[:]` — there is no such field on a regular array. The
   compiler rejects it. Only `#soa` arrays expose per-field arrays.
3. Convert `Particle` to use `pos: [3]f32, vel: [3]f32` instead of six
   scalars. `soa.pos` becomes `[N][3]f32`. Notice this is *not* the
   same as transposing all the way down — the inner `[3]f32` stays AoS.

## Find more like this
    just substrate-search --bm25 "soa data types" --top 5
    just substrate-search --bm25 "data oriented design" --top 5
    just substrate-search --bm25 "soa_zip" --top 5

## Next: `content/domains/odin/vault/lessons/13-procedures-as-values/`
