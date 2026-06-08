# One Frame
## The top-level contract. Every subsystem spec must conform to this.

This document describes what happens during a single frame of the real game,
from input to pixels. It defines the phase order, the dispatch hooks where
systems plug in, the data flow between phases, and the ownership rules for
shared state. Every system we build -- physics, rendering, eval, variant
testing, audio, animation, AI -- must fit into this frame structure.

---

## 1. Frame Phases

A frame has 7 phases. They run in this order. Every frame. No exceptions.

```
PHASE 1: INPUT
  Read player input, network messages, AI decisions.
  Record to input log (for replay).
  Output: InputFrame (timestamped list of actions/events).

PHASE 2: WORLD ORCHESTRATION
  For each active site in the world:
    Decide: does this site need physics this frame?
    Decide: at what fidelity? (full, reduced, sleeping)
  Activate/deactivate interaction zones.
  Wake sleeping sites if new input targets them.
  Output: list of active sites + their fidelity level.

PHASE 3: SIMULATION (per active site)
  For each active site:
    Apply input events for this frame (from InputFrame).
    Run Simulation::step(dt):
      For each substep:
        [DISPATCH: solver_substep]    <-- variant injection point
        Damage accumulation
        Connectivity scan (if bonds broke)
        Promote/demote
        Rigid body step
    Capture frame state (if recording enabled).
  Output: updated world state (positions, entities, events).

PHASE 4: EVENTS
  Collect events emitted during simulation:
    BOND_FRACTURE, CELL_CARVED, ENTITY_GROUND_HIT, etc.
  Route events to subscribers:
    [DISPATCH: audio]     <-- fracture sounds, impact sounds
    [DISPATCH: particles] <-- dust, debris particles
    [DISPATCH: animation] <-- unit reactions, tool animations
    [DISPATCH: UI]        <-- damage numbers, progress bars
  Output: audio/particle/animation commands queued.

PHASE 5: LATE UPDATE
  Step rigid body interpolation (for smooth rendering between substeps).
  Update camera.
  [DISPATCH: AI]          <-- pathfinding on destructible terrain, decisions
  Cull off-screen objects for rendering.
  Output: render-ready state.

PHASE 6: RENDER
  Extract surface meshes (if grid changed).
  Upload instance data (active fragments).
  GPU render pass:
    Static mesh (grid surface)
    Instanced cubes (active fragments/entities)
    Debug lines (if enabled)
    ImGui overlay
  Present.

PHASE 7: TELEMETRY
  Record frame timing (total, per-phase, per-site).
  Record workload metrics (active sites, bonds, entities, fragments).
  Record profiler data (RDTSC cycle counts per scope).
  Write to run record (if variant runner or eval mode).
  Check frame budget. Log if overrun.
```

---

## 2. Dispatch Hooks

A dispatch hook is a typed function pointer inside the game loop where a
subsystem plugs in. The frame defines WHERE each hook fires. The subsystem
defines WHAT happens. The variant framework can swap the function at any hook.

| Hook | Phase | Signature | Default |
|------|-------|-----------|---------|
| `solver_substep` | 3 (Simulation) | `void(SolverState&, BondSystem&, float dt, int iters, SolverWorkers*, bool simd)` | `solver_substep()` from solver.cpp |
| `audio_event` | 4 (Events) | `void(const SimEvent&)` | no-op (audio not yet built) |
| `particle_event` | 4 (Events) | `void(const SimEvent&)` | no-op (particles not yet built) |
| `animation_step` | 4 (Events) | `void(float dt)` | no-op (animation not yet built) |
| `ai_update` | 5 (Late Update) | `void(const WorldState&, float dt)` | no-op (AI not yet built) |

Hooks for future systems are defined now (as no-ops) so the frame structure
doesn't change when they're implemented. Adding a new system = implementing
the hook function and registering it. Never restructuring the frame.

### Hook Lifecycle
- All hooks default to nullptr (no-op / use built-in default).
- The variant runner sets hooks before a run, clears them after.
- `Simulation::init()` resets the solver hook to nullptr.
- Game code NEVER sets hooks directly -- only the variant runner or a
  startup config system does.
- A hook must never persist across a world reset or simulation init.

---

## 3. World Orchestration (Multiple Active Sites)

The game has many units operating across the map. Multiple rocks may be
mined simultaneously. The world orchestrator manages N active sites.

```
struct ActiveSite {
    Simulation sim;              // owns its own grid, bonds, solver state
    InteractionZone zone;        // where physics is active within this site
    SiteState state;             // SLEEPING, ACTIVE, WINDING_DOWN
    float time_since_last_input; // for sleep decisions
    Vec3 world_position;         // where in the game world
};

struct World {
    std::vector<ActiveSite> sites;
    InputLog input_log;          // recorded input for replay [C1, C2]
    // ...
};
```

Each site has its own `Simulation`. Sites have no cross-site bond constraints.
This means:
- Sites can be solved in parallel (one thread per site, or distribute substeps)
- Sites can sleep independently (no input = stop stepping)
- Sites can be at different fidelities (on-screen = full, off-screen = reduced)

### Cross-Site Interaction (Fragments Crossing Boundaries)

Sites have no shared bonds, but fragments (promoted entities) can fly from
one site's AABB into another's. The handoff policy:

1. **Fragment leaves site A:** When a promoted entity's position exits site A's
   AABB, site A removes it from its entity list and emits a FRAGMENT_EXIT event
   containing the entity's full state (position, velocity, rotation, angular
   velocity, mass, material, cell snapshot).

2. **Fragment enters site B:** The world orchestrator receives the FRAGMENT_EXIT
   event, checks which site (if any) the trajectory intersects, and injects the
   entity into site B as a new promoted entity. If no site exists at the
   destination, the fragment enters free-flight (world-space rigid body, no grid
   interaction, cheap to step).

3. **Fragment hits bare terrain (no active site):** The impact triggers site
   creation -- a new ActiveSite is allocated at the impact location, the terrain
   is voxelized locally, and the fragment attempts demotion into the new grid.

4. **Fragment in free-flight:** Entities between sites are owned by the world
   orchestrator, not by any site. They step as simple rigid bodies (gravity +
   ballistic trajectory). No bonds, no grid, no solver. Very cheap.

5. **No cross-site bonds, ever.** If two sites are adjacent and a fragment
   bridges the gap, it demotes into one site only. The boundary between sites
   is a hard physics discontinuity. This is acceptable because sites represent
   distinct interaction zones (separate rocks, separate walls), not arbitrary
   spatial partitions of one continuous body. A single continuous rock is ONE
   site, not multiple.

**Edge case:** Two units mining the same rock from opposite sides. This is one
site with one Simulation, two interaction zones (via expand_zone or multiple
activate_zone calls). NOT two sites.

### Determinism Under Parallel Site Execution

Sites can be solved in parallel, but determinism (C2) requires that the frame's
output is identical regardless of thread scheduling. Hard rules:

1. **Site solve order is deterministic.** Even if sites solve on different threads,
   the ORDER in which their results are merged into the world state is fixed
   (by site ID, ascending). Thread scheduling does not affect output order.

2. **Event merge is deterministic.** Events emitted by parallel sites are collected
   per-site, then merged in site-ID order. The event stream seen by Phase 4
   (audio, particles) is always in the same order for the same input.

3. **Capture merge is deterministic.** Frame capture collects per-site state in
   site-ID order. The replay grid sees the same data regardless of which thread
   finished first.

4. **Cross-site handoffs are deterministic.** Fragment exits are processed in
   site-ID order after all sites have completed their step. A fragment exiting
   site 3 and entering site 7 always happens in the same order relative to
   other handoffs, regardless of thread timing.

5. **Free-flight entities are stepped deterministically.** They are owned by the
   world orchestrator and stepped in entity-ID order after all sites complete.

**Implementation:** Each thread writes into its own per-site output buffer.
After all threads complete (barrier), the main thread merges buffers in
site-ID order. No locks during solve. One barrier. One deterministic merge.

### Off-Screen Physics Policy
A site goes to sleep after K frames with no input and no active entities.
A sleeping site does not call `Simulation::step()`. It wakes when:
- A unit targets it (walk-to-target command)
- A projectile/fragment enters its AABB
- The player scrolls the camera near it

Sleeping sites still exist in the world (their grid data is valid, just
not being stepped). This is NOT LOD -- it's activity-based scheduling.
Matches the CLAUDE.md requirement: "no camera-centric LOD."

### Orchestration Budgets

| Resource | Budget | Action When Exceeded |
|----------|--------|---------------------|
| Active sites per frame | 8 max | Oldest/farthest sites forced to sleep |
| Total active bonds across all sites | 50K max | Largest zone shrinks radius |
| Total entities across all sites | 500 max | Furthest/oldest entities despawn |
| Physics frame budget | 8ms (of 16.6ms at 60fps) | Reduce substep count, then sleep sites |
| Memory per site | ~2MB (48^3 grid + bonds + solver) | Site cap enforces this implicitly |
| Wake events per frame | 4 max | Queue excess wakes for next frame |

These are initial estimates. Telemetry (Section 10) measures real usage and
adjusts budgets. The orchestrator enforces budgets by degrading gracefully
(sleep, shrink zones, reduce substeps) rather than by dropping frames.

---

## 4. Input Recording and Replay

Every input event is recorded to an InputLog. Replay = feed the same log back.

```
struct InputEvent {
    int frame;              // which frame this happens on
    enum Type {
        TOOL_STRIKE,        // unit uses tool at position
        TOOL_SUSTAINED,     // wedge/clamp applied
        TOOL_RELEASE,       // sustained tool removed
        FORCE_APPLY,        // arbitrary force at position
        ZONE_ACTIVATE,      // interaction zone created
        CONFIG_CHANGE,      // parameter override (variant testing)
    } type;
    Vec3 position;          // world-space position
    Vec3 direction;         // strike direction, force direction
    float magnitude;        // force, tool parameter
    uint32_t tool_id;       // which tool (for TOOL_* events)
    uint32_t site_id;       // which active site
};

struct InputLog {
    std::vector<InputEvent> events;  // sorted by frame
    uint32_t seed;                   // for deterministic randomness
};
```

The variant runner creates an InputLog from the scenario definition.
The same InputLog is fed to every variant run [C1 Fairness].
For gameplay recording: the game writes an InputLog during play, which
can be replayed later for evaluation or variant comparison.

Current eval scenarios (`tick()` callbacks) are a special case: the
callback generates InputEvents that get recorded into the log. This
bridges the existing system to the replay system without rewriting
existing scenarios.

---

## 5. World Reset and Snapshot Contract

Between variant runs, the world must be in an identical starting state.
"Identical" means: same grid cells, same material, same bonds (or no bonds
if the scenario activates zones on-demand), same seed, same config.

```
// Before each variant run:
world.reset();                    // destroys all sites
site = world.create_site(cfg);    // fresh Simulation::init()
scenario.setup(site.sim);         // scenario fills grid
site.sim.solver_dispatch = variant.fn;  // set variant
input_log = scenario.build_input_log(); // deterministic input

// Run:
for frame in 0..input_log.frame_count:
    apply_input_events(site.sim, input_log, frame);
    site.sim.step(dt);
    capture_frame(site.sim, frame);

// After each variant run:
site.sim.solver_dispatch = nullptr;  // clear dispatch
// Save run record, then reset for next variant
```

No state leaks between variant runs because `world.reset()` destroys
everything and `Simulation::init()` zeroes all state (grid, bonds,
solver_state, entities, zone, active_forces, damage).

---

## 6. Statistical Decision Policy

Single-run comparisons are noise. The framework requires:

- **Minimum 5 repetitions** per variant per scenario.
- **Noise floor**: run the baseline 5 times first, compute stddev.
  Any improvement smaller than 2x stddev is not significant.
- **Confidence threshold**: a variant is "faster" only if its mean
  minus one stddev is better than the baseline's mean plus one stddev.
  (Non-overlapping error bars, approximately p < 0.05.)
- **Fidelity comparison**: fragment count delta is computed on the
  median run, not a single run.

The run record stores all repetitions. The comparison table reports
mean +/- stddev for timing metrics.

---

## 7. Mode Boundary: Gameplay vs Microbench

Two modes. Never mix them.

**Gameplay mode** (variant runner, eval runner):
- Always calls `Simulation::step()` through the real game loop
- Dispatch hooks swap implementations at defined points
- Measures wall-clock frame time (realistic, includes all overhead)
- Used for: variant comparison, eval review, A/B testing, replay
- Fidelity results are meaningful (same code path as the real game)

**Microbench mode** (solver_bench.cpp, Google Benchmark):
- Calls solver internals directly (solver_substep, generate_bonds, etc.)
- No game loop, no events, no rendering
- Measures kernel time in isolation
- Used for: identifying bottlenecks, profiling hot paths, SIMD validation
- Fidelity results are NOT meaningful (not the full game code path)

**Rule:** Never use microbench results to make fidelity claims.
Never use gameplay-mode results to make kernel-level performance claims.
They answer different questions.

---

## 8. Run Record Schema Versioning

The run record JSON includes a schema version. When the schema changes:
- Increment the version number
- Old records remain readable (readers handle missing fields with defaults)
- New fields are always optional (nullable/defaulted)
- Breaking changes (field renamed/removed) require a major version bump
  and a migration script

```json
{
  "schema_version": 1,
  "meta": { ... },
  "machine_metrics": { ... },
  "human_eval": { ... },
  "capture_path": "..."
}
```

---

## 9. Promote/Demote Contract (Core Architecture Risk)

The promote/demote bridge between field (voxels + bonds) and entity (rigid body)
representation is prototype-quality. For the game, it needs:

- **Re-merge**: fragments that land on the grid should re-bond (demote works,
  but re-bonding to existing grid cells is untested at scale)
- **Partial detachment**: a fragment connected to the main body by a few bonds
  should not be promoted until fully detached
- **Entity-grid collision**: flying fragments should collide with the grid surface,
  not pass through it
- **Dormant entities**: off-screen entities should be cheap (no per-substep stepping)
- **Entity limits**: hard cap with priority queue (closest to camera, most recently
  created, largest mass)

These are NOT framework issues -- they're physics system issues. But the variant
framework must be able to measure them (fragment count, re-merge success rate,
penetration depth) as domain metrics in the solver metric pack.

---

## 10. Workload Telemetry

We don't know the real game workload yet. Before optimizing further, instrument
the game to record actual workload characteristics:

- How many active sites per frame? (steady state, peak)
- How many bonds per active site? (distribution, not just max)
- How many entities at steady state?
- How often do strikes happen? (events per second)
- What fraction of sites are sleeping vs active?
- What's the real frame budget breakdown? (physics vs render vs idle)

This telemetry feeds into the variant framework as the "representative scenario
envelope" -- the set of scenarios that actually match real gameplay. Without it,
we're optimizing for benchmark scenarios that may not represent the game.

---

## 11. How Subsystem Specs Relate to This Document

```
ONE FRAME (this document)
  |
  |-- defines phase order and dispatch hooks
  |
  |-- subsystem specs must conform:
  |     |
  |     |-- docs/variant-framework-spec.md
  |     |     Variant runner uses Phase 3 dispatch hooks.
  |     |     Replay grid is a Phase 6 variant (render captured data).
  |     |     Run records are written in Phase 7.
  |     |
  |     |-- docs/solver-algorithms.md
  |     |     Each algorithm implements the solver_substep dispatch hook.
  |     |     Measured in gameplay mode (Phase 3) and microbench mode.
  |     |
  |     |-- docs/mfd-prototype-design.md
  |     |     Defines the physics model that Phase 3 executes.
  |     |     Promote/demote contract (Section 9 above) extends this.
  |     |
  |     |-- docs/superpowers/specs/*-eval-system-design.md
  |     |     Historical spec for the eval system.
  |     |     Eval and variant runner are ONE tool with modes (see below).
  |     |
  |     |-- (future) audio spec
  |     |     Implements audio_event dispatch hook in Phase 4.
  |     |
  |     |-- (future) animation spec
  |     |     Implements animation_step dispatch hook in Phase 4.
  |     |
  |     |-- (future) AI spec
  |     |     Implements ai_update dispatch hook in Phase 5.
```

---

## 12. One Tool, Not Two

The eval runner and variant runner are ONE executable with modes.
Not two separate programs. Not "coexisting." One binary, one codebase.

```
mfd_eval.exe                          -- default: interactive menu (existing behavior)
mfd_eval.exe --headless               -- existing: run all scenarios, print gates
mfd_eval.exe --variant=packed_brick   -- single variant, interactive visual
mfd_eval.exe --compare                -- run all registered variants on all scenarios,
                                         output comparison table + run records
mfd_eval.exe --replay captures/       -- load captures, open replay grid viewer
mfd_eval.exe --replay --blind         -- replay grid with randomized panel order
```

The existing eval_main.cpp is the starting point. It already has:
- Simulation ownership
- Scenario loading and execution
- Visual mode with GPU renderer + ImGui
- Headless mode with gate checking

What gets added:
- `--variant=X` flag sets solver_dispatch before running
- `--compare` mode runs N variants sequentially, saves captures + records
- `--replay` mode opens the multi-panel viewer on saved captures
- `--blind` flag randomizes panel order in replay mode

This is NOT a rewrite of eval_main. It's adding modes to the existing tool.
The run record schema, the comparison table, and the replay grid are new code
that lives alongside the existing eval logic.

---

## 13. What This Document Decides

| Decision | Rationale |
|----------|-----------|
| 7 fixed phases per frame | Every system knows when it runs. No ambiguity. |
| Dispatch hooks (typed function pointers) | Systems plug in without restructuring the loop. Variant testing swaps hooks. |
| One Simulation per active site | Sites are independent. Parallel. Sleep-able. |
| Activity-based scheduling, not camera-LOD | Matches CLAUDE.md non-camera-centric requirement. |
| Input log for all input | Deterministic replay. Variant fairness. Gameplay recording. |
| Full world reset between variant runs | No state leaks. |
| 5 repetitions minimum | Statistical rigor for variant comparison. |
| Gameplay mode vs microbench mode, never mixed | Prevents false fidelity claims from kernel benchmarks. |
| Schema versioning on run records | Future-proof data format. |
| No-op hooks for unbuilt systems | Frame structure is stable. Adding audio/AI/animation doesn't change the loop. |
