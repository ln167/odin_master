# Lesson 12 — structs and `#soa`  *(stub)*

## Concept
`struct{x, y, z: f32}` is array-of-structs (AoS). Prefix the array type
with `#soa` to get struct-of-arrays (SoA): `#soa[N]struct{x,y,z: f32}` lays
out memory as `[N]f32, [N]f32, [N]f32`. SoA is friendlier to SIMD and to
processing one field across many elements.

## TODO
- [ ] Define `Particle :: struct { pos: Vec3, vel: Vec3, mass: f32 }`.
- [ ] Compare `[1024]Particle` vs `#soa[1024]Particle` field access.
- [ ] Iterate: `for &p in particles { p.pos += p.vel * dt }` works for both.
- [ ] Low-level interlude: cache lines, prefetcher, when AoS still wins.

## Find more like this
    odin-search "soa" --top 5
    odin-search "data oriented design" --top 5

## Next: `lessons/13-procedures-as-values/`
