# Solver Theory — Optimization Axes, Material Architecture, and Research Map

Compiled 2026-03-29 from extensive design discussion + literature review.

This document captures the theoretical foundation for the physics solver architecture.
It is the reference for all future solver work.

---

## 1. The 6 Optimization Axes

Every improvement to solver performance falls on one of these axes.
They are **independent and multiplicative** — gains on one axis multiply gains on all others.

### Axis 1: State Representation / DOF Reduction

**What it controls:** How many unknowns the solver has to find.

| Representation | DOFs per object | When to use |
|---|---|---|
| Full per-cell (current) | 3N (3 per cell) | Active fracture zone only |
| Affine Body (ABD) | 12 (3x3 matrix + translation) | Intact regions, slight deformation OK |
| Shape Matching | 6-12 per cluster | Rigid-ish clusters, unconditionally stable |
| Rigid Body | 6 (translation + rotation) | Post-fracture fragments, fully settled |
| Subspace / Modal | k << N (basis functions) | Predictable deformation patterns |

**Key insight:** A 1000-cell rock currently has 3000 DOFs. With ABD for the intact region
and bonds only at the crack interface (~50 cells), the effective DOF count drops to
~12 + 150 = 162. That's an **18x reduction** in problem size.

**Key paper:** Affine Body Dynamics (Lan et al., SIGGRAPH 2022)
- 12 DOF per body: q = [p, A] where A is 3x3 affine transform
- Captures squash, stretch, shear without per-element resolution
- Fast, stable, intersection-free for stiff materials
- [ACM DL](https://dl.acm.org/doi/10.1145/3528223.3530064) | [arXiv](https://arxiv.org/abs/2201.10022)

**Also relevant:**
- Shape Matching (Muller et al., SIGGRAPH 2005) — meshless, unconditionally stable
  [ACM DL](https://dl.acm.org/doi/10.1145/1073204.1073216)
- Medial Elastics / Subspace methods — reduced integration
  [Medial IPC](https://yangzzzy.github.io/PDF/medial_IPC_SIG21.pdf)

### Axis 2: Constraint / Energy Formulation

**What it controls:** What mathematical model describes the physics.

| Formulation | Best for | Characteristics |
|---|---|---|
| XPBD distance bonds | Solids (rock, wood, ice) | Simple, local, parallelizable, fracture = break bond |
| Continuum strain energy | Large deformation | More physically accurate, harder to implement |
| Peridynamics | Fracture simulation | Non-local integral formulation, designed for cracks |
| MPM (Material Point Method) | Mud, clay, sand, snow | Handles topology change, flow, plastic deformation |
| Shallow water equations | Water flow | 2D height field, cheap, good for irrigation/rivers |

**Key insight:** Different materials should use different formulations.
XPBD bonds are right for rock/wood. MPM is right for mud/clay. These are not
interchangeable — the formulation choice IS the biggest decision per material.

**Key paper:** CD-MPM: Continuum Damage MPM for Fracture (Wolper et al., SIGGRAPH 2019)
- Phase-field fracture with MPM
- Naturally handles topology changes
- GPU-amenable
- [ACM DL](https://dl.acm.org/doi/10.1145/3306346.3322949)

**Also relevant:**
- XPBD (Macklin et al., 2016) — foundation of current solver
  [PDF](https://matthias-research.github.io/pages/publications/XPBD.pdf)
- XPBI (2024) — XPBD extended with continuum inelasticity (MPM-like smoothing kernels)
  [ACM DL](https://dl.acm.org/doi/10.1145/3680528.3687577)
- Peridynamics survey: [Nature](https://www.nature.com/research-intelligence/nri-topic-summaries/peridynamic-modeling-and-numerical-simulations-in-fracture-mechanics-micro-21883)

### Axis 3: Conditioning / Coarse-Space Design

**What it controls:** How "hard" the system is to solve numerically, independent of solver choice.

XPBD's Gauss-Seidel solver has a **structural weakness**: it efficiently reduces
high-frequency errors (local jitter) but **stalls on low-frequency errors**
(global force propagation). For stiff materials on large grids, this means:
- A 64-cell-wide rock needs ~64 GS iterations to propagate force across it
- Even after 1000 iterations, low-frequency error modes persist
- This is NOT a bug — it's a mathematical property of local iterative solvers

The fix is **coarse-space correction**: solve a smaller version of the problem
that captures the low-frequency modes, then inject that correction back.
This is what multigrid does.

**Key paper:** MGPBD: Multigrid Accelerated Global XPBD (Li et al., SIGGRAPH 2025)
- Algebraic Multigrid (AMG) + Preconditioned Conjugate Gradient (PCG)
- Lazy setup: reuse prolongators across iterations (2/3 of AMG cost is setup!)
- Handles irregular topology (broken bonds, mixed materials)
- **Source code available:** [github.com/chunleili/mgpbd](https://github.com/chunleili/mgpbd)
- [ACM DL](https://dl.acm.org/doi/10.1145/3721238.3730720) | [arXiv](https://arxiv.org/abs/2505.13390)

**Also relevant:**
- Chebyshev Semi-Iterative Acceleration (Wang, SIGGRAPH 2015)
  ~10x convergence speedup by estimating spectral radius. Nearly free to implement.
  [ACM DL](https://dl.acm.org/doi/10.1145/2816795.2818063) | [PDF](https://wanghmin.github.io/publication/wang-2015-csi/Wang-2015-CSI.pdf)

### Axis 4: Solver Family / Acceleration

**What it controls:** The iteration method used to converge on the answer.

| Solver | Convergence | Per-iteration cost | Best for |
|---|---|---|---|
| Gauss-Seidel (current) | O(N) iterations | Cheap, local | Small problems, prototyping |
| Jacobi | O(N), parallelizable | Cheap, no data deps | GPU |
| Conjugate Gradient (CG/PCG) | O(sqrt(N)) with precond | Matrix-vector multiply | Medium problems |
| Multigrid (AMG) | O(1) for smooth errors | Hierarchy + smoothing | Large stiff problems |
| Projective Dynamics | 1 iteration (direct) | Cholesky factorization | Stable topology |
| Newton | Quadratic near solution | Expensive (Hessian) | Very stiff, large dt |
| Chebyshev acceleration | Multiplier on any solver | Nearly zero overhead | Everything |

**Key paper:** Projective Dynamics (Bouaziz et al., SIGGRAPH 2014)
- Local-global split: project constraints locally (parallel), solve global system (direct)
- Global system matrix depends only on topology, not positions
- Pre-factorize once (Cholesky), reuse for thousands of frames
- Topology change: progressive Cholesky update instead of full refactorization
- [ResearchGate](https://www.researchgate.net/publication/312997517)

**Also relevant:**
- Progressive Cholesky for PD with cutting/tearing:
  [ResearchGate](https://www.researchgate.net/publication/356957284)
- DOT: Decomposed Optimization Time Integrator (Li et al., 2019)
  [ACM DL](https://dl.acm.org/doi/abs/10.1145/3306346.3322951) | [GitHub](https://github.com/penn-graphics-research/DOT)
- Direct Position-Based Solver for Stiff Rods (Deul et al.)
  Two orders of magnitude speedup for acyclic constraint graphs (ropes, chains, rods)

### Axis 5: Temporal Strategy

**What it controls:** How often different parts of the system are advanced.

| Strategy | Description | Use case |
|---|---|---|
| Fixed substeps (current) | Same dt for everything | Simple, correct |
| Small steps (Macklin 2019) | Many substeps x 1 iteration | Better energy conservation |
| Multirate | Different dt per region | Active fracture: small dt. Settled: large dt. |
| Asynchronous (AVI) | Each element advances independently | Only active zones step forward |
| Anticipatory activation | Pre-build solver before impact | Commanded interactions (mine, chop) |

**Key insight for this game:** The interaction zone concept IS temporal adaptivity.
Active fracture zone: 10+ substeps at small dt. Intact rock: 0 substeps (it's ABD/rigid).
Settled debris: sleeping rigid body, 0 cost. This is AVI in practice.

**Key paper:** Asynchronous Variational Integrators for Phase-Field Fracture (Jadhav, 2025)
- Each mesh element advances with its own characteristic timestep
- Displacement updates at each time step, phase field solved globally less frequently
- Notable computational savings while capturing dynamic fracture behavior
- [Wiley](https://onlinelibrary.wiley.com/doi/10.1002/nme.70025)

**Also relevant:**
- Small Steps in Physics Simulation (Macklin et al., 2019)
  [matthias-research](https://matthias-research.github.io/pages/publications)

### Axis 6: Reuse / Amortization

**What it controls:** How much work carries over between frames.

| Technique | What's reused | Invalidated by |
|---|---|---|
| Warmstart (lambdas) | Previous solve result | Topology change (fracture) |
| Pre-factorization (PD) | Cholesky factorization | Topology change |
| Lazy AMG setup (MGPBD) | Prolongators, hierarchy | Significant topology change |
| Subspace reuse | Deformation basis | Major shape change |
| Skip steps | Entire solve | Motion exceeding basis |

**Key insight:** Between fracture events, the bond topology is **perfectly stable**.
A rock sitting on the ground has the same constraint graph for thousands of frames.
Any pre-computation tied to topology (factorization, AMG hierarchy, subspace basis)
can be reused for free during stable periods. The cost is only paid when bonds break.

**Key paper:** Skipping Steps in Deformable Simulation (Kim & James, 2009)
- Online model reduction: build reduced model as simulation runs
- Detect when reduced model can handle the current timestep
- Replace full solve with millisecond-cost reduced solve
- [Cornell PDF](https://www.cs.cornell.edu/projects/skippingSteps/skipping_steps.pdf)

---

## 2. Material Architecture

One engine, different formulations per material class.

### Solid Materials (XPBD bonds + ABD)

| Material | Yield Mode | Bond Behavior | DOF Strategy |
|---|---|---|---|
| Rock / Stone | BRITTLE | Force > yield -> instant break, cascade | ABD intact, bonds at crack |
| Glass / Ice | BRITTLE | Same as rock, lower yield, more fragments | ABD intact, bonds at crack |
| Wood | DIRECTIONAL | Damage along grain, split preferentially | ABD intact, bonds at crack + grain |
| Metal | DUCTILE | Elastic -> plastic deformation -> fracture | ABD or full DOF depending on scale |

**Yield mode enum:**
```cpp
enum class YieldMode : uint8_t {
    BRITTLE,      // rock, glass: force > yield -> instant break, cascade
    DIRECTIONAL,  // wood: damage accumulates along/across grain differently
    PLASTIC,      // clay (if using XPBD): rest_distance changes, no break
    DUCTILE,      // metal: plastic deform then break at ultimate strength
};
```

**Brittle fracture (rock):**
- NO damage accumulation. Bond is intact or broken. Binary.
- Break triggers cascade: stored elastic energy in stiff bonds redistributes to
  neighbors -> if they exceed yield, they break too -> chain reaction.
  Think Prince Rupert's Drop: the bulb is strong (bonds under compression), but
  break the tail and the stored energy releases catastrophically through the whole
  object. Same mechanism drives crack propagation in rock.
- Crack propagates at speed of sound in material (near-instant per frame)
- Resulting chunks become ABD bodies or rigid bodies

**Wood falling behavior:**
- Wood has directional compliance (flexible perpendicular to grain).
- A falling tree should visibly FLEX on impact — trunk bends, rebounds, oscillates.
  This is the bond solver doing its job with wood's compliance values.
- Do NOT immediately promote a falling tree to rigid body. Keep it in the bond solver
  while it's still flexing. Promote only when internal deformation drops below threshold.
- This means delayed promotion for wood objects under dynamic stress.

### Granular / Plastic Materials (MPM)

| Material | MPM behavior | Coupling |
|---|---|---|
| Mud / Clay | Plastic deformation, flow | Forces at boundary with XPBD solids |
| Sand | Granular flow, friction-dominated | Contact with rigid bodies |
| Snow | Compression + fracture | Phase transition possible |

MPM is a **separate solver** that shares the same grid. It does NOT use XPBD bonds.
Coupling happens at boundaries where MPM particles contact solid grid cells.

### Fluid (Shallow Water)

| Material | Method | Coupling |
|---|---|---|
| Water (surface flow) | Shallow water equations (2D heightfield) | Pressure on solid surfaces, buoyancy |
| Water (splash/spray) | SPH particles (event-driven) | Convert back to heightfield when settled |

---

## 3. Physics Object Lifecycle

```
WORLD_STATIC ──interaction──> VOXEL_ACTIVE ──fracture──> RIGID_BODY
     ^                            |                          |
     |                            | (bonds flex,             | (inertia, angular
     |                            |  fracture cascades)      |  momentum, contacts)
     |                            v                          v
     |                        ABD_BODY                  RIGID_SLEEPING
     |                     (12 DOF, slight               (zero cost,
     |                      deform OK)                   wake on contact)
     |                            |                          |
     +──── player fixes ──────────+────── player fixes ──────+
```

**Anticipated activation:** Player commands "mine this rock" -> pre-activate zone,
pre-build bonds, solver warm before impact arrives.

**Reactive activation:** Fragment hits something unexpected -> collision triggers
zone activation at impact point.

**Off-screen approximation:** Same end state, skip solver. Remove cells in blast
radius, spawn fragment entities at approximate positions.

---

## 4. Interaction Classification

| Type | What we know | Activation strategy |
|---|---|---|
| Commanded (mine rock) | Target, tool, direction, timing | Pre-activate zone before swing |
| Commanded aimed (shoot crossbow) | Origin, trajectory, intent | Prepare along path, activate on hit |
| Placed hazard (dynamite fuse) | Location, time, blast radius | Pre-activate zone around placement |
| Thrown/lobbed (toss dynamite) | Origin, initial velocity only | Track projectile, activate on impact |
| Cascade (fragment hits wall) | Nothing until collision | Reactive: collision -> activate |
| Environmental (tree on fence) | Nothing until contact | Reactive: contact -> activate |

**Speed limit:** Fastest object is crossbow bolt (~90 m/s). At 5cm cells, 60fps,
10 substeps: bolt moves 1.5 cells per substep. **No tunneling possible.** No CCD needed.
Projectiles march through grid cells along velocity vector, check each cell.

---

## 5. Constraint Types

The XPBD solver handles all constraint types with the same iteration loop.
Each type has a different constraint function C and gradient.

| Constraint | C (error function) | Use case |
|---|---|---|
| Distance bond | \|x_a - x_b\| - d0 | Hold cells together (existing) |
| Hinge / pivot | Position + axis restriction | Water wheel axle, doors |
| Gear coupling | Angular velocity ratio | Axle drives millstone |
| Contact | Penetration depth | Rigid body collisions |
| Volume preservation | V - V0 | Incompressible materials |
| Strain limit | \|F - I\| (deformation gradient) | ABD stiffness |

All constraints feed into: delta_lambda = -(C + alpha * lambda) / (w_sum + alpha).
The solver iterates over all constraints, all types, same inner loop.

---

## 6. What We Built vs What We Need

| What exists | Value | Next step |
|---|---|---|
| XPBD GS solver | Foundation | Add Chebyshev acceleration, then MGPBD |
| Active cell index | Keep (waste reduction) | Subsumed by ABD (most cells not in solver) |
| AVX2 backend | Keep (stacks under everything) | Apply to whatever solver wins |
| Warmstart + topology invalidation | Keep (reuse axis) | Extend to PD pre-factorization |
| Packed bricks | Partial (data layout) | Becomes domain decomposition boundaries |
| Geometric multigrid | Wrong approach | Replace with AMG (MGPBD has source) |
| Hybrid rigid (6 DOF) | Right idea, wrong formulation | Replace with ABD (12 DOF) |
| Variant framework + /compare | **High value** | Use to test every new technique |
| Brittle yield mode | Not implemented yet | **Priority 1** |
| Grid-as-collider | Not implemented | **Priority 2** (rigid body <-> grid) |
| Rigid body sleep/wake | Not implemented | Needed for 100+ fragments |

---

## 7. The 5-Piece Architecture

The solver architecture is NOT 3 states. It is 5 pieces, each with open design questions.

```
┌─────────────────────┐
│  1. REDUCED BULK    │  ABD (12 DOF per intact region)
│     (most of rock)  │  Near-zero cost when nothing is happening
└────────┬────────────┘
         │
┌────────┴────────────┐
│  2. INTERFACE       │  Displacement + momentum + torque continuity
│     COUPLING        │  *** THIS IS THE HARDEST PART ***
└────────┬────────────┘
         │
┌────────┴────────────┐
│  3. FRACTURE BAND   │  XPBD bonds, local solve (MGPBD/Chebyshev)
│     (crack tips)    │  Only the thin region where fracture is active
└────────┬────────────┘
         │
┌────────┴────────────┐
│  4. FRAGMENT        │  Detached regions → rigid bodies with inertia
│     PROMOTION       │  Sleep/wake, ground contact, stacking
└─────────────────────┘

┌─────────────────────┐
│  5. FALLBACK PATH   │  When band > threshold: full local XPBD
│                     │  Explosions, multi-front fracture, rubble
└─────────────────────┘
```

### Piece 1: Reduced Bulk (ABD)

Intact rock treated as affine body. 12 DOF (3x3 matrix + translation).
Handles slight deformation (squash/stretch) without per-cell resolution.

**Open questions:**
- When does ABD become invalid? (What threshold of internal stress triggers band creation?)
- How is the ABD region defined initially? (All bonded cells in a connected component?)
- Can an ABD region split into two ABD regions without going through the full band solve?

### Piece 2: Interface Coupling (THE HARD PART)

The boundary between ABD bulk and XPBD crack band must transfer:
- **Displacement continuity:** ABD surface cells and band boundary cells must agree on position
- **Momentum transfer:** Force from the band must create correct translation + rotation on ABD body
- **Torque transfer:** Off-center forces must rotate the ABD body correctly via inertia tensor
- **Energy consistency:** No energy created or destroyed at the interface

This is where the hybrid rigid solver's `w_rigid = 1/M + (r x n)^T * I_inv * (r x n)`
formulation applies, but extended to ABD's affine DOFs rather than just rigid DOFs.

**Open questions:**
- Is the interface a hard constraint (Lagrange multiplier) or a penalty/compliance term?
- How many cells wide is the interface layer?
- When a band cell converts back to ABD, how is momentum conserved?
- Does the coupling use the same XPBD iteration or a separate pass?

### Piece 3: Fracture Band (Local XPBD)

The thin region around active crack tips where per-cell bond resolution is needed.
This is where the actual fracture physics happens.

**The fracture law (separate from the solver):**
- **Nucleation:** Where does a crack start? When impact force on a surface cell exceeds
  yield strength. The impact point IS the nucleation site.
- **Growth:** How does the crack propagate? Bond breaks → stress redistributes to neighbors
  → if they exceed yield, they break too → cascade. Speed is limited by solver iteration
  rate (multigrid helps propagate faster).
- **Arrest:** When does the crack stop? When the stress at the crack tip drops below yield.
  Typically when the crack reaches a free surface (chunk separates) or enters a region
  with different material properties (harder inclusion stops the crack).
- **Path selection:** Crack follows the path of least resistance through the stress field.
  Bonds with highest stress/yield ratio break first. Material heterogeneity (random
  variation in yield per bond) creates natural-looking irregular crack paths.
- **Brittle rule:** No damage accumulation for rock. Binary: intact or broken. Period.

**Band width:**
- Minimum: 1 cell layer around each broken bond (need neighbors to compute stress)
- Practical: 2-3 cell hops from any broken or high-stress bond (need context for crack direction)
- Dynamic: band grows as cracks propagate, shrinks as cracks arrest

**Open questions:**
- How does the band width affect convergence? Too narrow = crack propagation limited by band edge
- Should the band use MGPBD or is plain GS sufficient for a small band?
- How does Chebyshev acceleration behave during active topology changes? (Likely: disabled during
  fracture cascade, enabled during stable substeps. Spectral estimates invalid when bonds break.)

### Piece 4: Fragment Promotion

When a group of cells fully separates (no bonds connecting it to the main body),
it becomes a rigid body with:
- Mass from cell count × material density
- Inertia tensor from cell positions relative to COM
- Velocity from average cell velocity at separation
- Angular velocity from velocity field curl at separation

**Already implemented:** `promote_region()` in `promotion.cpp` does this.

**Open questions:**
- Should small fragments (< 5 cells) be promoted immediately or pooled?
- Should large fragments (> 100 cells) go through ABD first instead of rigid body?
- Delayed promotion for wood (flex before rigidifying) — what's the settlement threshold?

### Piece 5: Fallback Path

When the "small crack band" assumption breaks:
- Explosion: entire rock is fracture band, no ABD bulk left
- Multi-front: several impacts simultaneously, bands overlap
- Rubble: everything is fragments, no intact bulk

**Fallback rules:**
- If band_cells / total_active_cells > 0.8 → abandon ABD, full local XPBD
- If fragment count > threshold → skip per-cell solve, use rigid body approximation
- If total active cells > budget → LOD: keep nearest interactions full-res, approximate distant

**Open questions:**
- What's the performance cliff when fallback triggers? (Ideally graceful degradation, not sudden spike)
- Can we pre-detect that an explosion will exceed the band threshold and skip ABD entirely?
  (Anticipatory: dynamite = known blast radius, pre-compute that band will be 100%)
- Multiple simultaneous impacts: do bands merge or stay independent?

### What is NOT designed yet

These pieces have open questions that require **math design, not code:**

1. Interface coupling equations (Piece 2) — the core math
2. Fracture nucleation from impact force (Piece 3) — how impact becomes crack
3. Band ↔ ABD transition criteria (Pieces 1↔3) — when to create/dissolve the band
4. Contact → band creation (missing) — how rigid body impact on grid triggers everything
5. Multirate temporal strategy — small dt near impact, large dt elsewhere

These should be designed on paper (or in a spec document) before coding.

---

## 8. Implementation Priority (revised)

Status key: ✅ DONE | ❌ DEAD END | 🔶 PARTIAL | ⬜ NOT STARTED | 🔵 IN PROGRESS

### Phase 0: Design on paper (not code)
These require math design before implementation. Get the equations right first.

1. ⬜ **Interface coupling equations** (Piece 2) — how ABD and XPBD band exchange forces
2. ⬜ **Band creation/dissolution criteria** — when ABD→band, when band→ABD
3. ✅ **Fracture law for rock** — nucleation, growth, arrest, path selection rules
   → Implemented as BRITTLE yield mode. Binary break, cascade, no damage ramp. All tests pass.
4. ⬜ **Contact → band trigger** — how rigid body impact on grid activates the whole pipeline

### Phase 1: Improve existing solver (low risk, immediate value)
Build on what works. Test with variant framework.

5. ❌ **Chebyshev acceleration** — DEAD END at 4 iterations/substep. 13.9% frag delta,
   changes fracture pattern. Needs 10+ iterations to pay off. Deprioritized.
6. ✅ **Brittle yield mode** — correct rock fracture. Binary break, cascade. All tests pass.
7. ⬜ **Grid-as-collider** — rigid bodies interact with voxel world (the missing bridge)
8. ⬜ **Rigid body sleep/wake** — 100+ fragments at zero cost

### Phase 2: Architecture shift (the real win)
Replace current solver model with the 5-piece architecture.

9. 🔶 **ABD for intact regions** — Implemented (solver_abd.cpp, 670 lines). 12 DOF per bulk,
   velocity-based band seeding, cached bodies. BUT: 50% frag delta (interface coupling wrong),
   2.4x SLOWER on large grids (rebuild cost on every topology change). Needs amortized rebuilds
   and interface tuning.
10. ⬜ **MGPBD (AMG + PCG)** — NOT YET IMPLEMENTED. The file previously called
    solver_mgpbd.cpp was our own lambda-space PCG+geoMG invention (now renamed to
    solver_pcg_geomg.cpp). The real MGPBD (Li 2025, position-space PD + AMG) is a
    separate task. Reference code at github.com/chunleili/mgpbd.
    See: docs/superpowers/plans/2026-03-30-solver-comparison-framework.md Task 6.
11. ⬜ **Interface coupling implementation** — the math from Phase 0 step 1
12. ⬜ **Fallback path** — graceful degradation when band assumption breaks (explosions)

### Phase 3: Additional material systems (DEFERRED per user)
After rock works correctly. User explicitly said "forget about materials for now."

13. ⬜ **MPM for mud/clay** — separate formulation for plastic materials
14. ⬜ **Shallow water** — irrigation, rivers, flooding
15. ⬜ **Hinge/gear constraints** — water wheels, mechanical systems
16. ⬜ **AVI / multirate stepping** — formalize temporal adaptivity

---

## 9. Paper Index

All referenced papers with links. PDFs downloaded to `papers/` where available.

| ID | Paper | Year | Relevance | Link |
|---|---|---|---|---|
| 01 | XPBD (Macklin et al.) | 2016 | Foundation solver | [PDF](https://matthias-research.github.io/pages/publications/XPBD.pdf) |
| 02 | Small Steps (Macklin et al.) | 2019 | Temporal strategy | [matthias-research](https://matthias-research.github.io/pages/publications) |
| 03 | Chebyshev PD/PBD Acceleration (Wang) | 2015 | ~10x convergence | [ACM](https://dl.acm.org/doi/10.1145/2816795.2818063) [PDF](https://wanghmin.github.io/publication/wang-2015-csi/Wang-2015-CSI.pdf) |
| 04 | MGPBD (Li et al.) | 2025 | AMG + XPBD, SOTA | [ACM](https://dl.acm.org/doi/10.1145/3721238.3730720) [Code](https://github.com/chunleili/mgpbd) |
| 05 | Affine Body Dynamics (Lan et al.) | 2022 | DOF reduction | [ACM](https://dl.acm.org/doi/10.1145/3528223.3530064) [arXiv](https://arxiv.org/abs/2201.10022) |
| 06 | Projective Dynamics (Bouaziz et al.) | 2014 | Pre-factorization | [ResearchGate](https://www.researchgate.net/publication/312997517) |
| 07 | Progressive Cholesky for PD | 2021 | Topology change in PD | [ResearchGate](https://www.researchgate.net/publication/356957284) |
| 08 | Shape Matching (Muller et al.) | 2005 | Meshless deformation | [ACM](https://dl.acm.org/doi/10.1145/1073204.1073216) |
| 09 | CD-MPM (Wolper et al.) | 2019 | Fracture with MPM | [ACM](https://dl.acm.org/doi/10.1145/3306346.3322949) |
| 10 | DOT (Li et al.) | 2019 | Domain decomposition | [ACM](https://dl.acm.org/doi/abs/10.1145/3306346.3322951) [Code](https://github.com/penn-graphics-research/DOT) |
| 11 | IPC (Li et al.) | 2020 | Robust contact | [Site](https://ipc-sim.github.io/) [Code](https://github.com/ipc-sim/IPC) |
| 12 | AVI for Fracture (Jadhav) | 2025 | Async time stepping | [Wiley](https://onlinelibrary.wiley.com/doi/10.1002/nme.70025) |
| 13 | Skipping Steps (Kim & James) | 2009 | Online model reduction | [PDF](https://www.cs.cornell.edu/projects/skippingSteps/skipping_steps.pdf) |
| 14 | Direct PBD for Rods (Deul et al.) | — | Acyclic direct solve | [physicsbasedanimation.com](https://www.physicsbasedanimation.com) |
| 15 | XPBI (2024) | 2024 | XPBD + continuum inelasticity | [ACM](https://dl.acm.org/doi/10.1145/3680528.3687577) |
| 16 | Physically Based Shape Matching (Muller) | 2022 | Updated shape matching | [PDF](https://matthias-research.github.io/pages/publications/Physically_Based_Shape_Matching___SCA_2022.pdf) |

---

## 10. Key Realizations from Design Discussion

These are non-obvious insights that emerged from the conversation and should
inform all future physics work.

1. **AVX2 is a backend, not an algorithm.** It does the same math with wider registers.
   Rename to `baseline_avx2` to make the 3-axis model clear: formulation x layout x backend.

2. **Rock fracture is BRITTLE.** No damage accumulation. No hairline cracks. Bond breaks
   instantly when force exceeds yield. Crack cascades near-instantly. This is fundamentally
   different from the current gradual damage model (which is correct for wood, not rock).

3. **The solver's job is satisfying constraints, not "simulating physics."** Physics is
   the emergent result of constraints being satisfied. Better physics comes from better
   constraints and faster convergence, not from more "physics code."

4. **Most of the rock is rigid most of the time.** Solving 3000 bonds to confirm a rock
   isn't moving is pure waste. ABD (12 DOF) or shape matching replaces this entirely.
   Bonds only needed at active crack interface.

5. **The voxel grid IS the collider IS the material.** No separate collision shapes.
   Fracture changes the grid -> collision surface updates automatically. This is the
   fundamental differentiator from Unity/PhysX/Havok.

6. **Topology stability = free performance.** Between fracture events, the mathematical
   problem is identical frame to frame. Pre-factorization, cached AMG hierarchy,
   warmstarted lambdas — all reusable. Cost is only paid when bonds break.

7. **Different materials need different formulations, not different solvers.** Rock = XPBD
   bonds (brittle). Wood = XPBD bonds (directional). Mud = MPM (not XPBD at all).
   Water = shallow water equations. One engine, multiple formulations.

8. **Worker units (8 people) pushing one block = 8 force application points.** The block
   responds based on WHERE forces are applied (torque from moment of inertia). Uneven
   pushing causes rotation. This is emergent from the constraint solver + inertia tensor.

9. **Game is NOT first-person.** Kenshi-style 3rd person management. Player gives commands,
   workers execute. World is living/breathing. Physics must work off-screen too.
   Visual fidelity at RTS distance, not up-close crack detail.

10. **Speed limit: ~90-150 m/s (crossbow bolt).** No hitscan, no bullets. At 5cm cells
    and 10 substeps/frame, projectiles move ~1.5 cells/substep. No tunneling. No CCD.
    Projectiles march through grid cells. This eliminates an entire class of hard problems.

11. **Water wheel must work from physics, not from scripting.** Flowing water pushes
    paddles (drag force on submerged surfaces). Paddles turn on hinge constraints.
    Axle couples to gears via gear constraints. All emergent from constraint solver.

12. **Mud interaction is volumetric, not surface contact.** Foot pushes into mud cells ->
    cells deform plastically (MPM) -> resistance force slows character -> footprint is
    real physical depression. NOT a binary "in mud zone" status effect.

13. **ALL terrain movement speed comes from physics resistance, not status effects.**
    This is a general principle, not just mud. Walking uphill: gravity resists forward
    motion. Walking in water: fluid drag. Walking in snow: compression resistance.
    Walking on ice: low friction. The character moves at the speed physics allows,
    not at a speed set by a "terrain type" lookup table.

14. **MPM is NOT "faster XPBD."** MPM solves a fundamentally different mathematical
    problem (continuum mechanics with particles on a background grid). Do not attempt
    to use MPM for rock/wood simulation — it's designed for materials that flow, deform
    plastically, or change topology continuously. For solids with discrete fracture,
    XPBD bonds are the right formulation. MPM is for mud/clay/sand/snow.

15. **Dynamite is a late-game world modification tool.** Gated behind tech progression.
    Represents a major power upgrade for terrain reshaping. Anticipatory zone activation
    (fuse timer = known detonation time) allows pre-building the solver zone.
