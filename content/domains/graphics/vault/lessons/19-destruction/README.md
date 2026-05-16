# Lesson graphics/19 - destruction: voxel cut, island detection, flood fill

## Tasks

- [ ] Read Teardown design articles (https://www.gamedeveloper.com/design/combining-bombastic-heists-with-a-fully-destructible-voxel-world-in-i-teardown-i-).
- [ ] CPU first: implement a "carve" operation that sets a sphere-shaped region of brickmap voxels to empty.
- [ ] Implement 3D flood fill on the brickmap: starting from each "structural anchor" voxel, walk connected non-empty neighbors.
- [ ] Implement connected-component labeling on the result: any unvisited non-empty voxel becomes a new "island" that has been disconnected.
- [ ] Promote disconnected islands into rigid bodies handled by the XPBD solver from lesson 18.
- [ ] GPU port: carve in a compute shader; flood fill via iterative compute passes (one BFS step per pass; converges in log N).
- [ ] Verify visually: a wall with a hole cut in it; the disconnected chunk falls away.
- [ ] Now break it: skip the connectivity check; cut chunks float in mid-air.
- [ ] Now break it: cut intersects an anchor; entire structure becomes a free body.

## Tools to use here

- `<leader>op` — scratch a 2D version of flood fill first; verify connectivity logic
- `just lab` — interactive destruction: click to cut, watch chunks fall
- `<leader>oq "voxel destruction connected components flood fill"` — Teardown writeup + Ericson ch 4
- Rebuild with `-define:INSTRUMENT=tracy`, attach Tracy — inspect cut + island-detect + promote pipeline live

## Concept

Destruction in a voxel world is three operations composed:

1. **Cut.** Decide which voxels to remove (sphere, capsule, box,
   shaped charge). Set them to empty in the brickmap.

2. **Detect islands.** After the cut, parts of the structure might be
   disconnected from their "anchors" (e.g., the ground). Find them:
   flood fill from anchor voxels through still-non-empty neighbors;
   unvisited voxels are new disconnected islands.

3. **Promote.** Each disconnected island becomes a rigid body (or a
   soft body via lesson 18's XPBD). It now falls under gravity. The
   brickmap representation of its voxels gets handed to the physics
   layer.

This is the architectural thesis of `../projects/ultimate-flat/PIVOT.md`:
the brickmap is the source of truth for structure; islands become
dynamic; the renderer (lesson 17 raymarch) sees both unified.

Flood fill on a brickmap:
- BFS or DFS from anchor voxels.
- At each voxel, check 6 (or 26) neighbors. If non-empty and unvisited,
  enqueue.
- Bookkeeping: a visited-flag per voxel (1 bit), a queue (or stack).
- GPU version: iterative compute passes, each pass propagates "visited"
  one step. Converges in O(longest_path) passes; for a typical scene
  this is ~50 passes per frame, fine.

Connected-component labeling (CCL) is the generalization. 3D versions
of Hoshen-Kopelman or Lindblad-Heyman exist; for game purposes, the
"flood from anchors; everything unvisited is a separate island"
approach is enough.

Sources: Teardown writeups (the original game-developer.com piece is
the authoritative source; there are several blog-post follow-ups
linked from there), Ericson "Real-Time Collision Detection" ch 4 + 7
for the spatial-query side, Hoshen-Kopelman 1976 original paper for
the CCL theory (search engine; many copies online).

## Setup

CPU first in `bench/destruction-cpu/` or `lab/src/game/destruction.odin`.
GPU port in compute shaders alongside the lesson-17 raymarcher.

## Do this

Three sub-steps:

1. **CPU cut + flood fill on a small test brickmap (32^3 voxels).**
   Carve a sphere in a wall; flood fill from "ground" anchors; verify
   the disconnected chunk is identified.

2. **Hand the island to XPBD from lesson 18.** Each voxel becomes a
   particle; bonds within the island are distance constraints; gravity
   applies. Render via the lesson-17 raymarch with the chunk's
   transform applied.

3. **GPU port.** Cut: one compute dispatch. Flood fill: K iterative
   compute passes (one BFS layer per pass). Promote: detect island
   sizes on GPU, write to a queue of promotion candidates that the CPU
   reads back and converts to physics bodies.

## Run

    just lab

A voxel wall. Click to cut. Disconnected chunks fall. Hot-reload
parameters (cut radius, gravity, bond stiffness).

## What just happened

You have built the core loop of a destruction engine. Lesson 16 gave
you the brickmap. Lesson 17 gave you the renderer. Lesson 18 gave you
the physics. Lesson 19 closes the cycle: destruction modifies the
brickmap, connectivity analysis surfaces new free bodies, physics
handles them, the renderer sees the result. The PIVOT.md prototype's
"promote/demote bridge" is now testable.

## Now break it

1. Skip flood fill. Chunks float because they're still part of the
   "structure" tagged voxels even though physically disconnected.
2. Use 6-connectivity instead of 26-connectivity. Diagonal-only
   touches don't propagate; "stable" structures fragment more.
3. Forget the visited-flag reset between frames. Flood fill skips
   newly-cut regions because their voxels are still flagged from
   last frame.
4. Promote islands faster than the renderer can absorb the change;
   visual tearing as the brickmap-vs-physics-body representation
   gets out of sync.

## Find more like this

    just substrate-search --bm25 "voxel destruction flood fill connected component" --top 5

## Next: this is the end of the planned curriculum.

If you got here, you have a destructible voxel world running on GPU.
What's next is your call: ray-traced reflections, multi-material
shading, networked destruction sync, audio-reactive geometry, asset
pipeline for hand-modeled brickmaps. Lesson 20+ is for you to draft.

See `ENGINE.md` at the repo root for the longer-term vision (the six
dev tools, hot-reload affordances, when to build what), and
`../README.md` (this curriculum's master index) for cross-reference
against `lab/PLAN.md` phases.
