# Lesson graphics/18 - XPBD substep loop on CPU, then port to compute

## Tasks

- [ ] Read Macklin/Mueller XPBD paper (https://matthias-research.github.io/pages/publications/XPBD.pdf).
- [ ] Read Mueller "Ten Minute Physics" XPBD PDF (https://matthias-research.github.io/pages/tenMinutePhysics/09-xpbd.pdf).
- [ ] CPU: implement N-particle Verlet with distance constraints between pairs.
- [ ] CPU: switch from "project all constraints, then integrate" to "substep loop: do K small steps per frame, each step integrates + projects constraints".
- [ ] CPU: add compliance parameter alpha for "soft" constraints.
- [ ] Verify visually: a chain of 20 particles, fixed at one end, swings under gravity without exploding.
- [ ] GPU port: storage buffer of particles, compute shader for integration, compute shader for constraint projection.
- [ ] Address constraint conflicts: two constraints sharing a particle can fight. Either use graph coloring (color the constraint graph so same-color constraints don't share particles, then dispatch one color per pass) or atomic operations.
- [ ] Now break it: too large substep (one big step per frame); blow up.
- [ ] Now break it: too low alpha (rigid); jittering as constraint solver oscillates.

## Tools to use here

- `<leader>op` — CPU prototype goes here first; scratch the chain solver, run via `<leader>or`
- `<leader>oq "xpbd verlet substep constraint projection"` — Macklin/Mueller paper + Mueller PDF
- `just lab` — once the GPU port works, watch the simulation interactively
- `just bench xpbd-cpu-vs-gpu` — perf comparison once both implementations exist

## Concept

XPBD = eXtended Position Based Dynamics (Macklin/Mueller/Chentanez
2016). The big idea: instead of solving forces and integrating with
hard guarantees, *directly project particle positions to satisfy
constraints*. Stable. Simple. Composable.

The core loop:

    for each substep (K per frame):
        // Integrate (Verlet)
        for each particle:
            pos_pred = pos + (pos - pos_prev) + gravity * dt^2
        // Project constraints
        for each constraint:
            compute correction;
            apply to constrained particles, weighted by inverse mass.
        // Commit positions, update velocities
        for each particle:
            vel = (pos_pred - pos) / dt
            pos_prev = pos
            pos = pos_pred

XPBD vs PBD: the X extends PBD with a *compliance* parameter alpha
that makes constraints behave like springs of measurable stiffness.
PBD is "infinitely stiff" (purely positional); XPBD smooths this so
you can dial constraints from rigid to floppy.

Substeps matter: one substep with a 1/60s dt is unstable for stiff
constraints. K=10 substeps of 1/600s each is stable. Cheap because
the constraint projection scales linearly with K.

GPU port: each particle's update is independent (parallelizable per
particle). Each constraint's projection writes to two particles, which
can conflict if two constraints share a particle. Two solutions:
1. **Graph coloring.** Pre-process: color constraints so two constraints
   sharing a particle never get the same color. Then dispatch one color
   at a time; within a color, no conflicts. ~5-8 colors typical.
2. **Atomic operations.** Constraints write via atomic add to per-particle
   correction accumulators. Slow but simple.

For the destruction engine target: graph coloring is the production
choice. Atomics are easier for prototyping.

Sources: Macklin/Mueller XPBD paper, Mueller's Ten Minute Physics PDF,
Aras "Daily Pathtracer Part 5: Metal GPU" for the CPU-to-GPU porting
narrative (different algorithm, same shape of work).

## Setup

Two phases:
1. CPU implementation under `bench/xpbd-cpu/` or `lab/src/game/`.
   Visualize using the renderer from lessons 15/17.
2. GPU port: compute shaders + storage buffers in `lab/src/game/`.

## Do this

CPU first (you can derive on paper from the PDF):
- N particles in a chain. Each pair (i, i+1) has a distance constraint
  at rest_length L.
- Fix particle 0 (zero inverse mass).
- Gravity, no damping.
- K=10 substeps per frame.

GPU second (after CPU works):
- Storage buffer per particle: pos, pos_prev, inv_mass.
- Storage buffer per constraint: i, j, rest_length, alpha.
- Compute shader 1: integrate (one thread per particle).
- Compute shader 2: project constraints (one thread per constraint;
  use atomic adds OR pre-color).
- Repeat K times per frame.

## Run

    just lab

A chain swings under gravity, fixed at the top. Edit alpha or K
in-place; hot-reload; observe the parameter sensitivity.

## What just happened

This is the simulation algorithm for the destruction engine. Every
voxel particle (when promoted from a brickmap cell to a physics body)
runs through this loop. Constraints become bond strengths; breaking a
constraint is fracturing a bond; rigid sub-bodies emerge from
connected-component analysis on the constraint graph.

Lesson 19 (destruction) builds on this.

## Now break it

1. K=1 substep, large dt. Blow up at first impulse.
2. Alpha = 0 with K=1. PBD-style hard constraint, oscillates and
   jitters.
3. Forget to weight corrections by inverse mass. Light particles
   anchor heavy ones; conservation of momentum is wrong.
4. GPU: no graph coloring, no atomics, just race conditions. Visually:
   chain drifts and explodes non-deterministically.

## Find more like this

    just substrate-search --bm25 "xpbd verlet substep constraint projection" --top 5

## Next: `19-destruction/`
