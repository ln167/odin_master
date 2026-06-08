# World Operations & Representations

**Date:** 2026-04-03
**Status:** Working document — captures the deterministic vs emergent distinction and how it affects representation choice

---

## Core Distinction: Two Kinds of World Modification

Every modification to the world falls into one of two categories based on whether the result is known at the moment the action is initiated.

### Deterministic Operations (result known ahead of time)

The player gives a command. The output geometry is computable immediately. The worker executing it is performing a known transformation over time.

| Operation | What the player does | What we know at command time |
|-----------|---------------------|------------------------------|
| Craft a copper plate | "Make a 20×10cm plate, 2cm thick, 30° bend" | Exact output mesh — parametric primitive |
| Craft a wooden plank | "Make a 2×4, 1.5m long" | Exact output mesh |
| Carve a face into cliff | Places a blueprint/stencil on the rock surface | Exact target shape — CSG subtract of stencil from rock |
| Grind a surface flat | Designates an area and a target plane | Exact target — CSG subtract of everything above the plane |
| Cut a block from cliff | Specifies dimensions for extraction | Exact cut geometry — box CSG subtract |
| Build a wall | Places blocks/materials in a pattern | Exact placement and final geometry |

**Key property:** The worker is executing a plan. The intermediate states (chipping, grinding, hammering) are visual theater — the actual geometric result was decided when the player gave the order.

**What this means for the engine:** The game computes the final mesh ONCE at command time. The worker's animation + particles + sound sell the process. The geometry transitions progressively from the current state to the target state. No physics simulation of individual chips needed.

### Emergent Operations (result NOT known ahead of time)

Something happens in the world and the outcome depends on real-time physics. Nobody — not the player, not the engine — knows the result until it happens.

| Operation | What triggers it | Why we don't know the result |
|-----------|-----------------|------------------------------|
| Dynamite blast | Player places and detonates | Crack pattern depends on material composition, existing damage, blast position, surrounding geometry |
| Arrow/projectile impact | Projectile hits surface | Chip shape depends on impact angle, velocity, material at point of impact |
| Log rolling downhill | Physics interaction chain | What it hits, how it bounces, what breaks — cascade of unknowns |
| Tree falling onto rock | Tree physics + impact | Where it lands, how it breaks, what it damages — depends on the specific collision |
| Structural collapse | Accumulated damage exceeds structural integrity | Which supports fail first, what cascades, where pieces land |
| Accidental damage | Worker drops something heavy, misses a swing | Unplanned impact with unpredictable result |

**Key property:** The result is emergent from physics. The engine must simulate the interaction and discover what happens. This is what makes the game feel visceral and real — you shoot a rock and a piece chips off in a way that makes physical sense based on the angle, the material, and the existing damage.

**What this means for the engine:** The engine needs volumetric data (material composition per cell, bonds between cells, accumulated damage) to simulate what happens. This is where voxels earn their keep — they provide the granular data that physics needs to determine crack propagation and fragment separation.

---

## The Three Representation Approaches

### Approach 1: Shape Descriptions (Geological Operations)

The world is described as a series of operations: `slab(20m, 8m) | fracture_planes(3) | strata(granite, shale) | erosion(0.3m)`

**For deterministic operations:**
- Carving: add a CSG subtract op to the description
- Grinding flat: add a plane-cut op
- Works well for geological and large-scale modifications
- Limitation: the description grows with each modification (but we said: apply destructively, evaluate, store result, discard op list)

**For emergent operations:**
- Cannot express arbitrary fracture results as geological operations
- A physics-driven crack pattern is not a "fracture plane" or "erosion" — it's an irregular, unique shape
- **Verdict: not suitable for emergent operations on its own**

**Best use:** Initial world authoring. Describing pristine geological features before anyone touches them. Agent-generatable. Compact. This is how the world is AUTHORED, not how it's MODIFIED.

### Approach 2: Signed Distance Field (SDF)

The world is described as a continuous field: distance-to-surface at every point in space. Can be analytical (from shape primitives) or sampled (stored as a 3D texture).

**For deterministic operations:**
- Carving: `field = max(field, -stencil_field)` — native CSG, one operation
- Grinding flat: `field = max(field, -plane_field)` — trivial
- Crafting primitives: box/cylinder/wedge SDF functions are well-known
- Result is applied destructively — the modified field IS the shape

**For emergent operations:**
- The SDF doesn't know where to crack. Physics must determine that.
- After physics determines the crack geometry, the SDF can be updated (subtract the crack volume)
- But physics needs volumetric data (composition, bonds) that the SDF doesn't store — SDF only stores distance-to-surface
- **Verdict: SDF alone is not sufficient for emergent operations. Still needs a physics layer (voxels or equivalent) to determine what happens. SDF can store the RESULT after physics is done.**

**Best use:** World layer storage format. Makes CSG operations native. Can be evaluated into mesh for rendering or sampled into voxels for physics. Modifications are destructive — the field is updated in place, no operation history.

### Approach 3: Mesh (Vertices + Triangles)

The world is described as explicit surface geometry.

**For deterministic operations:**
- Carving: CSG boolean subtract (stencil mesh from rock mesh). Harder than SDF but doable.
- Grinding flat: CSG cut with a plane. Standard operation.
- Crafting primitives: `create_box(0.20, 0.10, 0.02)` — trivial parametric generation.
- Result IS the new mesh. No history.

**For emergent operations:**
- Same as SDF: the mesh doesn't know where to crack. Physics must determine that.
- After physics determines crack geometry, CSG cut produces the two pieces.
- But physics needs volumetric data the mesh doesn't store.
- **Verdict: mesh alone is not sufficient for emergent operations either. Still needs a physics layer.**

**Best use:** What the renderer actually draws. What the player actually sees. The final output of any operation. Every representation ultimately becomes a mesh for rendering.

---

## Summary: Which Approach for Which Operation

| | Deterministic | Emergent |
|---|---|---|
| **Shape descriptions** | Good for initial authoring | Cannot express physics results |
| **SDF** | Excellent — CSG is native | Stores the result, but can't determine what happens |
| **Mesh** | Good — CSG works, parametric generation trivial | Stores the result, but can't determine what happens |
| **Voxels** | Unnecessary — result is already known | Essential — provides volumetric data for physics to determine crack paths, fragment separation |

**The conclusion:**

- **Deterministic operations** can stay entirely in mesh-land (or SDF-land). Compute the target, apply it, done. Voxels are unnecessary overhead.

- **Emergent operations** need voxels (or equivalent volumetric data) for the physics simulation. After physics determines the result, it's written back as a mesh (or SDF). Voxels are temporary.

- **No single representation handles everything.** The engine needs at least two: one for surfaces (mesh or SDF) and one for volumetric physics (voxels). The transition between them is the core engineering challenge.

---

## Game Requirements (Invariants)

These capabilities must work regardless of which representations we choose:

### Deterministic Creation

1. **Parametric crafting**: Player specifies dimensions on a grid (1cm increments). Worker produces the exact mesh.
   - Copper plate: 20×10cm, 2cm thick, 30° bend
   - Wooden plank: 2×4, 1.5m long
   - Stone block: 40×40×40cm cube
   - Dimensions are finite but flexible — thousands of valid combinations
   - Generated on-the-fly (parametric primitives, not pre-stored catalog)

2. **Blueprint carving**: Player places a stencil/blueprint on a surface. Worker carves toward that target.
   - The target shape is known at blueprint placement time
   - Worker chipping is visual theater — geometry transitions progressively toward target
   - Intermediate states can be interpolated or staged
   - Result: the carved surface IS the new mesh

3. **Surface preparation**: Grinding flat, smoothing, polishing.
   - Target is a mathematical surface (plane, curve)
   - CSG subtract of everything above the target
   - Progressive visual transition

### Emergent Interaction

4. **Projectile impact**: Arrow/rock/tool hits a surface, chip flies off.
   - Chip shape depends on angle, velocity, material composition at impact point
   - Must look physically correct — not canned, not pre-authored
   - This is the visceral core of the game

5. **Explosive fracture**: Dynamite splits rock based on material, existing damage, blast geometry.
   - Crack propagation through weakened bonds
   - Fragment count and shape are physics results
   - Large pieces become independent mesh objects
   - Small debris → particles (visual only)

6. **Cascade events**: Tree falls on rock, log rolls downhill, structural collapse.
   - Chain of physics interactions with emergent results
   - Each collision can cause further damage/fracture
   - Must resolve correctly even if camera isn't watching

7. **Accumulated damage**: Repeated hits weaken bonds before fracture occurs.
   - Damage state persists between interactions
   - Crack eventually forms along the weakened path
   - The crack path is emergent — not predetermined by the engine

### Material Properties

8. **Composition ratios**: Every piece of world has material composition (73% granite, 20% quartz, 7% copper ore).
   - Ratios drive fracture behavior, extraction yield, visual appearance, shaping behavior
   - No "100% copper" in nature — workers CREATE pure materials through processing
   - Composition is preserved through all operations (fracture inherits parent composition)

### Visual

9. **Triplanar texturing**: All surfaces — mesh, voxel-extracted, CSG-cut, parametric — use the same world-space material projection.
   - Fresh fracture faces show interior material immediately
   - No UV authoring required for any generated geometry
   - Seams between representations must be invisible

10. **Particle layering** (from Control's principle of granularity):
    - Real physics fragments for pieces that matter
    - Mesh particles for small debris
    - GPU particles for dust, sparks, pebbles
    - Decals for surface damage below fracture threshold
    - Sound driven by material at impact point
