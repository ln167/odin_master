# Pivot to Odin via 2D Prototype

**Date:** 2026-05-06
**Status:** Forward-looking. ultimate-flat (C++) is the research substrate. Active development pivots to Odin via a 2D prototype.

---

## Where this project sits

`ultimate-flat` is the C++ research and design substrate for what was originally going to be a custom destructible-world engine. As of 2026-05-06, no further C++ implementation is planned in this repo. The architectural conclusions carry forward; the implementation language and approach do not.

The deep design docs in this repo (`docs/world-*.md`, solver/MFD docs, the rendering-pipeline research) remain authoritative. Don't move them, don't duplicate them. When the Odin work starts, it reads from here, it doesn't copy from here.

---

## Long-term target

Kenshi-scale RTS-view game with realistic destructible terrain:

- Real-scale mountains (km-scale), interactable terrain, dynamic rocks and structural collapse from physics.
- Freeform carving (faces, art, decorative shapes).
- Hundreds of human / AI agents (workers, enemies).
- Material composition that drives fracture, yield, and appearance.
- Inspirations: Kenshi (scope, agent count) + Teardown (destruction tech) + traditional sim-builders (construction loop).

This is the "ultimate game." Multi-year project at a minimum.

---

## Stepping-stone strategy

Build a 2D side-view "Engineer's Cave" dig prototype in **Odin + SDL3** first, to validate the central architectural thesis (promote/demote between mesh / voxel / heightmap representations) before committing to the full 3D version. (Window + framebuffer from SDL3; everything above that, including the rasterizer, we write — see "No raylib" below.)

**The prototype:**

- Single-screen scrolling cave-mining game. Side view, gravity down.
- Tools: pickaxe (deterministic carve), dynamite (emergent fracture), wooden braces and carved stone columns (real load-bearing supports).
- Material strata: granite (strong, hard to dig), shale (weak, crumbles), sandstone (medium), ore-veins (brittle, target).
- Failure mode: removing supports causes physics-driven cave-ins along bond-network failure paths.
- "The rock above remembers what you took out." No scripted collapses. Real structural integrity from physics.
- No combat, no AI, no progression beyond the dig loop.
- Target build time: 2-3 months.
- Shippable as a niche indie title regardless of whether it leads to the bigger game.

---

## Why 2D first

The bridge problem (heightmap ↔ mesh ↔ voxel ↔ rigid-body) reduces structurally to 2D. The same four sub-problems apply: **geometric extraction**, **mechanical equivalence**, **semantic continuity**, **reversibility**. If the bridge works in 2D, the 3D version is engineering. If it doesn't work in 2D, the 3D version was never going to work either.

What 2D skips that costs months in 3D: deferred renderer, lighting/GI, shadows, normal mapping, LOD streaming, animation pipeline, camera system. None of that has anything to do with proving the architecture.

The falsification discipline (from `project_mfd_architecture.md`):
> *"Do not bet on abstract novelty. Bet on one falsifiable, player-visible advantage: the fabrication loop. If that loop feels magical, the architecture earns its complexity. If not, the architecture is expensive philosophy."*

The 2D prototype is the falsification gate.

The prototype is **not** about being a practically-scaled or fun 2D game. It's about answering "can this architecture be done at all? Does it make sense? Is it efficient? How hard is the problem?" Every principle below must be present in the prototype even if it's silly at 2D scale, because the *math and architectural slot* are what scale to 3D, not the implementation.

---

## Core Principles (spirit of the prototype)

The prototype must demonstrate, in 2D, all of:

1. **Arbitrary mesh** — polygons / polylines, points in space, geometry not constrained to a grid. This is what gives carved features their detail.
2. **Heightline** (the 2D analog of heightmap) — included for the principle and the conversion math, not for practical benefit at 2D scale. The slot must exist so the 3D version's heightmap layer (km-scale mountains) has somewhere to land.
3. **Pixel grid** (the 2D analog of voxels) — volumetric representation for emergent physics. Active only in interaction zones.
4. **Material composition with ratios, not labels** — every piece of mesh / pixel / promoted body carries something like `{granite: 0.73, quartz: 0.20, copper: 0.07}`. The same data drives fracture behavior, extraction yield, and visual appearance.
5. **Deterministic vs emergent operation split** — pickaxe (target known upfront, stays in mesh-land) vs dynamite (physics discovers the crack pattern, wakes pixel grid). Different code paths. Most operations are deterministic; only emergent ones pay the voxel cost.
6. **Bond network as the fracture mechanism** — XPBD-style constraints between adjacent pixels in active zones. Bonds break under stress; cracks propagate along weakened paths. NOT pre-computed Voronoi. This is the architecturally novel piece nobody ships.
7. **Promote/demote bridge** between mesh / pixel-grid / rigid-body, with material composition and semantic continuity preserved across round-trips.
8. **Mesh-feature-size capped at pixel-cell-size** — the round-trip invariant. Without it, every promote → demote → re-promote round-trip loses detail to quantization. With it, lossless.
9. **World-space rendering** — the renderer reads from the underlying material grid, not from per-rep colors or textures. Seams between representations are invisible.

If the prototype demonstrates all of these, the 3D version is engineering. If it doesn't, the architecture is dead and the project ends.

The four bridge sub-problems — **geometric extraction**, **mechanical equivalence**, **semantic continuity**, **reversibility** — are the testable rubric for whether the bridge is actually working.

---

## Building Principles

The prototype's purpose is **understanding**, not performance. The trap that ate ultimate-flat was stacking LLM-generated optimizations on solver code without ground-truth understanding, producing benchmark results that couldn't be trusted because the underlying correctness was never verified. Novel AI-built systems are rare for exactly this reason: AI is great at pattern-matching what already exists, mediocre at original synthesis, and terrible at telling you when its output is wrong about something it has never seen before. The promote/demote bridge with bond-network fracture is genuinely novel territory; LLM-generated code without grounded understanding will produce sophisticated nonsense.

Discipline for this prototype:

- **Build every system from first principles before any LLM-assisted optimization.** The 2D math is small enough to derive by hand: do it by hand.
- **Read papers as reference, not as source material.** Use them to verify "is my derivation right?", not as a starting point for "what should I write?"
- **Implement, derive, verify each layer before moving up the ladder.** Suggested rungs:
  1. Verlet / symplectic Euler for a single mass: understand energy drift.
  2. Particle pair with a distance constraint: derive constraint projection, watch convergence.
  3. Multi-constraint system: Jacobi vs Gauss-Seidel, observe convergence rate.
  4. Bond network: bonds break above stress threshold, cracks propagate as constraint failure cascade.
  5. Pixel grid of bonded particles: same math, denser.
  6. Rigid body emerging from a connected component: promotion as coalescing particles into one body with center-of-mass and angular state.

  Each rung must be fully understood before climbing.

- **LLM role under this discipline:** explain what a paper means, derive things on a whiteboard with you, write throwaway plotting code, suggest test cases. **NOT:** produce solver code, optimize functions you did not write, benchmark unverified correctness.
- **If you cannot explain on paper why your code does what it does, the code should not exist yet.**
- **CPU rasterization first; GPU only when CPU runs out.** Software-rasterize the entire 2D prototype: write your own pixel/line/polygon/blend code on top of an SDL3 streaming texture. The math (transforms, barycentric interpolation, depth, perspective division) transfers 1:1 to GPU; only the API differs. Skipping the CPU phase produces people who can submit `glDraw*` calls but cannot debug their own shader output. The bond-network solver and the promote/demote bridge — the actually novel pieces — are CPU compute problems anyway, not graphics problems.
- **Cross-platform constraint.** Code must compile and run on Windows + Linux from day one. Native macOS is best-effort. The user moves machines mid-project, and a hot-reload pipeline that only works on one OS is a pipeline that breaks the moment you sit at the other laptop.

This is slower upfront and dramatically faster overall, because debugging incomprehensible code is the highest-cost activity in software development. Foundations-first is the only way novel architectures get built.

---

## Why Odin (vs C++ / Unity / Unreal)

- **Off-the-shelf engines can't ship the architecture out-of-box.** Chaos Destruction uses pre-computed Voronoi fracture (not emergent crack propagation through a bond network). No engine hot-swaps mesh ↔ voxel ↔ rigid-body representations. No engine has a demote-back loop. No engine has built-in material composition propagation. The architecturally interesting part you write yourself anyway → Odin from scratch is defensible.
- **Bill Hall's LLVM critique** aligns with the kind of low-level engine work this requires. Odin's data-oriented design fits the per-system AoS/SoA needs.
- **Faster iteration than Unreal C++** for the inner loops that matter (voxel meshing, bond solving, promote/demote bridge code).
- **Clean C interop** for SDL3, OpenVDB, or anything else needed.
- **No raylib, even with Odin.** Karl Zylinski's template uses raylib and is the canonical hot-reload reference, but raylib's batteries-included drawing primitives (`DrawCircle`, `DrawLineEx`) are exactly what foundations-first is *against*. We use SDL3 for window + framebuffer only; everything above that we write. (Karl himself is moving away from raylib via his own `karl2d` project for similar reasons.)

---

## Load-bearing docs (read first, in order)

1. **`docs/world-operations-and-representations.md`** (Apr 3) — the deterministic-vs-emergent split and how it determines representation choice. Most valuable doc in this repo.
2. **`docs/world-material-philosophy.md`** (Apr 3) — voxels store material *ratios* (granite 0.73, quartz 0.20, copper-ore 0.07), not labels. Composition propagates through every operation.
3. **`~/.claude/projects/C--Users-user1/memory/project_mfd_architecture.md`** — promote/demote bridge as central problem. Four sub-problems. Falsification prototype description.
4. **`~/.claude/projects/C--Users-user1/memory/project_world_rep_architecture.md`** — three-layer thesis (heightmap / on-demand voxels / fragments).
5. **`~/.claude/projects/C--Users-user1/memory/project_carving_mechanic.md`** — voxel-layer justification.
6. **`docs/2026-05-06-odin-pivot-session.md`** — the conversation that produced this pivot.

---

## What this pivot keeps

- The three-layer architectural thesis.
- The material-ratios-over-labels philosophy.
- The deterministic-vs-emergent operation taxonomy.
- The four bridge sub-problems as the test rubric.
- The falsification discipline.

None of this is C++-specific. All of it informs the Odin prototype directly.

---

## What's deferred

Until the 2D prototype validates the architecture: full 3D renderer, asset pipeline, AI, scripting, audio polish, save/load with versioning, networking, editor / tooling, multiple levels or content beyond one cave, art polish.

Until prototype work actually starts: project skeleton, new memory files, substrate domain population, doc migration. Nothing happens proactively.

---

## When prototype work begins

Re-read this doc and the session log. Decide on a prototype directory (working name: `engineer-cave`). Create skeleton. First code goal: heightline + SDL3 window + framebuffer + pickaxe-carves-heightline. Everything else follows from there.
