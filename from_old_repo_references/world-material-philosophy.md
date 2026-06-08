# World & Material Philosophy

**Date:** 2026-04-03
**Status:** Working document — captures design convergence from rendering research + architecture discussions

---

## Core Principle

Everything in the world is an **object with material composition**. There is no "terrain" system. There is no special category for ground vs props vs resources. A mountain and a copper sheet are the same kind of thing — geometry with material data. One is big, one is small. The engine treats them identically.

---

## 1. Material Composition Model

### Voxels store material ratios, not labels

A voxel is NOT "this is granite." A voxel is:
```
{
    granite:    0.73,
    quartz:     0.20,
    copper_ore: 0.07
}
```

These ratios are gameplay-critical. They determine:
- **Fracture behavior** — material blend affects bond strength
- **Extraction yield** — smelt this rock, get X copper based on actual composition
- **Visual appearance** — ratios drive texture/material blending in the renderer
- **Shaping behavior** — pure copper is malleable, granite isn't

There is no "100% copper voxel" in nature. Workers CREATE pure materials through processing (smelting, refining). Raw materials are always blends.

### Data inheritance from parent object

Open question: should every voxel store its own composition, or inherit from the parent object?

**Uniform regions** (most of a granite cliff): Every voxel has the same composition. Storing it per-voxel wastes memory. The voxel could inherit from the parent object/region and only store overrides.

**Mixed regions** (ore veins, material boundaries): Voxels at boundaries have different compositions. These need per-voxel data.

**Possible approach:** Default composition lives on the parent object. Voxels store a delta or override only when they differ. Uniform regions cost ~0 bytes per voxel for composition. Boundary regions cost full composition data per voxel.

This is an optimization decision, not a philosophy decision. The API should always present per-voxel composition regardless of how it's stored internally.

---

## 2. Granularity Model — Voxels as Resolution, Not Representation

Voxels are NOT a separate representation from meshes. They are a **higher resolution view** of the same object.

```
Mesh (coarse):   "rock here, this shape, this composition"
                        ↕ gain/lose granularity on demand
Voxels (granular): "per-cell composition, per-bond damage, crack state"
```

The object doesn't "become" voxels. It gains granularity where interaction needs it and loses granularity where it doesn't.

### Lifecycle

1. **World layer (mesh):** Object exists as shape description + bulk material composition. Cheap to store, cheap to render.

2. **Interaction starts → gain granularity:** Zone around interaction point is voxelized from the shape description. Voxels inherit composition from parent. Bonds created between adjacent voxels. Now the physics system can operate at per-cell resolution.

3. **Interaction ongoing:** Bonds accumulate damage. Cracks propagate. Fragments separate (CSG-style mesh splitting or voxel extraction). Material is extracted, processed, shaped.

4. **Interaction ends → lose granularity (optional):** If no active interaction for a period, or voxel budget is exceeded, the zone can be resealed back to mesh. Damage state is baked into the modified shape. Composition changes are preserved in the world layer.

5. **Re-interaction → regain granularity:** If workers return, the zone re-voxelizes from the updated shape description. Previously accumulated damage could be stored as metadata and restored, or lost (design choice — see Voxel Lifetime below).

### Voxel Budget & Lifetime

- Active interaction zones consume from a global voxel budget
- When budget pressure hits, oldest/least-active zones are candidates for resealing
- Damage that happened long ago in game-time (e.g., 10+ game-hours) can be healed/resealed — design choice, not technical necessity
- The budget manager operates like an LRU cache — most-recently-interacted zones stay granular

---

## 3. When to Use Voxels vs Mesh Operations

Not every interaction needs voxel granularity. Decision tree:

| Interaction Type | End state known? | Method | Voxels? |
|-----------------|-----------------|--------|---------|
| Dynamite splits boulder along fracture planes | Partially — impact determines planes | CSG cut on mesh | No |
| Carve a decorative face from template | Yes — player placed template | CSG subtract on mesh, progressive blend | No |
| Grind surface flat | Yes — target is a plane | CSG subtract | No |
| Cut a block to specific dimensions | Yes — player specified dimensions | CSG cut on mesh | No |
| Pickaxe chipping with damage accumulation | No — crack path is emergent | Voxelize, bond physics, fracture | Yes |
| Structural collapse cascade | No — stress propagation determines result | Voxelize, bond physics | Yes |
| Arbitrary emergent destruction | No — physics-driven | Voxelize, bond physics | Yes |

**Rule:** If the end state is known, use CSG on meshes. If the end state depends on physics (damage accumulation, crack propagation, stress cascades), use voxels.

---

## 4. The Full Material Pipeline

The game simulates the complete material lifecycle:

### Stage 1: Extract
- Workers quarry rock from the world
- Rock fragments have material composition from their source
- A chunk of cliff face carries its actual granite/quartz/copper ratios

### Stage 2: Process
- Workers smelt ore, refine materials
- Composition ratios determine yield (7% copper ore → X units of copper)
- Processing creates NEW materials (purified copper, bronze alloy)
- Output is a new object with new composition (potentially 100% pure if fully refined)

### Stage 3: Shape
- Workers forge, hammer, bend, cast, carve shaped materials
- This is real-time mesh creation/deformation
- A copper ingot gets hammered into a sheet, bent into an angle, cut to size
- A stone block gets carved into a column, a decorative element, a building block

### Stage 4: Build
- Workers assemble shaped pieces into structures
- Mortar, join, weld, stack
- The structure is now a new compound object in the world

Every stage produces real geometry through physical actions. Workers are 3D modelers operating through gameplay.

---

## 5. Shaped Material Dimensions — The Crafting Grid

When workers shape materials (cut a plank, forge a sheet, cast a block), the dimensions are **finite but flexible.**

**Not arbitrary:** Dimensions snap to a grid — e.g., 1cm increments.
**Not fixed:** Players choose from the grid — 10x10cm, 11x10cm, 12x10cm, etc.
**Constrained:** Angles and thicknesses have finite options that make physical sense.

This means the set of possible shapes is large (thousands to hundreds of thousands of dimension combinations) but enumerable. 

### Open question: pre-generate or on-the-fly?

**Pre-generate a catalog:**
- Generate all valid dimension combinations at build time
- Workers select from catalog
- Guaranteed consistent meshes
- Storage cost for the catalog (but meshes are simple geometric primitives — very compact)

**Generate on-the-fly:**
- Worker specifies dimensions, mesh is created in real-time
- No catalog needed
- Parametric mesh generation (box, cylinder, sheet = trivial to generate)
- More flexible, less storage

**Likely answer:** On-the-fly generation for simple shapes (boxes, sheets, cylinders, wedges). These are parametric primitives — generating a 12x10x2cm box mesh at runtime costs nothing. Pre-generation only matters for complex carved/sculpted shapes, which are unique anyway.

---

## 6. Rendering the Hybrid

At any moment, the world contains:
- Mesh objects (world layer — most of the world)
- Partially-voxelized objects (active interaction zones)
- Pure voxel zones (heavy interaction areas)
- Shaped material objects (crafted items — simple mesh primitives)
- Fragments in transit (physics objects)

### Why triplanar texturing unifies all of this

Triplanar texturing projects materials in world space. It does not care whether the surface came from:
- A world-layer terrain mesh
- A voxel extraction (marching cubes / greedy mesh)
- A CSG-cut mesh face
- A parametric crafting primitive

All surfaces get the same material appearance because projection is based on world position and normal, not UV coordinates. Fresh fracture faces, carved surfaces, ground-flat planes, and original cliff faces all look correct without any UV authoring.

### Boundary stitching

Where a mesh transitions to a voxelized zone, the boundary must be seamless:
- Normals must be continuous across the boundary
- Material composition must match at the seam
- The renderer must handle both representations in the same frame

This is a solvable problem (similar to LOD stitching in terrain systems) but needs explicit engineering.

---

## 7. What Makes This Novel

No shipped game connects all of these:

| Capability | Closest existing game | What they lack |
|-----------|----------------------|---------------|
| Voxel destruction | Teardown, Deep Rock Galactic | No material composition, no processing pipeline |
| Material processing | Factorio, Satisfactory | Abstract resource counters, not physical materials |
| Freeform building | Minecraft, Valheim | Block-based, no continuous geometry |
| Mesh deformation | Blender (DCC tool) | Not a game, not real-time gameplay |
| Carving/sculpting | No game | — |
| Material composition driving gameplay | No game | — |

The full pipeline — extract real material → process based on actual composition → shape into real geometry → build with physical pieces — has not been built as a unified real-time system in any shipped game.
