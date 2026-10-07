# Primitives, data model, algorithms (phase started 2026-10-07)

Owner ask: before building anything, find the correct primitives, data model, algorithms and promotion/demotion. Rulings driving this: `DESIGN.md` → Rulings. The ones that matter most here: material decides everything; no geometry under ~30°; contact feels heavy (the bar is a boulder rolling down a mountain that looks like real video); RTS camera with closest zoom ≈ an AoE villager, so 1 px ≈ 7–11 cm.

Five research reports were commissioned (read-only, sources graded [V] read / [I] inferred). Each is summarised below as it lands. Synthesis comes after all five.

## R5. Trees (landed)

- **Ladder:**
  - **Rung 0, standing:** about 32 B per tree. The record is a seed plus species, lean and flags; the skeleton is regenerated from the seed, and wind sway runs in the shader only (Habel 2009, SpeedTree [V]).
  - **Rung 1, woken at the first axe strike:** a rod skeleton (100–500 tapered rods with knot bits and grain twist) plus a list of cuts.
  - **Rung 2, falling:** 6–12 rigid trunk segments plus one per branch, linked by breakable joints whose break moment is about σπr³/4, lower at collars and knots. The fall is driven by a hinge derived from the notch geometry.
  - **Rung 3, felled log:** one rigid body plus a rod. Fibre detail exists only as a "cut patch" (a 16×16 mask) on each cut face. Asleep it costs about 0.2–2 KB.
- **Felling facts [V]:**
  - The hinge is ≥80% of DBH long and about 10% of DBH thick. The notch opens ≥70°.
  - The hinge breaks completely when the notch faces close, so the release angle equals the notch opening.
  - A bypass (misaligned) notch makes the hinge fail early.
  - Barber-chair: hinge tension exceeds cross-grain strength before rotation, so the butt splits along the length and kicks up.
- **Wood [V]:** orthotropic and about 10× stronger along the grain. Knots matter more than reaction wood. Reaction wood forms on the lower side of leaning softwoods (compression wood) and the upper side of leaning hardwoods (tension wood).
- **Prior art [V]:**
  - Quigley/Fedkiw (Stanford): articulated rigid bodies with stiff joints and a linear-time solve; more than 10k branches in real time, with plasticity and fracture.
  - Zhao & Barbič 2013: reduced FEM.
  - Commercial games fake it: KCD and The Long Dark don't let you cut trees; Medieval Dynasty uses HP; Teardown has no grain.
- **Cost [I]:** 10k standing trees ≈ 320 KB CPU plus instancing. 20 active trees ≈ 3k bodies, estimated at 2 ms or less.
- **Reads at RTS distance:** the pale fresh cut face (strongest signal), the hole in the canopy, splinter tufts, branch-debris fans. Leaves need coverage-preserving alpha mips (Castaño) plus alpha-to-coverage.
- **Open [I]:**
  - The hinge holding-moment and barber-chair thresholds.
  - Bounce, wiggle and branch absorption have no quantitative source; calibrate from video.
  - Skeleton regeneration must be bit-deterministic.
  - Stiff-joint stability at impact.

## R1. Heavy contact / rockfall (landed)

**Finding:** engineering rockfall codes use no ground bounce coefficient.
- RAMMS::ROCKFALL (Bartelt 2016 [V]) makes every normal impact fully plastic (ε = 0).
- Bounce, roll and stopping emerge from three things:
  - the faceted rock shape;
  - "scar" friction that rises as the rock ploughs in;
  - a mass-proportional drag while in contact.
- Why games feel light [I]: in a standard contact model mass cancels out, so a 10 t block and a 1 kg block of the same shape move identically. Weight must therefore enter through:
  - a ground that responds to pressure (dents);
  - damage;
  - true-scale timing (big things look slow, since time ∝ √L).

**Model (RAMMS core [V], extensions [I]):**
```
fixed dt 1–2 ms, Moreau/impulse time stepping, Gauss-Seidel
contacts = hull vertices vs bilinear heightfield
s  += in_contact ? |v_t|·dt : −β·s·dt                     // scar depth
mu  = mu_min + (2/π)(mu_max − mu_min)·atan(κ·s)          // scar hardening
normal: ε = 0;  tangent: Coulomb |P_t| ≤ mu·P_n
in contact: v −= ν·v·dt                                   // drag
[I] p = P_n/(dt·A); if p > q_ult(cell): dent the cell, remove q_ult·ΔV of energy
[I] D += excess impact energy per kg, by material pair; D ≥ 1 → split
```
- Rolling stops without a rolling-friction term [I]: each plastic edge impact on a polyhedron throws away rotational energy. A cube keeps only about 6% of its KE per edge; rocks with more facets lose less, so they keep rolling only on steep slopes, matching the owner's ruling.
- RAMMS ground table [V]: per-category μ_min, μ_max = 2, β, κ, ν, ranging from moor (0.20 / 50 / 1 / 0.9) to bedrock (0.80 / 200 / 4 / 0.3).
- Size: smaller rocks lose more energy per mass (ΔE ∝ m^−0.7 [V]). On slopes, big equant rocks run farthest [V]. "Big rock hits and stops" holds on flat ground at low speed [I].
- Dent threshold [I]: static pressure ≈ ρgL, about 50 kPa for a 2 m block, the same order as soil cohesion (5–65 kPa).
- Trees [I]: a 20 m trunk's first free bending mode is about 4–5 Hz, which is the wiggle. Treat the crown as an "extra soft" contact zone (high ν) for the instant settle. Stems absorb most rock-impact energy [V, Lundström].
- What games do wrong [V/I]: restitution thresholds, spheres with no rolling friction, raised gravity plus damping, inflated inertia, ω clamps, 60 Hz steps against 5–20 ms impacts, and a 0.5 s wait before sleeping.

**Risks:**
- Cost is unmeasured: about 300 bodies × 5 µs per 2 ms substep. It needs sleeping or threads, and a spike.
- μ_max = 2 is calibrated for RAMMS' Moreau solver; it is untested in a PGS solver.
- The parameters come from 5–30 m/s rockfall; low-speed 1–3 m/s drops may need different values.
- q_ult, fragmentation and tree-damping values have no source.
- Nobody has compared this model against video, which is the owner's actual bar.
## R2. Fragment shape and the 30° rule (landed)

**Finding:** 3D Voronoi is the wrong statistics for fragments, and that mismatch is where the slivers come from.
- Voronoi cells average about 15.5 faces and 27 vertices.
- Real fragments average about 6.6 faces and 8.9 vertices (Domokos 2020, "Plato's cube" [V]), which is what repeated binary splits produce.
- So fracture should be **binary splits along a perturbed plane**, not Voronoi shatter.

**Representations compared:**
| Representation | Verdict |
|---|---|
| Level-set DEM | Highest fidelity, can split [V], but meshing it gives the blob look. |
| Polyhedral DEM | Sharp vertex contacts are fragile. |
| Spherical harmonics, superquadrics | Rounded and blobby; no fracture. |
| Clumped spheres | Bumpy fake roughness. |
| Sphero-polyhedra (Alonso-Marroquín 2008 [V]) | Angular core plus a corner radius r; smooth contacts, O(N) with neighbour lists. |
| Müller 2013 VACD [V] | Runtime local fracture patterns with island detection, but the patterns are Voronoi. |

Houdini's material fracture [V] uses two sliver fixes worth copying: noisy cut surfaces, and clustering small cells into larger chunks.

**Proposal:** two representations per piece.
- **Sim:**
  - 1–4 convex cores (H-rep planes plus cached vertices) with a Minkowski radius r per material.
  - Collision is GJK/EPA padded by r, so contacts are never knife edges.
  - r is Wadell's corner roundness [V], kept small for quarried stone.
- **Render:** a derived mesh.
  - Triangulate the cores, then chamfer every edge and bevel every vertex.
  - Remesh with a minimum-angle guarantee (Chew 1993 Delaunay refinement, 30–120° [I]).
  - Displace cut faces only, per material: a conchoidal cap with ripple rings, low-octave rock noise, or grain-aligned splinter ridges.
  - Sub-pixel roughness goes into normal maps filtered with Toksvig/LEAN [V].
  - At 5 px, render the bare core.

```odin
Core      :: struct { planes: [dynamic][4]f32, verts: [dynamic][3]f32, radius: f32 }
Piece     :: struct { cores: [dynamic]Core, material: Material_Id, mass: f32, render: Render_Mesh, cut_faces: [dynamic]Cut_Face }
Cut_Face  :: struct { plane: [4]f32, kind: enum{Plane, Conchoid, Grain}, seed: u32, center: [3]f32, curv: f32 }
```

**Split algorithm:**
1. Choose the plane per material: through the impact for rock; snapped to the grain for wood.
2. Clip the cores exactly.
3. Run `chip_acute` on both halves.
4. Accept only if volume, aspect ratio and face count pass; otherwise jitter the plane and retry, up to 8 tries.
5. If nothing passes: no split, just record damage.

**How the 30° rule is guaranteed** (an invariant checked by a validator after every cut):
- On the core: every face angle and every dihedral angle is ≥ 30°.
  - `chip_acute` truncates a violating vertex perpendicular to its bisector. A face corner of angle α becomes two corners of 90° + α/2, so a single tip becomes a small multi-corner facet: the jagged tip.
  - A violating edge is chamfered the same way.
  - A minimum chip size stops the loop; if the piece still can't be cleaned, the cut is rejected and resampled.
- On the render mesh: every triangle angle is ≥ 30°.

**Risks:**
- Chipping may not terminate or may cascade; needs a cap plus a property test over about 10⁵ random cuts.
- Glass and flint shatter needs radial patterns, each piece run through the validator.
- A single convex core can't be L-shaped; multi-core pieces need the render mesh built on their union.
- The chamfer width must be ≥ r, or a visible gap appears between the sim contact and the render surface.
- The DEM cost figures are from search snippets only.
- r > 0 slightly rounds the contacts between stacked blocks, which may hurt stacking stability; spike it.
## R3. What the ground is made of (landed)

**Finding:** geologists never store the ground as voxels. They store four compact descriptions and evaluate them at whatever point is needed:
- a scalar field whose level sets are the strata;
- fault frames with throw that decays away from the fault;
- statistical joint sets (a DFN);
- a regolith profile derived from terrain curvature.

All of them are cheap per point query (O(1) to O(sets)). A block is an integer tuple, so the edit store only records "block X removed or split by plane P".

**Sources and facts:**
- **Implicit geology [V]:** GemPy and LoopStructural interpolate contact points and orientation poles into a scalar field Φ; the strata are thresholds on Φ. Faults are structural frames with decaying displacement, and folds are fold frames. The fit is offline; at runtime only Φ is evaluated [I].
- **DFN [V]:**
  - Each joint set has a Fisher orientation, a power-law size distribution, an intensity P32 and a termination %.
  - UFM/Davy: large fractures stop smaller ones, which produces T-intersections. Random DFNs give X-intersections and don't match field trace maps.
  - 3DEC literally cuts its blocks from the DFN.
  - Block size emerges from the sets: Jv = Σ1/Sᵢ and Vb = β·Jv⁻³, with β ≈ 36 (range 27–1000).
- **Rock-mass descriptors:** GSI (Hoek 2013, GSI = 1.5·JCond89 + RQD/2 [V]) and Q (RQD/Jn = block size, Jr/Ja = joint friction) work as authoring knobs that map onto DFN parameters [I].
- **Soil [V]:**
  - Production function de/dt = P₀e^(−kh), with P₀ ≈ 0.05–2 mm/yr and k ≈ 2–4 m⁻¹.
  - At steady state soil is thin on convex ridges and thick in hollows [I].
  - Catena: soils change predictably downslope.
  - ISRM weathering grades I–VI; corestones appear at III–IV.
- **Games [V]:**
  - Peytavie 2009 "Arches" uses 2D grid material stacks (with caves as air layers) and stabilises them by angle of repose. Its rocks are Voronoi, which breaks the owner's rule.
  - Dwarf Fortress has 4 layer classes.
  - Cordonnier 2016 builds terrain from uplift plus stream-power erosion.

**Proposed primitives** (agent's sketch, abridged):
```odin
Unit      :: struct { phi_top: f32, mat: u8, bed_thick: f32, sets: [4]Joint_Set, n_sets: u8 } // pile sorted by phi_top
Fault     :: struct { origin, normal, slip: [3]f32, radius, throw, damage_w: f32 }
Joint_Set :: struct { normal: [3]f32, kappa, spacing, jitter, skip_p, persist_p: f32, older: u8 /*T-termination*/, rough_amp, rind_m: f32 }
Regolith  :: struct { P0, k, K: f32, horizon_frac: [4]f32 }
Deposit   :: struct { kind: enum{Alluvium, Colluvium, Talus, Clay_Lens}, poly: [dynamic][2]f32, thick: f32, mat: u8 }
Block_Id  :: struct { unit: u8, k: [4]i32 }   // slab index per joint set
Edit_Store :: map[[2]i32 /*64 m chunk*/] struct { removed: [dynamic]Block_Id, splits: [dynamic]struct{parent: Block_Id, plane: [4]f32}, soil_delta: [dynamic]f16, rubble: [dynamic]Stack }
```

**Block generation:**
- `plane(set, k)` is a pure hash: skip-probability, jitter and a Fisher tilt.
- `block_at(p)`: undo fault throw → find the unit → take the slab index per set → flood-merge across absent tiles (rock bridges, bounded radius) → apply edits.
- Mesh = clip each cell by its 2·S planes. Roughness is applied at render time only.
- Plug-and-feather = append a split. Small pieces become rubble stacks at the repose angle.
- Self-check: the mean block volume of a 20 m cube must be within 2× of β·Jv⁻³.

**Risks:**
- The terrain surface is NOT fully derived: erosion is global, so the heightfield is baked (about 32 MB at 1 m). Only the subsurface is sampled on demand.
- A smooth heightfield won't show joint faces on cliffs; steep chunks need heightfield ∩ DFN carve.
- The bounded flood caps block size.
- A jittered lattice is not a real spacing distribution, and doesn't give fracture corridors.
- Joint sets need to follow folds, and fault zones should raise joint intensity.
- Hash on integers only, for determinism.
- The cokriging authoring tool doesn't exist yet.
## R4. Multi-representation prior art / round trip (landed)

**Finding:** no shipped game does the full heightfield ↔ voxel ↔ rigid ↔ particle round trip; each does one or two conversions. The prior art makes the trip lossless by persisting canonical authoring state and regenerating everything derived:
- canonical state: material, identity, damage, and an ordered edit-command log;
- derived state: collision shapes, meshes, islands.

**Prior art:**
- **Teardown [V]:**
  - Many 10 cm voxel volumes, one grid per object; disconnected voxels become a new body.
  - No structural integrity; the author doesn't know how to do it at that voxel count.
  - Quicksave = RLE voxels (about 80 MB for 0.5 G voxels); physics is regenerated on load, 100% reproducible.
  - Multiplayer syncs destruction as ordered commands; late joiners replay the history, and joining is disabled when it gets too long.
  - Destruction was rewritten in fixed point.
- **Noita [V]:**
  - Pixels convert to Box2D bodies via marching squares → Douglas-Peucker → triangulate.
  - Each body pixel keeps its parent body plus a local position, so identity survives.
- **Red Faction Guerrilla [S]:** pre-broken meshes plus a stress model.
- **BeamNG [V]:** nodes plus beams, each with a deformation threshold (permanent) and a strength threshold (break); runs at 2 kHz; too-stiff structures explode.
- **Dwarf Fortress [V]:** unsupported tiles fall column by column and keep their material.
- **Chentanez & Müller [S]:**
  - 2010: a shallow-water heightfield sheds spray particles it can't hold, exchanging mass and momentum.
  - 2014: grid ↔ particles ↔ shallow-water equations.
- **Hybrid Grains [S]:** continuum interior with a DEM surface; 6.8× faster.
- **Determinism [V]:**
  - Box2D v3: islands are persistent, sleep on the island-minimum timer, and use no parallel union-find. Determinism needs fast-math off, FMA off, our own atan2, and a fixed merge order; free-list order changes creation order.
  - Jolt: the cross-platform deterministic mode costs about 8%, and BodyIDs must match.

**Persist when a region sleeps:**
- canonical geometry and composition;
- identity (id, parent, ownership);
- damage (BeamNG suggests two scalars: plastic and break);
- broken bonds, stored as "opened" bits on joint planes rather than per-voxel bonds [I];
- determinism state (sleep timers, creation order, ID allocator).

No game persists residual stress; fold it into damage [I]. Storage = edit log, compacted into a snapshot once it passes N entries.

**Granular regime [S/I]:**
- Inertial number I: below 10⁻³ is quasi-static (columns); 10⁻³ to 10⁻² is dense flow; above that is collisional (particles).
- Rigid bodies above about 0.2 m or 10 kg (visible at villager zoom).
- Dust = render-only points whose mass is credited back to the columns.
- Skip MPM: unproven on CPU at km scale.

**Proposed ladder:**
| Rung | What it is | Promoted by | Demoted when |
|---|---|---|---|
| R0 | Layered columns | base rung | — |
| R1 | Rock bricks: voxels + damage + joints | dig, cut, or overhang | its mesh is freed when far |
| R2 | Bodies | disconnected component, felled log, large clump | — |
| R2z | Dormant record: id + transform + edit log | — | rebuilt by replaying the edits |
| R3 | Grains | excavation, chipping, slope above repose | deposited by volume |
| R4 | Dust | — | — |

**Worked example (3 m block):**
1. A split edit opens the joint plane, and a flood fill promotes about 17 t to a Body.
2. Drag with rope; the rut under the sled becomes a column edit.
3. A ramp drop leaves a carve edit at the corner: ≥0.2 m pieces become a Body, the rest grains, the finest dust.
4. Settle; deposit the grains into columns.
5. After a week far away it is Dormant, and is rebuilt by replay on wake.

**Risks:**
- Volume conservation between grains and columns.
- A 17 t block vs a 70 kg worker is a mass ratio that needs substeps (TGS).
- A boulder rolling down a mountain wakes everything on its path: an unbounded spike.
- Float determinism.
- Edit-log compaction must replay identically.
- With no stress model, a half-mountain collapse is connectivity + joint planes, not mechanics.
- R1 as 10 cm voxels conflicts with R3's DFN blocks and with the 30° rule; to be resolved in synthesis.

## Synthesis v2 (proposed, not agreed; v1 had 28 blind-review findings and was rewritten)

### What the ground is made of

The ground is not voxels and not one SDF. It is **a geology function plus a sparse edit store**, evaluated on demand into a small set of primitives.

```odin
World :: struct {
    geo:    Geology,                 // KB of params: Units (Φ), Faults, Joint_Sets, Regolith (R3)
    soil:   Column_Field,            // 1 m columns of material layers on top of the rock; baked, then edited
    chunks: map[[2]i32]Chunk_Edits,  // 64 m; only touched chunks exist
    live:   Live,                    // awake Pieces, static (materialized) blocks, Grains, Ropes, Workers
}
Layer        :: struct { mat: Mat, thick_mm: u16, porosity: u8 }   // rock rubble keeps its material; bulked by porosity
Column       :: struct { rock_top: f32, layers: [4]Layer }          // rock_top < soil surface; rock itself is blocks
Chunk_Edits  :: struct {
    gone:    [dynamic]Frag_Id,       // fragment left its socket
    splits:  [dynamic]Split,         // Frag_Id + plane, in order -> children Frag_Id (path bit 0/1)
    opened:  [dynamic]Bond_Id,       // rock bridge broken, block still in place
    cols:    [dynamic]Col_Delta,     // soil column edits: dig, dump, rut, dent
    placed:  [dynamic]Piece,         // sleeping pieces outside their socket (built walls, dumped blocks), full state
}
Frag_Id :: struct { unit, fault_block: u8, k: [4]i32, path: u32, depth: u8 }  // block + split history
```

**The rock is materialized blocks, never a heightfield.** The 1 m column field holds *soil only* (layers with a `rock_top` floor).
- Wherever rock is exposed or edited, the surface is the set of DFN blocks.
- Blocks are materialized in a radius around any worker, awake body or camera-near cliff. The render-only copy is LOD'd.
- So quarry pits, tunnels and cliffs collide and render against real blocks. Removing a block removes it from the surface.

**One solid primitive: the rounded convex core.** Every solid is a Piece made of convex cores: a block in the cliff, a quarried block, a boulder, a chip of 0.2 m or more, a built wall stone, a log, a branch.
- A log is a faceted, tapered frustum: 8–12 sides, convex, so a cut is a plane clip and a notch is a second core.
- r always means corner roundness, never a radius.
- Cores are stored eroded by r, so the rounded hull equals the cell and neighbours never start interpenetrating.

```odin
Core  :: struct { planes: [dynamic][4]f32, verts: [dynamic][3]f32, r: f32 }
Piece :: struct { id: Frag_Id, mat: Mat, cores: [dynamic]Core,          // 1..N cores
                  bonds: [dynamic]Bond,                                  // internal bonds (compound mass, R4/Müller 2013)
                  cuts: [dynamic]Cut_Face, dmg_plastic, dmg_break: f32,  // two scalars (R4/BeamNG)
                  rests_on: [dynamic]Frag_Id,                            // support edges, kept while asleep
                  xform: Xform, vel: [6]f32, sleep_t: f32, awake: bool }
Bond  :: struct { a, b: u16, area, strength, dmg: f32 }                  // rock bridge or intact rock between cores
Joint :: struct { a, b: Frag_Id, anchor: [2][3]f32, break_moment, damping: f32 }  // tree segments, sled lashing
Rope  :: struct { pts: [dynamic][3]f32, rest: f32, ends: [2]Rope_End }  // particle chain (ropes toy)
Grain :: struct { pos, vel: [3]f32, r: f32, mat: Mat }                  // PBD; material gives cohesion and rolling resistance
Tree  :: struct { seed: u32, species: u8, lean: [2]f32, cuts: [dynamic]Cut_Face, rung: u8 }
```

**Static blocks are sleeping bodies** (Box2D style). Persistent joints are not bonds; they are friction contacts. Rock bridges and intact rock are bonds. Support is never decided by graph rules alone; it is decided by the contact solver, in a bounded region:
- After any edit, removal or motion, wake every block and Piece in `rests_on` or face contact with the change, up to a radius.
- The solver runs, and whatever doesn't move goes back to sleep.
- Bonds (union-find) only decide which blocks move together as one compound Piece.

This also covers built walls: removing a stone wakes whatever rests on it, including from `placed`.

### Axes

| Axis | Range | What it decides |
|---|---|---|
| Size | dust < 1 cm < grains < 0.2 m ≤ pieces ≤ compound masses | rigid vs granular vs dust (by size only) |
| Material | rock types / wood species / sand, loam, clay | split rule, r, cut-face style, contact law, cohesion |
| Bond state | intact / cracked (opened) / loose | edit kind |
| Motion | asleep / awake / placed | solver or record |
| Distance | near worker/body/camera vs far | blocks materialized; grains vs columns |
| Time | ms impact / s haul / days | substeps vs edit store |

| Matter | Far, at rest | Near or active |
|---|---|---|
| Bedrock | geology function (0 B) plus edits | materialized blocks (sleeping Pieces + bonds) |
| Rock ≥ 0.2 m, logs | `placed` Piece (full state) | awake Piece |
| < 0.2 m | column layer (material kept, porosity) | Grains |
| Dust | — | render-only points, solid mass credited to columns |
| Tree | seed (32 B); trunk frustum proxy near awake bodies | rods → segments → log Pieces |

### Algorithm vs data only

**Data only:** material tables (density, strengths, friction law (RAMMS category), q_ult, r, minimum chip size, cut-face style, cohesion, porosity, colours); joint sets, units, faults; regolith; species.

**Algorithms:**
1. **`block_at(p)`**, the R3 query.
   - No flood-merge: each cell stays its own block, and absent joint tiles become Bonds.
   - Curved unit contacts and faults clip the cell by their tangent plane at its centre, so it stays convex.
   - Fault side goes into `Frag_Id`.
2. **Validator + `chip_acute`** on *every* core ever produced, at materialization and at split.
   - Checks: face angles and dihedrals ≥ 30°.
   - Same-set plane tilt is bounded, and pinched slabs (thickness < minimum) merge into the neighbour block as a second core.
   - Chipped volume becomes grains or dust (mass conserved), or, at materialization, a core of the neighbour block (no void).
   - **3D termination is unproven; spike #1 is a property test over 10⁵ random cuts and blocks.**
3. **Render mesh:** clip the cores → chamfer → displace the cut faces → remesh with a minimum-angle guarantee (displacement comes *before* the remesh).
4. **`split`:** plane clip → validator → accept, or resample up to 8 times → otherwise only damage. Children get `path` bits.
5. **Contact solver (R1):**
   - Fixed 1–2 ms substeps; ε = 0; scar-hardening Coulomb friction; drag in contact; true inertia.
   - Core vs core: GJK padded by r. Core vs soil columns: triangulated column surface, padded by r.
   - Must survive a 17 t block against a 70 kg worker on a rope: soft-step/TGS. **Spike #2.**
   - μ_max = 2 is untested outside the RAMMS solver.
6. **Impact dispatch** by the material pair hit:
   - soil cell → dent (if pressure > q_ult);
   - rock block or Piece → `dmg_break` accumulates → `split` or chip;
   - wood → splinter / segment joint breaks.
7. **Support wake:** bounded radius, `rests_on`, solver decides (above). If the bounded search hits its cap, the region counts as connected. ponytail: half-mountain collapse is bounded by the materialization radius; refine if the owner wants it bigger.
8. **Granular:**
   - PBD grains with per-material cohesion and rolling resistance.
   - Rendered as a per-material surface mesh (soil toy), never as spheres.
   - Columns ↔ grains by repose angle and inertial number; the conserved quantity is solid mass, and the layer thickness is bulked by porosity.
9. **Trees (R5):**
   - Segments are frustum Pieces joined by `Joint`s; the hinge comes from the notch; the crown uses an extra-soft contact zone.
   - Standing trees near awake bodies get a static trunk proxy; a hit over the threshold promotes the tree to rung 1.
10. **Hauling:** Rope particle chains pinned to Pieces and Workers; workers apply bounded pull forces; a sled is a Piece lashed with `Joint`s.
11. **Sleep / wake:** fully deterministic IDs and order. A sleeping Piece keeps its full state in `placed`, so the round trip is exact.

### Promotion / demotion

```
geology fn ──materialize (radius)──▶ sleeping blocks ──wake (edit/contact)──▶ awake Piece ──settle──▶ asleep ──leave socket──▶ placed
     ▲            (render-only LOD copy far)            │ split/chip → Pieces + Grains (+ dust credit)
     └── un-materialize if untouched (edits kept) ──────┘
soil column ◀── deposit (I < 1e-3, slope ≤ repose; material + porosity) ── Grains ◀── dig / chip / slope > repose
tree seed ──proxy near bodies──▶ hit or axe ──▶ rods ──fall──▶ frustum segments + Joints ──rest──▶ log Pieces (placed)
```

### Worked examples (all settling and look claims UNVERIFIED until spiked against video)
- **Quarry a 3×1.5×1.5 m granite block (about 18 t).**
  1. Workers near: the blocks are materialized.
  2. Plug-and-feather → `split` (children by path bits); bonds across the cut open.
  3. The bonded component is now just this block, and the wake check shows it is free once levered. It goes in `gone` and becomes an awake Piece.
  4. Lashed to a sled Piece (`Joint`) and roped to workers. The sled ploughs a scar, and the rut is a column edit.
  5. Dropped onto the ramp: on soil above q_ult it dents; onto rock, `dmg_break` → split or chip, and the chips become grains.
  6. Settles, sleeps, and is stored in `placed` with its full state.
- **Boulder down a mountain.**
  - A Piece over soil columns and materialized rock blocks; blocks materialize ahead of it within the radius.
  - Edge impacts plus scar friction set the runout. It dents soil and chips exposed blocks.
  - Wake cost depends on what it hits (talus can cascade). Unmeasured.
- **Tree.** R5 ladder.
  - Frustum segments, crown contact zone, joints break, branches become Pieces.
  - At rest: log Pieces in `placed`.

### Spikes before any building (to validate the model, not the game)
1. **`chip_acute` + validator property test:** does it terminate, and do the shapes look like the 6.6-face statistics?
2. **Heavy-contact toy:** the R1 law on a boulder down a slope, block drops, and a 17 t block on a rope with workers. Judged against real video by the owner.
3. **Materialization budget:** blocks per m² for a cliff at 30 fps.

### Fork answers (owner, 2026-10-07) and what they change
1. **Carving is a separate blueprint mode.**
   - The design tool is real and the mesh is saved. Applying it on the rock is faked: per section, an interpolated transition over time.
   - The result is a Piece with a `blueprint` render mesh plus progress. Its cores are a convex decomposition of the blueprint, so it collides and can still be broken by `split` (the 30° rule is waived for the carved surface).
   - No new primitive is needed.
2. **0.2 m / 1 cm cut-offs** accepted.
3. **Single player, exact replay** (for rewind and slow motion), and never any speed-up.
   - Determinism only has to hold within one binary on one machine; no cross-platform maths is needed.
   - Rewind = periodic snapshots + replayed player commands.
   - Slow motion = the same fixed tick, rendered interpolated.
   - The sim never has to run faster than real time, so the frame budget is fixed.
4. **No half-mountain events; object size is capped.**
   - `max_piece_mass` is a data knob. Default proposal: about 1000 t, roughly the largest stones ancient builders moved (Baalbek); the owner may change it.
   - A detachment that would exceed the cap does not happen: the mass cracks (bonds open) and stays put.
   - Explosives pulverise into small Pieces and Grains.
   - The materialization radius therefore only needs to exceed the largest allowed piece (about 20 m). Algorithm 7's ponytail ceiling becomes a rule.
5. **Soil tunnels: unanswered.** Default: tunnels in rock only, with open cuts in soil.

## Resume

Current proposal is the HTML design doc `docs/game/data-model.html` (supersedes Synthesis v2's choice of convex cores as the matter representation: now option C, voxels at 10 cm holding the matter plus crack planes from the rule; defined/computed/stored split). This file holds the research notes. Next: owner reviews data-model.html. Nothing gets built; tests only if the owner asks.
