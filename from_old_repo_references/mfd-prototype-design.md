# MFD Prototype: Base Layer Design

## 1. Prototype Charter

Build a tiny hybrid material-field prototype whose sole purpose is to prove that arbitrary carved matter can become seamless, damageable, buildable structure through a promote/demote bridge driven by material-state physics.

### North Star Sentence

"A player can make arbitrary geometry from world material, use it as real structure, and later damage it back into matter, without obvious seams."

### What Success Looks Like

The prototype is successful if it shows four things:

1. **Fabrication works** — the player can carve arbitrary useful shapes out of world material
2. **Promotion is seamless** — carved pieces become cheap rigid entities without feeling like they changed "kind"
3. **Damage is reversible** — a promoted piece can demote locally or fully when struck, cut, or broken
4. **Damage state matters** — damaged material breaks easier without bespoke per-object logic. (Wet/heated/moisture are future CA extensions, not prototype scope.)

### Non-Goals (First Prototype)

- Full planet/world scale
- Full weather system
- Large populations
- Final rendering style
- Perfect fluid simulation
- Arbitrary everything-always-destructible at game scale

---

## 2. World Model

### 2.1 Flat Regional World

Realistic flat region (~10x10 square miles, real human scale). Not a planet. This removes curvature, cube-sphere seams, planetary streaming, and coordinate headaches — none of which help prove the material-field idea.

Most of the world is in a cheap resting representation. Only a small active high-fidelity simulation bubble around the player and around important disturbances is live. Three numbers matter more than total world size:

- **Active simulation radius** — how far from the player (or disturbance) is the field live?
- **Base terrain resolution** — the resting representation's fidelity
- **High-detail field resolution** — voxel size near active interaction

These three numbers are TBD and will be informed by the prototype's performance findings.

### 2.2 Two Representations, One Ontology

**Field mode** (static, attached matter):
- Sparse adaptive material field
- Used for: terrain, attached masses, carving, local deformation, fracture, erosion, water interaction
- Active cells only — everything else sleeps

**Promoted mode** (dynamic, detached matter):
- Rigid entities derived from detached coherent field regions
- Used for: carrying, stacking, transport, buildable blocks, logs, beams, slabs

**Key rule: the field is for attached matter. The moment a coherent region detaches, it promotes to an entity.** No "detached but still voxels" middle state. This resolves the rotation problem (voxels are axis-aligned and can't tumble) and makes the architecture much cleaner.

The point is not to avoid transitions. The point is to make transitions player-invisible.

### 2.3 Cell Data

Each active field cell stores:

```
VoxelCell {
    uint8_t  material_id;   // indexes into material table
    uint8_t  damage;        // 0-255, accumulated wear
    uint16_t flags;         // active, surface, boundary, etc.
}
```

4 bytes per cell. Deliberately minimal. Physics lives in the material table, not per-cell.

Future extensions (not prototype): moisture, temperature, plastic strain, orientation/anisotropy for wood or layered rock. These would be sparse overlays on active cells only, not stored for every cell.

### 2.4 Material Packets

Each material ID indexes a reusable constitutive packet:

```
MaterialDef {
    float density;          // kg/m^3 (stone ~2500, wood ~600, water ~1000)
    float stiffness;        // Pa — resistance to elastic deformation
    float yield_strength;   // Pa — stress threshold before fracture
    float friction;         // coefficient, 0-1
    float damping;          // viscosity / energy dissipation

    // CA transition rules (future, not prototype):
    // moisture_absorption_rate, thermal_conductivity, erosion_threshold, etc.

    // Promotion hints:
    // min_cells_to_promote, stability_frames_before_promote, etc.
}
```

Prototype materials: stone, wood, soil, air, water (5 total).

**Important: material table properties do NOT map 1:1 to XPBD parameters.** There is a discretization layer that converts material stiffness + cell size + neighbor topology into per-bond XPBD compliance. This conversion is:

```
alpha_bond = f(material_stiffness, cell_size, bond_type)
alpha_tilde = alpha_bond / dt^2
```

The function `f` accounts for the fact that a 5cm voxel bond and a 20cm voxel bond with the same material should produce the same macroscopic behavior. This is the "honest conversion layer" — material IS the constraint, but through a principled mapping, not a raw lookup.

---

## 3. Simulation Math

### 3.1 Local State

For each active cell `i`:

```
s_i = (material_i, z_i, x_i, v_i)
```

Where `z_i` is internal state (damage, future: moisture, temperature, plastic strain).

### 3.2 Bond-Based Constraints (Not Cell-Based)

**Critical refinement:** Fracture is a bond/connection failure between neighboring cells, not "this cell turned into air." Each active neighbor pair has an implicit bond whose properties are derived from both cells' materials:

```
bond(i, j) = {
    compliance:  derive_compliance(material_i, material_j, cell_size)
    yield:       min(yield_i, yield_j)
    accumulated_stress: tracked per bond (or derived from cell damage)
}
```

When a bond's accumulated stress exceeds yield → the bond breaks. The cell still exists; it just lost a connection. This means:

- Carving = breaking bonds (tool applies stress exceeding yield)
- Fracture from impact = bonds breaking where stress concentrates
- Erosion = gradual bond weakening from material state (moisture reducing yield)

A cell becomes "air" only if ALL its bonds break and it has no material left — which is the removing-material case (digging, chiseling away chips).

### 3.3 XPBD Constraint Solve

For each active bond `b` between cells, the block XPBD update:

```
(J_b * M^-1 * J_b^T + alpha_tilde_b) * delta_lambda_b = -(C_b(x) + alpha_tilde_b * lambda_b)
```

Where:
- `C_b(x)` = constraint violation (how far from rest distance)
- `alpha_tilde_b = alpha_b / dt^2` = scaled compliance from material
- `lambda_b` = accumulated Lagrange multiplier (stored per bond)
- `J_b` = constraint Jacobian
- `M` = mass matrix (from material density * cell volume)

One iteration per substep, many substeps per frame ("Small Steps" principle).

### 3.4 State Evolution

After the local solve, update internal state:

```
z_{n+1} = state_update(z_n, delta_lambda_b, environment)
```

Examples:
- High bond stress increases cell damage
- Damage lowers yield strength of bonds touching that cell
- (Future: water increases moisture, moisture changes friction and stiffness, heat lowers moisture)

This is the CA + mechanics unification: material state modifies constitutive behavior directly, not through a separate system.

### 3.5 Coarse Correction

One coarse-grid or octree correction pass per frame for low-frequency/global coherence. Without this, large rigid-ish masses (cliffs, heavy stone bodies) communicate too slowly through purely local updates. The correction propagates "this whole slab should move together" information that local bond-by-bond solving would take hundreds of iterations to achieve.

For the prototype: may be skippable if the field is small and everything heavy promotes immediately. But the design should account for it.

---

## 4. Simulation Loop

Each fixed substep:

```
1. Inject external inputs
   - Tool strikes, gravity, character forces
   - (Future: rain/water inflow, temperature changes)

2. Update local material state
   - Damage accumulation from previous substep's stress
   - (Future: moisture, temperature, phase transitions)

3. Derive local bond operators
   - For each active bond: compliance from material + state + cell size
   - Update yield thresholds based on damage/moisture

4. Solve active field cells
   - One XPBD iteration per substep (Small Steps)
   - Only active cells and their bonds

5. Coarse correction (if needed)
   - Global coherence pass

6. Detect topology changes
   - Bonds that exceeded yield → mark broken
   - Connectivity scan near broken bonds → find detached regions

7. Promotion/demotion evaluation
   - Detached regions → immediate promotion
   - Struck promoted entities → conditional demotion

8. Generate events
   - Bond fracture → cracking sound (material-pair lookup)
   - Entity contact → impact sound (material-pair lookup)
   - These are material events, not object-script events

9. Sleep inactive regions
   - Cells with no velocity, no damage change, no neighbor changes → sleep
```

---

## 5. The Bridge: Promote / Demote

This is the center of the prototype and the central hard problem.

### 5.1 Promotion

**Trigger:** Connectivity scan finds a detached coherent region (not connected to grounded terrain).

**Promotion happens immediately on detach.** No "detached but still voxels" state. The field is for attached matter; anything that moves freely is an entity.

**What promotion produces:**

1. **Canonical local frame** — origin at center of mass, axes aligned to principal inertia directions
2. **Extracted surface mesh** — for rendering and collision (sharp-feature-preserving algorithm, swappable)
3. **Mass, center of mass, inertia tensor** — computed from cell positions + material density
4. **Latent material snapshot** — the voxel data frozen and stored with the entity. This is what gets stamped back on demotion.
5. **Failure metadata** — material type, yield threshold, fracture law. The entity "knows" what it's made of and when it should break.
6. **Persistent identity** — this is the same block the player carved. Carries ownership, name, placement meaning through the transition.

**What changes in the grid:** The promoted cells become air. The entity now owns that matter.

### 5.2 Demotion

**Trigger:** Promoted entity receives contact impulse or tool strike exceeding its material's yield threshold.

**Two demotion modes (prototype uses full; local is the long-term goal):**

**Full demotion (prototype):**
1. Stamp the latent voxel snapshot back into the grid at entity's current position + orientation
2. Remove the entity
3. Apply impact damage to relevant cells/bonds
4. Solver handles fracture naturally next substep
5. Resulting fragments promote again once they settle

**Local demotion (future):**
- Only stamp back a local region around the impact point
- The rest of the entity stays promoted
- A corner gets chipped without the whole block exploding back to voxels
- Requires partial voxel snapshots and entity mesh updates

Even if the prototype uses full demotion, the design explicitly plans for local demotion as the intended long-term direction.

### 5.3 Continuity Contract

The player must feel like it is the **same thing** before and after promotion:
- Same shape (within voxel resolution)
- Same material (same color, texture, physical behavior)
- Same damage history (a cracked block stays cracked)
- Same meaning (the block they carved and named is still that block)

This continuity is more important than any single solver detail.

---

## 6. Prototype Scene

### Scene 1: Core Loop (tiny, 64^3 grid)

- A stone outcrop attached to terrain floor
- A wood mass (trunk section)
- A soil patch (lower yield than stone — tests material-dependent fracture)
- One loose boulder (starts as promoted entity)
- Player cursor with: chisel (remove cells), strike (apply impulse), carry (pick up promoted entity), place
- *(Water and mud deferred — prototype scope is damage state only, not moisture/CA)*

**Required test loop:**

```
1. Carve a stone block from parent outcrop (chisel away surrounding cells)
2. Block detaches → immediate promotion
3. Pick up promoted block → carry
4. Place on terrain → stack
5. Carve and stack several more blocks
6. Tumble boulder into the stack (apply impulse to boulder entity)
7. Observe: which blocks survive (stay promoted) vs which demote (stress > yield)
8. Demoted blocks fracture → fragments re-promote once settled
9. Optionally re-carve damaged blocks
```

### Scene 2: Stacking Benchmark (early addition)

Three or four promoted blocks stacked on each other, then hit by another promoted body. This is the first place where the system either becomes believable or falls apart:

- Do stacked blocks rest stably via friction?
- Does impact propagate correctly through the stack?
- Does the right block break (the one that was hit, not a random one)?
- Do fragments behave physically after demotion?

---

## 7. Rendering Rule

Do not let the rendering algorithm define the architecture.

The field is simulation truth. Surface extraction is a swappable presentation layer.

Prototype rendering requirements:
- No visible grid signature
- Preserve sharp fabricated edges
- Different materials read differently (color/texture)
- Rendering is downstream of simulation, not the other way around

For the prototype: bare-minimum shaded mesh is fine. Visual polish comes later.

---

## 8. Engine vs Game Split

Keep the engine lean. Prototype goes in the game layer.

**Engine-level (`ultimate-engine/`):**
- Jobs, math, profiling, testing harness, generic containers

**Prototype/game-level (`ultimate-flat/`):**
- Material packets and definitions
- World field (voxel grid)
- Bond-based XPBD solver on the field
- CA rules and state evolution
- Promote/demote pipeline
- Fabrication logic (carving, carrying, placing)
- Scene setup and benchmarks

Extract truly generic parts to the engine later if they prove stable. Prove the research loop before turning it into permanent engine surface area.

---

## 9. Falsifiable Questions

These are the questions the prototype must answer:

| # | Question | If NO → |
|---|----------|---------|
| 1 | Can arbitrary carved geometry become useful buildable matter without ugly seams? | **Stop.** Architecture is dead. |
| 2 | Can promoted pieces preserve enough latent material truth to damage believably? | **Stop.** Bridge doesn't work. |
| 3 | Does active-cell simulation keep cost bounded to interesting regions? | Rethink scale assumptions. |
| 4 | Does the coarse correction materially improve large-mass coherence? | May not need it at prototype scale. |
| 5 | Does damage history materially change later behavior? (A cracked block breaks easier next time) | Architecture may be intellectually beautiful but not worth shipping. |
| 6 | Is the bridge simpler than all the bespoke systems it replaces? | Same — not worth the complexity. |

Questions 1 and 2 are kill switches. Questions 3-6 inform the path forward.

---

## 10. Locked Provisional Defaults

These are locked for the prototype. Change only after measurement, not speculation.

### D1. Bond Storage: Explicit

Explicit bond data structure. Each bond stores: compliance, force, lambda, broken flag, rest distance, yield force, two cell indices. Cost is ~20 bytes per bond, ~3 unique bonds per interior cell (each cell participates in 6 bonds, but +x/+y/+z generation stores each bond once). At 64^3 = 262K cells, worst case ~15MB. Acceptable for prototype. Required for proper bond-based fracture tracking.

### D2. Detach → Promote: Instantaneous (Same Substep)

Connectivity scan runs inside the substep, after bond breaking, before the next solve iteration. A detached region never exists as "free voxels" — it promotes within the same frame it detaches. This requires the substep order: solve → break bonds → connectivity scan → promote. No ambiguity, no voxels-in-flight.

### D3. Demotion: Full Only

When a promoted entity demotes, the entire voxel snapshot stamps back into the grid. No partial/local demotion in the prototype. Simpler to implement, sufficient to prove the loop. Local demotion is the intended long-term direction but is deferred.

### D4. Coarse Correction: Off

No multigrid/octree global pass in the prototype. With immediate promotion on detach, large rigid-ish regions become entities (which have correct rigid body dynamics) rather than staying as field cells needing global coherence. Enable only if testing reveals a specific coherence failure.

### D5. Mesh Extraction: Render Mesh and Collision Mesh Are Separate Outputs

Render mesh: sharp-feature-preserving surface extraction (algorithm TBD, swappable). Collision mesh: simplified convex decomposition of the same voxel data. These are computed independently and can use different algorithms. For prototype: render mesh can be simple (even flat-shaded voxel faces initially), collision mesh can be AABB or convex hull.

### D6. Voxel Resolution: 5cm, Fixed

Start at 5cm cell size. A 30cm carved block = 6x6x6 = 216 cells. A 50cm block = 10x10x10 = 1000 cells. This is coarse enough to be fast, fine enough to have meaningful shape variety when carving. **Change only after measuring** — if 5cm feels too chunky for fabrication, try 3cm. If 5cm is too slow, try 8cm. Do not guess; measure.

---

## 11. Calibration Tests

Two calibration tests that must pass before Scene 1 is meaningful:

### C1. Resolution Independence (Split: Global + Local)

Resolution independence is two distinct claims, not one:

**C1-global: Bulk response convergence.** The same physical block under a distributed, quasi-static load should have roughly the same peak load and total work-to-failure at different resolutions. This tests the constitutive model and solver convergence — "does the material behave the same at the bulk level?"

**How to test (C1-global):** Create a 30cm stone cube at 5cm (6^3) and 2.5cm (12^3). Apply a uniform distributed load across the full top surface. Compare total peak force and absorbed work (area under force-displacement curve). Tolerance: within 20%.

**C1-local: Localized chipping efficiency.** Under the same localized tool energy and impact radius, a finer mesh should produce smaller fragments but should NOT remove wildly more total mass. This tests that the fracture model correctly makes fragment *size* resolution-dependent while keeping total material removal resolution-independent.

**How to test (C1-local):** Apply the same impulse energy to a single surface cell (pickaxe hit). Compare total removed mass and fragment count across resolutions. Fine grids may produce more, smaller chips — that's correct. But total removed mass for equal input energy should be within 30%.

**Why the split:** Fragment size is emergent from crack propagation, not authored. A finer mesh can express smaller chips (a pickaxe chipping stone), while a coarser mesh forces larger minimum fragments. "First bond breaks at the same force" is the wrong invariant for localized loading — it conflates bulk material response with minimum fragment size. A sharp pickaxe should chip small pieces; a broad hammer should loosen larger chunks; dynamite should create a crushed zone near the charge plus large slab detachments from crack propagation. All three are different stress inputs into the same system.

**Known solver issue:** Single-iteration XPBD has resolution-dependent stress propagation (longer constraint chains = worse convergence per substep). This is a real numerical artifact that compounds with the fragment-size effect. Possible fixes: multi-iteration solve, resolution-aware compliance scaling, or iteration count scaling. Treat compliance retuning as a last calibration step, not the first fix — baking solver error into material constants risks passing one benchmark for the wrong reason.

### C2. Promote/Demote Equivalence

A block should fail in a similar way whether it is still attached in the field or already promoted and then demoted under impact. If field-attached stone breaks cleanly but the same stone after promote→demote→impact shatters into dust (or vice versa), the bridge is lying to the player.

**How to test:** Strike an attached stone outcrop with X force, observe fracture pattern. Then carve an identical block, let it promote, demote it with the same force, observe fracture pattern. They should be qualitatively similar.

### C3. Stack Stability

Promoted stack of 4 blocks rests for 5 seconds with bounded drift (<5mm), bounded penetration (<2mm), and no block slides off. Tests the contact solver, not the bridge.

### C4. Demotion Conservation

Promote a block, rotate 45°, demote into empty space. **100% of cells must be placed — exact, not approximate.** Tests the rotation-snapping round-trip.

### C5. Orientation Independence

Same block, same force, applied at 0° and 45° to grid axes. Break force within 30%. Tests bond lattice anisotropy. If this fails, 6-neighbor bonds need diagonal augmentation before Scene 1.

---

## 12. Discretization Mapping (Provisional)

The conversion from material properties to bond XPBD compliance:

```
// For a bond between cells i and j with rest distance d (= cell_size for axis-aligned neighbors):
float bond_stiffness = min(material_i.stiffness, material_j.stiffness);

// Scale by cross-sectional area (cell_size^2) and inverse of rest length (1/cell_size)
// so that macroscopic behavior is resolution-independent:
float k_bond = bond_stiffness * cell_size;   // [Pa * m] = [N/m]

float alpha = 1.0f / k_bond;                 // compliance
float alpha_tilde = alpha / (dt * dt);        // scaled compliance for XPBD

// Yield: force threshold for this bond
float bond_yield_force = min(material_i.yield_strength, material_j.yield_strength) * (cell_size * cell_size);
```

**This formula is provisional.** It is the simplest mapping that has the right dimensional analysis for resolution independence (stiffness scales with cell_size, yield scales with cell_size^2 = cross-sectional area). Calibration test C1 will validate or invalidate it. Adjust after measurement, not before.
