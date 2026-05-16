# Lesson graphics/16 - spatial structures: uniform grid, sparse voxel octree, brickmaps

## Tasks

- [ ] Implement a 3D uniform grid on CPU: store N points + a hash map from cell coord to point IDs.
- [ ] Implement neighbor queries (k-nearest, radius search) via grid traversal.
- [ ] Read Ericson "Real-Time Collision Detection" ch 7 (book; physical reference).
- [ ] Implement a sparse voxel octree (SVO): pointer-based, recursive; each node either is a leaf or has 8 children.
- [ ] Convert SVO to brickmap representation: top-level coarse grid pointing to "brick" leaf tiles (8x8x8 voxels each).
- [ ] Bench grid vs SVO vs brickmap memory + query speed for 1M voxels.
- [ ] Now break it: use a 2D grid for 3D points (collapse Z); observe degeneration.
- [ ] Now break it: brickmap with too-small bricks (1x1x1, equivalent to a pointer-only grid); memory blows up.

## Tools to use here

- `just bench grid-vs-svo-vs-brickmap` — comparative perf is the lesson's payoff
- `<leader>oq "octree brickmap spatial hash"` — Ericson + Teardown writeups
- `<leader>op` — scratch a 2D version of each structure first; 3D is hard to debug cold

## Concept

Three data structures, all for the same problem: "I have N voxels in a
large volume. How do I query 'what's at (x, y, z)?' or 'what's near
(x, y, z)?' fast?"

1. **Uniform grid.** Divide space into cubic cells. Each cell holds a
   list of contained points. O(1) per-cell lookup; O(items_per_cell)
   per neighbor query. Memory: O(total_cells) + O(N). Fails when items
   are extremely sparse (most cells empty, wasted memory) or extremely
   dense (long lists per cell).

2. **Sparse voxel octree (SVO).** Recursive 8-way split. Sparse: only
   subdivides cells that have content. Memory: O(N log N) typically.
   Lookup: O(log N). Branchy traversal is slow on GPU.

3. **Brickmap.** Hybrid: top-level coarse grid (e.g., 256^3 cells)
   pointing to "bricks" (e.g., 8^3 voxel tiles). Each cell is either
   empty (1 pointer = 0) or points to a brick. Sparse where you want
   it, dense within bricks. Cache-friendly traversal. Used by Teardown,
   Dreams (Media Molecule), and others.

For the destructible-world target: **brickmap is what you want**. It
matches modern GPU caches. SVO is academically clean but underperforms
in practice. Uniform grid is fine for prototyping.

Traversal:
- Uniform grid: integer-divide by cell size; index.
- SVO: walk down 8-way; per-step, test which child contains the query
  point.
- Brickmap: integer-divide by cell size to get top-level cell; if
  non-empty, descend into the brick (another integer-divide); leaf
  level is the voxel.

Sources: Ericson "Real-Time Collision Detection" ch 7 (physical book),
Teardown writeups
(https://www.gamedeveloper.com/design/combining-bombastic-heists-with-a-fully-destructible-voxel-world-in-i-teardown-i-),
van der Laan's brickmap papers for the original technique.

## Setup

CPU-only implementation in this lesson. GPU traversal comes in
lesson 17 (raymarching) which builds on this. Implementation in a new
package: `lab/src/spatial/` or similar. Or as a standalone Odin file
under `bench/` to measure perf.

## Do this

Three sub-steps in order:
1. Uniform grid. Insert 1M random points. Query "nearest within
   radius=2" 1000 times. Time it.
2. SVO. Same. Compare.
3. Brickmap. Same. Compare.

Memory: log peak RSS. Time: log per-query latency. Pick the winner
on your hardware.

## What just happened

Spatial structures are about the *access pattern of your application*,
not abstract complexity. For a destruction engine with mostly-empty
space and clustered geometry, brickmaps win because:
- Cache: a brick fits in L1.
- Sparsity: 99% of space is air, 1 pointer per top-cell.
- Modification: editing one voxel touches one brick.

For path tracing where every ray needs O(log N) traversal, SVO is
sometimes better. Pick per workload, not from first principles.

## Now break it

1. Use float keys instead of integer cell indices for the uniform
   grid hashmap. Hash collisions destroy O(1) lookup.
2. SVO without lazy subdivision (subdivide every cell to max depth).
   Memory blows up to a dense grid's worst case.
3. Brickmap with bricks bigger than the top-cell granularity.
   Mathematically valid; cache-hostile.

## Find more like this

    just substrate-search --bm25 "octree brickmap uniform grid spatial hash" --top 5

## Next: `17-voxel-raymarching/`
