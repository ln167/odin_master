# Lesson graphics/13 - compute shaders: dispatch, workgroups, storage buffers

## Tasks

- [ ] Create an SDL_GPUComputePipeline from a compute shader (.comp or HLSL CS).
- [ ] Allocate a storage buffer of N floats; write a kernel that doubles every entry.
- [ ] Dispatch with SDL_DispatchGPUCompute(cmd, num_groups_x, 1, 1) where num_groups_x = ceil(N / workgroup_size_x).
- [ ] Read back the buffer; verify values doubled.
- [ ] Try varying workgroup_size (8, 32, 64, 256) and num_groups; observe occupancy via Tracy or just timings.
- [ ] Implement a parallel reduction (sum N floats); compare to a sequential CPU sum.
- [ ] Now break it: write to the same buffer index from two threads in a workgroup; observe race condition.
- [ ] Now break it: dispatch with num_groups_x=0; nothing happens, but no error either.

## Tools to use here

- `just lab` — run; F1 to trigger compute dispatch (see your bound key)
- `python lab/build.py hot` — rebuild after kernel edits
- `<leader>oq "compute shader workgroup dispatch storage buffer"` — vkguide GPU-driven section
- Rebuild with `-define:INSTRUMENT=spall`, then `just profile-run lab.exe` to capture per-dispatch timings
- `<leader>op` — scratch a tiny compute kernel in isolation before adding it to the engine

## Concept

Compute shaders are *general-purpose GPU programs* that don't fit the
graphics pipeline. No vertex stage, no fragment stage, no triangles.
Just: "run this code on each element of a buffer, in parallel."

The mental model:

- **Threads** are individual invocations. Each has a unique
  `gl_GlobalInvocationID`.
- **Workgroup** = a fixed-size batch of threads that share memory and
  can synchronize via barriers. Sizes are declared in the shader:
  `layout(local_size_x = 64) in;`.
- **Dispatch** = (num_groups_x, num_groups_y, num_groups_z) workgroups.
  Total threads = product of all three multiplied by the workgroup size.
- **Storage buffers** = the I/O channel. Bind read/write, dispatch,
  threads read/write the buffer.

GPUs are SIMD machines disguised as multi-core. A "warp" or "wavefront"
(32 or 64 threads, depending on vendor) executes in lockstep. Branches
that diverge within a warp cost performance. Memory accesses that hit
the same cacheline win; scattered accesses lose.

This lesson is the doorway into GPGPU. Everything from here on
(GPU-driven rendering, voxel raymarching, XPBD on GPU) uses compute.

Critical caveat: SDL3-GPU's compute support is solid (storage buffers,
storage textures, dispatch) but not all hardware features are exposed.
Atomics, shared memory, subgroup operations: check the wiki before
relying on them.

Sources: vkguide.dev "GPU-driven section" intro (Vulkan, but concepts
port), SimonDev's compute shader videos (concepts; framework is WebGL2
so strip API parts), Wronski blog on compute optimization.

## Setup

In `lab/src/game/`. Add an `init` step that creates a compute pipeline
and a storage buffer. A button (`F1`) triggers a compute dispatch and
prints results.

## Do this

Three sub-experiments:
1. Hello-compute: storage buffer of N=1024 floats, kernel that adds 1
   to each. Verify on CPU readback.
2. Workgroup size sweep: time the same dispatch with workgroup sizes
   8, 32, 64, 256. Plot perf vs size.
3. Parallel reduction: sum 1M floats. CPU sum O(N); GPU sum
   O(log N) via tree reduction. Verify identical result (modulo float
   non-associativity).

## Run

    just lab

Press `F1` to dispatch the compute job. Stdout shows the result and
the timing.

## Now break it

1. Write to a shared buffer index from two threads in a workgroup
   without atomics. Race condition; non-deterministic results.
2. Dispatch with num_groups_x = 0 in one dim. Nothing runs; no error.
   Common silent bug.
3. Use a workgroup_size that's larger than the GPU's max (1024 on
   most desktop, 256 on some mobile). Compile-time error if you
   declared statically; runtime error if specialized.

## Find more like this

    just substrate-search --bm25 "compute shader workgroup dispatch storage buffer" --top 5

## Next: `14-bindless-and-descriptor-indexing/`
