# World data representations: exploration notes

**Status: PROPOSED.** These are Claude's answers and maps from the 2026-10-06 discussion. Nothing here is agreed until the owner says so. Agreed items move to `DESIGN.md`. Novelty claims ("never done") are unverified until a literature check runs; see Plan step 0.

## 1. Families

Each family below lists what it is, then the owner's take and Claude's answer.

1. **Surface mesh**
   - What it is: points + edges + triangles. It describes only the skin.
2. **Structured (grid-snapped) mesh**
   - What it is: the mesh is the primary primitive, but vertices lie only on lattice points and connectivity is stored explicitly. This is NOT the same as a mesh extracted from voxels.
   - Owner's take: owner's idea. "Regularity benefit + explicit connection info."
   - Claude: real and distinct. Known in simulation as structured grids, and as BCC tetrahedral lattices for volumes.
3. **Volume (tetrahedral) mesh**
   - What it is: fills the interior with tetrahedra. Used by FEM engineering simulation.
   - Owner's take: new to the owner; "might be usable."
   - Claude: tet faces are natural fracture surfaces, and tet edges are natural bonds.
4. **Regular voxels**
   - What it is: a uniform grid; neighbours are implied by index.
5. **Adaptive grids**
   - What it is: quadtree (2D), octree (3D), sparse voxel octree, voxel DAG, VDB. Cells subdivide only where detail is needed.
6. **Points / Gaussian splats**
   - What it is: points with no connectivity. Splats (2023) are soft, oriented blobs, rendered directly.
   - Owner's take: "rendering… actually it's data; is it an avenue?"
   - Claude: yes. PhysGaussian (CVPR 2024, verified) ran MPM physics directly on splats: one representation is both the render and the granular physics. Splats describe the surface by default; PhysGaussian already fills interiors using the opacity field.
7. **Particles**
   - What it is: points that **move with the matter** and carry mass, velocity and material (SPH, MPM, PBD).
   - "Move with the matter" means:
     - Particles *are* the matter. A boat riding the river carries its own sensor.
     - A grid is a buoy anchored in place, measuring whatever water flows past.
     - Moving-with is called Lagrangian; fixed-in-space is called Eulerian.
8. **Parametric surfaces (NURBS, subdivision surfaces)**
   - What it is: smooth maths patches (CAD).
   - Owner's take: "sounds like the goo."
   - Claude's correction: no. These are explicit *skins*. The goo is closer to implicit fields (#9, #10).
9. **Implicit fields: analytic or sampled SDF**
   - What it is: a function (or grid of values) giving distance-to-surface, or density, at any point.
10. **Neural fields**
    - What it is: a small network *is* the function you sample.
    - Owner's idea: hand-craft the world, then compress it in a special way by training/overfitting a network to that one world. Not procedural.
    - Claude: coherent. It exists for single objects and volumes (NeRF, Instant-NGP hash grids 2022, NeuralVDB 2023; cites to verify).
    - Two hard parts:
      - **Edits:** a trained network can't be cheaply edited. Edits would be residual patches on top, which is the same write-back problem.
      - **Query cost:** evaluating a network per sample is much slower than reading a grid. Hash-grid encodings make it GPU-fast.
11. **Height maps, single and layered**
    - What it is: one height per (x, y) means no overhangs or caves. Layered = several stacked heights, which gives strata and some caves.
    - Owner had thought of layered.
    - Claude: great for strata and a mostly-surface world. It fails at arbitrary 3D carving.
12. **Pure graphs**
    - What it is: connectivity only (bond network, load graph).
    - Owner's take: "depends how slow."
    - Claude: right. Min-cut and flood fill are fast on thousands of nodes and expensive on many millions, so graphs suit the coarse levels.

## 2. Axes, analysed one at a time

1. **What's described: skin / interior / all of space / connections.**
   - Skin is cheapest, but it can't answer "what's inside?"
   - Interior is needed for damage, stress and composition.
   - All-of-space (fields) answers every query but costs the most to store explicitly.
2. **Explicit vs implicit.**
   - Explicit: fast to read, costly to store and to change topology.
   - Implicit: tiny, edits compose (CSG), costs compute per query, and has no inherent "list of parts".
3. **Structure: arbitrary / regular / adaptive / continuous.**
   - Regular buys O(1) neighbours and simple threading.
   - Arbitrary buys exact shape with few elements.
   - Adaptive buys both, at the cost of complex code and traversal.
   - Continuous buys unlimited resolution but has no neighbours at all.
4. **Lagrangian vs Eulerian.**
   - Lagrangian: matter carries its own data, so motion is free and the data has no fixed home.
   - Eulerian: fixed cells, so moving matter must be re-gridded every step (smearing).
5. **3D vs 2.5D.**
   - 2.5D is about 1000× cheaper and handles most terrain.
   - It cannot represent overhangs, tunnels or carving.
6. **Value per sample: bit / scalar / many channels.**
   - The channel count multiplies memory.
   - Our goo needs at least: shape, material ratios, weakness, damage.
7. **Authored / procedural / learned.**
   - Authored is big and controllable.
   - Procedural is tiny but needs controllability work.
   - Learned is compressed authored data, but expensive to edit.

## 3. Combination map

Known occupants (family → axis values):

| Family | Describes | Expl/Impl | Structure | Lag/Eul | Dim | Values | Source |
|---|---|---|---|---|---|---|---|
| Surface mesh | skin | expl | arbitrary | Lag | 3D | attrs | authored |
| Structured mesh | skin/vol | expl | regular | Lag | 3D | attrs | authored/proc |
| Tet mesh | interior | expl | arbitrary | Lag | 3D | attrs | any |
| Voxels | interior | expl | regular | Eul | 3D | bit→multi | any |
| Octree/VDB/DAG | interior | expl | adaptive | Eul | 3D | bit→multi | any |
| Splats/points | skin | expl | arbitrary | Lag | 3D | multi | captured/learned |
| Particles | interior | expl | arbitrary | Lag | 3D | multi | sim |
| NURBS | skin | expl (parametric) | continuous | Lag | 3D | attrs | authored |
| Analytic SDF | space | impl | continuous | Eul | 3D | scalar | procedural |
| Sampled SDF | space | impl | regular/adaptive | Eul | 3D | scalar | any |
| Neural field | space | impl | continuous | Eul | 3D | multi | learned |
| Height map | skin | expl | regular | Eul | 2.5D | scalar | any |
| Graph | connections | expl | arbitrary | – | – | edge weights | any |

Terms (as explained to the owner): a **family** is a known representation (voxels, mesh, …); a **combination** is one value per axis. The axis explorer counts 1,920 combinations, of which known families occupy 64 (≈3%). Proposed nonsense test: a combination is nonsense if its values contradict (e.g. "connections only" + 2.5D height); otherwise it survives if you can write its struct and name the operation it makes cheaper.

Literature check (2026-10-06, research agent; URLs in the transcript, key ones below). Grades of the "rare/new" claims:

| Cand. | Grade | Closest prior art |
|---|---|---|
| A | overstated: well-trodden | Teardown (per-object voxel volume + own transform, chunks split into new objects); Guendelman/Bridson/Fedkiw 2003 per-body grid SDF; UE mesh distance fields |
| B | holds: rare in games | Discrete bond graphs ship (NVIDIA Blast stress solver, UE Chaos connection graph). Peridynamic springs (Levine 2014); "Breaking Good" fracture modes (Sellán 2023). **No min-cut over a continuous strength field found.** |
| C | combo unseen in games; "online re-fit is new" overstated | Neural texture compression (Vaidyanathan 2023); real-time neural radiance caching trains every frame (Müller 2021, ~2.6 ms); 3D Neural Sculpting local edits (2023) |
| D | overstated | PhysGaussian already fills interiors; VR-GS (2024) real-time XPBD on splats; GaussianFluent (2026) brittle fracture. World scale still open. |
| E | overstated | Molino/Bridson/Fedkiw 2003 adaptive BCC + red-green; Koschier 2014 adaptive tets for fracture; Pixelux DMM shipped in The Force Unleashed (2008). Gap: world scale. |
| F | overstated | Benes 2001 layered erosion; Štava 2008 GPU 4-layer erosion; VMV 2024 multi-layer heightmaps with overhangs. Narrow gap: layers advected horizontally (folding). |
| G | holds: not in games | Wrong precedent cited (GNS = particle dynamics). Closer: GNN crack propagation (Perera 2022), DeepFracture (2025), GNN block-stack stability (2024). |

Cite fixes: NeuralVDB is 2022 (arXiv) / 2024 (TOG), not 2023. BCC lattice is Molino/Bridson/Fedkiw 2003, not the 2004 virtual-node paper. Phase-field fracture refs: Francfort & Marigo 1998; Bourdin et al. 2000; CD-MPM (Wolper 2019) is the graphics bridge. Also missed: Müller 2013 real-time fracture (1M-vertex Roman arena, 30+ fps); Dreams (SDF world); Arches (Peytavie 2009, material stacks + implicit surface). Real-time MPM on one consumer GPU at our scale: unconfirmed.

Sparse / unusual cells that look promising for THIS game (original claims; see grades above):

- **A. Lagrangian implicit fields.** Each fragment carries its own small field in its body frame. Promotion to a rigid body is then "give this region its own transform"; there is no meshing step. Partial precedent: per-object SDFs in Lumen, Claybook.
- **B. Implicit connectivity.** A continuous field that stores *bond strength between neighbours* (the weakness field). Fracture = min-cut through the field. Closest known work: phase-field fracture, where the crack is a continuous scalar field. Rare in games.
- **C. Learned + interior + multi-channel + adaptive.** A neural field of shape + material ratios + weakness for a hand-crafted world, with edits as residual patches. Online re-fitting ("training while playing") would be new and risky.
- **D. Splats as physical matter.** Lagrangian, render-native particles that are also the MPM material. Precedent: PhysGaussian. Open: solid interiors, scale.
- **E. Adaptive structured tet lattice.** BCC tets, coarse far away and refined at events, with bonds = edges and fracture along faces. Precedent: virtual-node fracture (Molino et al. 2004). Adaptive + real-time + composition is the gap.
- **F. Moving layered height fields (2.5D Lagrangian).** Strata whose layers move with erosion and deposition. Precedent: sediment-transport erosion research.
- **G. Learned connectivity.** A graph neural network predicts fracture or collapse on the load graph. Precedent: learned simulators (DeepMind GNS, 2020). Not in games.

## 4. Promotion map (the actual problem)

The owner's point: most of the problem is *promotion between systems*. For each pair, the known algorithm:

| From → To | Known technique |
|---|---|
| SDF/field → surface mesh | marching cubes, dual contouring |
| mesh → SDF | distance transform / closest-point query |
| field → voxels | sample at cell centres |
| voxels → graph | adjacency (bonds = shared faces) |
| graph → pieces | connected components (flood fill) |
| pieces → rigid bodies | mass/inertia integrals over the piece |
| field → particles | sample in the volume (MPM init) |
| particles → grid/field | particle-to-grid transfer (P2G) |
| mesh → tet mesh | tetrahedralization (TetGen, fTetWild) |
| authored field → neural field | training (fit) |
| neural field → anything | sample, then use the row above |

Observation: **MPM is itself a promotion engine.** It moves particles to the grid and back every timestep. Its transfer math (P2G/G2P) is a candidate template for every promotion we need.

## 5. Plan: interactive toys (after compact)

The goal is learning: one interactive visual per family + per axis + promotions. These are standalone visuals in the browser, not game code.

0. **Literature check.** Before building, one research agent verifies the cites above (PhysGaussian, NeuralVDB, Instant-NGP, Molino 2004, phase-field fracture, GNS) and the "rare/unusual" claims for A–G.
1. **Format.** Single-file HTML per toy under `docs/game/toys/`, plus `index.html` linking them all.
   - Canvas 2D for 2D analogues (most concepts read better in 2D).
   - WebGL for 3D where needed.
   - Work offline: the owner wants nothing that needs the internet. Any library is vendored locally.
2. **One toy per family (12).** Each lets you poke it:
   - carve a hole
   - break a piece off
   - zoom
   - see memory cost
3. **Axis explorer.** Seven toggles that light up which families occupy the chosen combination, and highlight empty cells A–G.
4. **Promotion toys.** Field → mesh, voxels → graph → pieces, particles ↔ grid (P2G), and min-cut fracture on a weakness field (candidate B).
5. **Verification.**
   - Agents: each toy loads with no console errors and its interactions change state (headless browser).
   - Owner: judges whether it teaches the concept.

## Resume

Status: step 0 done (grades in §3). All 23 toys built and green on the headless gate (`bash docs/game/toys/check.sh`): f01–f12, axes, p1–p4 (p4 = candidate B), cA, cC–cG; entry point `docs/game/toys/index.html`. Gate proves no errors + state changes, not teaching value; the owner is reviewing them in a real browser. The gate now also loads each toy without `?selftest`; that pass was added after f07's startup crash (the animation loop ran before init) slipped past the self-test-only gate. f07 sand was also rewritten to substep position-based dynamics; it has no friction yet.

Recommended stack (proposed by Claude 2026-10-06, not agreed): the world is a sampled SDF (f09) with a procedural base plus sparse edited bricks. Blocks, carvings, trees and fragments each carry their own field plus a transform (A). Fracture is min-cut (B). Loose rubble and dirt are MPM (p3). Bulk earthworks use moving strata (F). Ropes are PBD particle chains pinned to bodies. The rigid-body/constraint solver is decided in the architecture phase. index.html marks these with ★ and a stack box. Built and green (30/30 on the full gate): r1-ropes-dragging.html (2D), and 3D WebGL2 versions 3d-f09-sdf-world, 3d-cA-fragments, 3d-p4-mincut, 3d-p3-mpm, 3d-ropes-dragging, 3d-cF-strata, linked from index.html under "3D versions of the picks". Known 3D limits:
- p4: falling pieces don't rotate their cubes and pass through the rock.
- cF: erosion is thermal slump only.
- p3-mpm: about 4 ms/step at 8k particles; sand reposes about 20°, not 40° (coarse grid); 2 substeps per frame by default.
- cA: sleeping stands in for resting contact; split slivers keep a full 55 KB grid.
- ropes: bodies have 3 DOF; workers are force points on the rope.
Owner ruling (DESIGN.md, 2026-10-06): every material fails its own way. Sphere carve/add in f09, 3d-f09, cA and 3d-cA is therefore the wrong edit operator for rock and wood, though it is still fine as a teaching tool for the field itself. Re-analysis under the material invariant (proposed by Claude, not agreed):
1. The material record becomes the primary schema. Per material: failure mode (brittle, fibrous, plastic, granular), strength, toughness, anisotropy, and chip/fragment shape rules. Q3 moves up to Q1 level.
2. Weakness must be directional: bedding-plane normals, joint sets, wood grain direction. A scalar weakness value (as in the toys) is not enough.
3. One impact input (energy + contact shape) feeds a failure function chosen per material:
   - rock: min-cut along oriented weakness, plus shell-shaped chips
   - wood: notches and splits along the grain, splinters
   - soil and clay: plastic deformation, MPM
4. Brittle fracture creates sharp facets, but a sampled SDF smooths them into blobs. Rock cut surfaces therefore need explicit sharp geometry: cut planes or polyhedral fragments, faceted rendering, no dual contouring or marching cubes on rock. This demotes "SDF world" from top pick to the bulk what-is-where container. Fragments (A) become faceted polyhedra rather than sampled grids. Face-aligned fracture (f03 tets, E adaptive tets) regains value.
5. Wake/promote depends on the material: rock becomes rigid faceted pieces plus rubble, soil becomes MPM, wood becomes a rigid body with splits.
6. The procedural base must be a geology model that outputs material plus oriented joints and bedding, so default weak points come from the world itself.

Brainstorm, "procedural bonded cell complex" (proposed by Claude 2026-10-06, not agreed): every solid is a complex of convex cells joined by bonds.
- The material sets the cell-shape statistics and the bond law:
  - rock: equant cells aligned to joints and bedding; brittle bonds
  - slate: plate cells
  - wood: long fibre cells; bonds strong along the grain, weak radially
  - clay: small cells whose plastic bonds stretch and re-form
  - sand: no bonds
- Untouched cells are a deterministic hash of position, so the world stays derived and untouched rock is 0 B. They subdivide on demand near an impact (resolution belongs to the event).
- Fracture is a min-cut over bonds, so cracks run along cell faces, giving sharp, irregular facets. Faces get world-space noise roughness, so the look is neither blocky nor smooth.
- Roman plug-and-feather quarrying is a gameplay fit: drill a line of holes to add a weakness plane, drive wedges, and the min-cut follows the line.
- Prior art: the bonded-particle model of rock mechanics (Potyondy & Cundall 2004), lattice/DEM fracture, Voronoi pre-fracture (Blast/Chaos), peridynamics. The lazy procedural hierarchy in a game is the unverified new part.
Material toys (all three now LINKED in index.html under "Material decides how it breaks"; a toy is linked only after gate ok AND a screenshot look-check: not blocky, not smooth): 3d-rock-fracture is LINKED (round 3: outcrop = union of convex blocks bounded by shared joint/bed planes, cells clipped by them; granite jointed columns, sandstone stepped beds, slate tilted slabs; bonded seams invisible, fresh fractures show facets; weak spots: sandstone ledges too straight so it reads like a stepped pyramid, one deliberate +x cantilever per material for the wedge demo, no joint hairlines), 3d-wood is LINKED (retuned: furrowed bark, pointed torn splinters, thin chips, wandering split, halves fall; `?shot&state=stand|notch|felled|split`; notch now an open 45° V), 3d-soil-clay is LINKED (round 3: sand poured into a 29.9° cone, drawn as a height field; loam clods; clay spade cut-plane tags so spits and the wall have crisp planar spade faces with striations, torn faces rough; weak spots: spit tops are the original ground and stay soft, striations always run along world y, no clay folds, sand is a smooth dune (true to sand, but owner to judge), default 2 substeps/frame = half real time). Quick shots without a shot mode: temp copy in %TEMP% with a `<script>` before `</body>` + chrome `--screenshot` (escape `&` in sed).

Proposed next toy (not yet agreed): rock chipping and splitting, wood chopping and splitting, and clay digging, side by side on one field, with faceted rendering.
3d-f09 was blank in the owner's browser. A nested `?:` for the box-wall normal fails ANGLE's D3D11 HLSL compile, while SwiftShader accepted it. It is fixed with a branch-free `step()`. The gate's normal-load pass now runs on the real GPU (`--use-angle=d3d11`), and it was proven to fail on the reintroduced bug. Next: the owner plays them; fix with tuning agents.

Finding (r1, 2026-10-06; architecture input): plain Gauss-Seidel PBD rope constraints read tension about 60× too high against a 15 t block, so they dragged it through static friction. r1 uses 3 Newton iterations per substep, each a tridiagonal solve along the chain (16 substeps, compliance 1e-7 m/N), and reads tension back as force on the bodies. Heavy-mass-ratio ropes need a direct or global solve, not naive PBD. The 3D rope toy instead uses PBD plus long-range attachment constraints. Each particle stays within its along-rope length of the sled; the rope pin has infinite mass, and pull is transferred one substep late. Stretch is 0.08%. Its bodies have 3 degrees of freedom only: they slide on the ground and cannot tip.

Known limits (by design or to judge): f12 arch keystone drops only the capstone (graph can't see thrust; noted in toy); f02 medium-hit split piece may be tiny; cG misses ~37% of real falls (the toy's point); axes.html candidate A–G axis placements were the builder's guesses; f10 hash-grid net is larger than its 128² target at defaults.

Next: owner plays the toys and says which teach, which confuse, which to fix; then resume the data-model discussion (DESIGN.md open questions) with the toys as shared vocabulary.
