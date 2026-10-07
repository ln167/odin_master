# Game design → engine → architecture → code

Working doc for the 3D reset (2026-10-06). Order is fixed: **GDD → engine requirements → architecture → code.** Data model comes first inside the GDD phase.

## Rulings (owner, 2026-10-06)

- **2D Engineer's Cave is cancelled.** Straight to 3D.
- **Fantasy:** ancient megaproject builder. Kenshi + Factorio with Roman tech. Quarry, haul (ropes, dragging, felled trees, huge blocks), carve arbitrary shapes/art, build megaprojects.
- **Camera:** RTS / isometric, free rotate. Think Cities: Skylines.
- **People:** you control about 5 to hundreds. Leaning toward every human having skills that level up (vs. tool-defined "static" workers). The cap is set by the AI's CPU budget.
- **Digging:** maybe a slim version, not to the center of the earth. Undecided.
- **Tech thesis:** promote/demote between heightmap ↔ mesh ↔ voxel (↔ rigid body) is the next-gen enabler.
- **Data model first:** schemas/structs, and which algorithms/interactions each one supports. No playable slice before that.
- **INVARIANT, foundational: material decides everything (owner, 2026-10-06).** What a material does, how it breaks, its default weak points and its fracture pattern are all material-dependent. Every material fails its own way, with no generic deformation. Rock never erodes into round or smooth shapes. It only chips or breaks into large pieces. Mining rock, chopping wood and digging clay must each look and behave nothing alike; if they look the same, the game has failed. The owner hates the smooth dual-contouring "blob" look (No Man's Sky style).
- **No sliver/needle geometry (owner, 2026-10-07).** A broken piece must never show a perfect triangle or a face running out to one far-away vertex. Real rock and wood never look like that. A sharp edge or point is possible (even obsidian-sharp), but only where the sides around it are irregular, never as a clean triangle.
- **Contact is dead, not bouncy (owner, 2026-10-07).** A big rock hits the ground and stops; it rolls only on very steep ground. A tiny rock may bounce or roll a little. From first contact to full rest takes about 5–100 ms. No sponge or styrofoam bouncing, sliding or rolling over each other. A falling tree bounces up a little and vibrates/wiggles; branches or mud make it settle almost instantly, like the rock.
- **Screen scale (owner, 2026-10-07):** RTS camera, not first person and not third person behind the back. A human is roughly as tall on screen as 12–20 pt text.
- **Answers to the grill (owner, 2026-10-07):**
  - **Zoom:** the closest zoom is about an Age of Empires villager. Judge toys at the game camera distance; what matters is what reads at that distance (fresh vs weathered colour, piece size and shape, dust/spoil, how things fall).
  - **Angles:** no generated topology with acute angles below about 30°, at any scale. Sharp slivers alias and shimmer, and players at 4K/8K see them. Exceptions: carve mode, or a specifically sharp weapon. Wood chips may be pointy, but a tip is always jagged (several points), never one true point. Curved conchoidal faces exist (flint, obsidian); rock fracture faces in general are not flat planes.
  - **Weight is the bar.** "If we can roll a huge boulder down a hill or mountain and it LOOKS like realistic video, we have achieved the level of physics I want." Weight must be felt; no "empty box" feel.
  - **Impact damage:**
    - Heavy things dent the ground above a weight threshold.
    - A dropped block can break, especially on another rock; on the ground it rarely does.
    - The damage depends on the material it hits.
  - **Small stuff:** below some size, pieces behave as granular material (agent's judgement).
  - **Trees:** branches exist, break on impact and absorb the fall.
  - The 5–100 ms settle was a rough estimate; use whatever looks most realistic.
- **Fork answers (owner, 2026-10-07):**
  - **Carving is a separate mode.** The player designs a blueprint shape (e.g. a statue head) in a real design tool, then orders a worker to apply it to a rock.
    - The carving itself is faked: the design is applied over time, section by section, with an interpolated transition, so it looks like the worker is carving.
    - The result is still a world object, so a thrown rock can break a statue.
  - **Size cut-offs:** pieces under 0.2 m become grains, under 1 cm dust.
  - **Single player only, never multiplayer.** Exact replay is wanted: rewind eventually, plus slow motion. There is no speed-up, ever.
  - **No half-a-mountain.** Chiselling at a huge mass just breaks it, and the pieces sit there; dynamite blows it to smithereens. A purposely drilled and chiselled cliff face is the realistic big case. There must be a limit on object size.
- **Interaction is ordered, not real-time (owner, 2026-10-07).** This is not an FPS. Every interaction starts as a command: select a unit, "mine here", the unit walks over and preps.
  - So we know where and roughly when the work will happen, often seconds (hundreds to thousands of frames) ahead.
  - "Queryable at any point instantly" is the wrong assumption. The gains come from the assumptions this lets us make: prepare the target area ahead of time, spread over the frames before the first hit.
- **Next phase (owner, 2026-10-07):** think before building. Find the correct primitives, data model, algorithms and promotion/demotion that make all of this easy to simulate. Analyse the axes. Answer "what DATA MODEL is the ground made of", in code and algorithms.
- **Agents write freely; 100% verification loop.** Agents verify code-path behaviour through claims, traces and tele Records. The human verifies game feel and visual look.

## Sources (vision)

- `from_old_repo_references/PIVOT.md` (long-term target, 9 principles; its 2D strategy is superseded)
- `from_old_repo_references/world-material-philosophy.md`, `world-operations-and-representations.md`
- `~/.claude/projects/C--Users-user1/memory/project_game_vision*.md`, `project_mfd_architecture.md`, `project_world_rep_architecture.md`, `project_carving_mechanic.md`

## Open questions (data model)

1. **Canonical world store.** The sources disagree:
   - `project_game_vision.md` says the world is "one giant blob" (voxel/SDF field).
   - `project_world_rep_architecture.md` says the world is NOT voxels: shapes and heightmaps, with on-demand voxel zones of about 3–6 m³.
2. **Spatial scale and resolution:** world size, voxel cell size, crafting grid (1 cm?).
3. **Material record:** a fixed set of N base materials with ratios? How many? Stored per cell, or per object with overrides?
4. **Object identity across promote/demote** (the "semantic continuity" sub-problem): what ID survives a block being carved → hauled → shattered?
5. **Human record:** skills, tools, needs? Which state does the AI tick, and how often?
6. **Simulation clock:** fixed tick rate? Is determinism required (replay, rewind)?

## Scale rulings (owner, 2026-10-06)

- True human scale ("literally to scale with actual humans").
- Destruction spans dust → crumbs → boulders → half a mountain.
- 30 fps is acceptable.
- Depth/tunnels: whatever the data model allows. Not fixed up front.
- Owner warning: avoid defaulting to traditional techniques; this should be next-gen.

## World store candidates (Q1, under discussion)

At 4 × 4 km and 5 cm cells, the *surface shell alone* is about 6.4 × 10⁹ cells, so dense or even surface-sparse fine voxels everywhere are out. Every option is "coarse truth + fine detail only where touched":

- **A. Shapes + on-demand voxel zones.** Heightmap/mesh/SDF are the truth; voxel zones of about 3–6 m³ appear at interactions and bake back (`project_world_rep_architecture.md`).
- **B. Compressed voxel field everywhere.** A sparse voxel DAG/octree holds the whole world; meshes are render output only.
- **C. Procedural base + sparse edits.** The untouched world is a deterministic function `geology(x,y,z) → shape, material ratios`. Only touched regions are stored, as bricks. Untouched terrain costs about 0 bytes and has unlimited resolution.

## Principles agreed so far

- **The world is derived, not stored.** A compact math description is sampled into fine data only when an event needs it. Stored changes are a *rewritable description* that each edit refits under a fixed memory budget, not an append-only log. Edits are additive (rubble, structures) as well as subtractive.
- **Resolution belongs to the event, not the world.**
- **Working set is the invariant.** What is resident in RAM = near the camera + actively simulating. Set the budget before the schema.
- **Granular matter (crumbs, mud, sand, rubble) = continuum**, probably the Material Point Method. Dust = visual + mass bookkeeping.

## Voxel vs mesh (open, owner's key question)

What a volume (voxels/field) buys that a surface mesh can't:

1. **Interior:** per-cell material ratios, damage and bonds. A mesh is a hollow shell.
2. **Topology change for free:** a hole, split or merge is a cell flip plus a flood fill. Mesh booleans are fragile.
3. **O(1) neighbours:** stress, heat, water and cellular automata need neighbour lookups.

What a mesh buys:

1. Compact large smooth surfaces and sharp detail.
2. Render-ready.
3. Cheap rigid-body collision.

Working hypothesis: the **volume is the truth in active zones; the mesh is a view of its surface**. They are not competitors.

Boulder example (owner's idea, consistent with the conditional-demotion thesis):
1. Drill hole = known end state → cut on the surface form, no voxels.
2. Dynamite → voxelize only the blast region → bonds break.
3. Connected pieces → new rigid bodies (meshed). The rest stays mesh.

Open questions:
- Should big fractures be coarse + adaptive refinement at crack tips?
- Should the newly exposed fracture surface get its fine roughness synthesized from seed + material?
- Overhang collapse needs a structural query on the volume: at what resolution?

## Reframe (owner challenge, 2026-10-06): one "goo" field, many views

The owner rejected "you need voxels/solvers because" reasoning as possible XY-problem thinking. Working reframe:

- **The world is one continuous field ("goo").** Per position it holds shape (signed distance), material ratios, *weakness* (bedding planes, joints, grain) and damage. Each concrete form is a view sampled from it on demand:
  - render mesh
  - MPM particles
  - rigid bodies
  - structural graph
  - voxels (only when a neighbour-heavy computation wants a regular grid)
- **Fracture without a dynamics solver:** the geology field already says where rock is weak. Fracture = find the cheapest cut surface through the weakness field given the impact energy (a min-cut / shortest-path problem), not a bond simulation. Fine roughness comes from the field itself.
- **Collapse without voxels:** a structural *load graph* (chunks = nodes with mass; contacts = edges with strength), or a support field stored with the surface, updated only locally when a cut happens. A watertight surface + the material field already implies the inside.
- **Damage is arbitrary** (owner correction): arrows, hammers, swords, fists, rockets, of any size and shape. Chisel templates belong only to design/carving mode. Candidate: every impact = energy + contact shape → it deposits into the field's **damage** channel. Where damage exceeds strength, that region separates into a fragment or crumbs. So no per-tool cut code, and possibly no mesh booleans at all. Mesh-boolean prior art, reviewed: Cherchi et al. 2022 (arXiv 2205.14151).
  - Exact and robust per call.
  - Interactive only up to about 100–120K triangles: 0.07–0.10 s per boolean on an 8-core M1 Pro.
  - Repeated booleans on the same mesh are explicitly unsupported (snapping to floats introduces defects).
  - Output ordering is likely thread-dependent (read from the code, not run).
  - **Verdict: not the backbone for repeated arbitrary damage.** At most a design-mode tool. This favours field-based damage.
- **The novel core = write-back:** refitting changes into the field under the memory budget.
- **Lifecycle (owner):** everything active eventually returns to goo when it has settled and no one is near, or when the budget needs room. Some things stay permanently (e.g. a carved block with identity). This is safe only if **everything that changes future behaviour survives the round trip** (damage, composition, identity). Accumulated damage lives *in* the field, so cracks you weakened earlier still break together later. That is the "reversibility" sub-problem.
- **Unknown (owner):** how all of this interacts with every other system. To be addressed in the architecture phase as a systems × field-channels read/write matrix.

## Determinism (Q6, leaning yes)

Fixed tick. Deterministic multithreading costs little: fixed work partitions, each thread writes only its own outputs, merges happen in a fixed order, and solvers are Jacobi or graph-coloured. Rewind = periodic snapshots + input replay.

## Resume

**Current phase (2026-10-07):** brainstorming the data model. Design doc: `docs/game/data-model.html`; research notes and Resume: `docs/game/primitives.md`.

Representation exploration (proposed, not agreed), literature grades, and 23 interactive toys (hub: `C:\Users\user1\dev\odin_master\docs\game\toys\index.html`): `docs/game/representations.md`. Owner is playing the toys; next session starts with the owner's analysis of them.

Status: cleanup done (lab stripped to host, `just lab-build` green in bash + PowerShell); Spall removed (`just verify-all` 289/290, 1 noisy timing claim inconclusive). Next: owner confirms or edits the world's **query/write list** (the access patterns), then score the candidate world stores against it.
