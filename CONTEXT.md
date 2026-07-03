# Observability — Domain Language

Vocabulary for `tele`, the lab game's observability layer: what we capture about a running program and how we classify it. Glossary only — design lives in the tele spec.

## Core

**Source**:
The running program and its variables — the thing observed. Exists whether or not anyone watches it.
_Avoid_: target, the app

**Telemetry**:
The *gathering* of data about the Source, and the body of data points that gathering produces — a mass noun, like *data* or *information*. Not a single point (that's a **Record**).
_Avoid_: logging, logs, metrics (each names only a slice); "a telemetry" for one point — that's a Record.

**Record** (formally *telemetry record*):
One telemetry data point — the **measured value** (a single value, or a collection like an array) plus its **metadata**: the context it was captured in (when, where, name, type, frame, where it came from, how acquired … — exact field set TBD). A copy, never the live variable. The *datum* to Telemetry's *data*.
_Avoid_: sample, entry, event (and "a telemetry")

**Cadence**:
How often (or under what condition) a Record is created — every frame, on-change (delta), every N, or on-trigger (a predicate fires). It sets the temporal **resolution**: you can only ask over-time questions at the rate you sampled, so under-sampling *aliases away* transient values (a one-frame spike between samples is unrecoverable). This is why "record everything every frame" maximizes what's answerable — though the irreversibility holds only for *nondeterministic* runs: a deterministic sim can replay inputs+seed and re-capture at any resolution after the fact (tele spec §18, replay-on-demand). Implemented by the `every` / `rate` / `cond` gates.
_Avoid_: "rate" as the umbrella term (that's just one gate); polling, frequency

**Reader**:
Who a telemetry record is rendered for. Two are first-class: **Human** (colored, pretty) and **Machine** (flat, greppable — an agent or the claim harness). `TELE_FORMAT=both` renders both — a composite of the two, not a third Reader. Some inspectors are Human-only by design (e.g. `dump`).
_Avoid_: user, audience, consumer

## The three axes

Every captured value sits at one point on each axis. The three are independent **except** one forbidden pairing — Ambient ⇒ System (see the note below) — so 6 of the 2×2×2 = 8 cells are legal.

**Provenance** — where the value comes from:
- **Declared** — a variable the programmer wrote (`player.hp`, `frame`).
- **Ambient** — supplied by the compiler/runtime, never a variable (`#caller_location`, type, timestamp, address).
_Avoid_: origin

**About** — what the value concerns:
- **System** — the program-as-machine (frame, time, memory, locations).
- **Domain** — the game world the program models (health, position, score).
_Avoid_: referent, scope

**Derivation** — how the value is produced:
- **Raw** — primary state, set directly.
- **Derived** — computed from other values; the over-time case (history, rate, min/max) is its temporal subset.
_Avoid_: computed, aggregated

> **Ambient + Domain is impossible**: ambient facts come from the compiler/runtime, which knows only the machine, never the game.

## Slices

**Value slice**:
Telemetry about variables' data — *what a value is, how it changed*. Captured explicitly (`dbg`, `observe`).
_Avoid_: `watch` — that's the hot-reload verb (`just watch`, lab DLL reload) which *acts on* runtime; `observe` only records it.

**Execution slice**:
Telemetry about control flow — proc enter/exit, duration, call depth, call count. Always Ambient + System; on the Derivation axis it spans both — the enter/exit event is Raw, while duration / call-count / depth are Derived. Capturable automatically via Odin's `@(instrumentation_enter/exit)` hooks. The slice profilers own.
_Avoid_: tracing, profiling (those are tools over this slice)

**Correlation**:
A Value-slice capture joined to its Execution-slice context (which proc / depth / frame / time it occurred in). What `tele` uniquely provides — a value log lacks *where it ran*; a profiler lacks *the value*.

## Collection mechanisms

**Feeder**:
Anything that manufactures Records. Telemetry only *stores and renders* what it is handed — it never discovers a value on its own (a compiled binary has no name→local table, so the name must come from source text or a hand-typed call). Three feeders: the two automatic ones below (**Hook**, **Weaver**), plus **you** (the hand-called `dbg` / `observe` / levels).
_Avoid_: source (that's the program), producer, collector

**Hook**:
The compiler-injected `@(instrumentation_enter/exit)` pair — fires on every proc, whole-program, with zero call-site edits. Captures the **Execution** slice at *runtime*. Gives proc address + return address + `loc`; it does **not** see arguments or locals, so it cannot capture values. The **hook** is the *mechanism* (the attribute + the compiler emitting a call to it); the procedure it calls is its **handler** (a generic role — listeners, signals, routes all have handlers too). Don't conflate: one hook *has* one handler.
_Avoid_: callback, trampoline; "hook" for the procedure (that's the *handler*)

**Weaver** (verb: *to weave*):
A **build-time** tool that rewrites your source *before* it compiles — parses each `.odin` file, finds the capture points (declarations, assignments, loop variables), splices in telemetry calls, then hands the rewritten source to `odin build`. This is how the **Value** slice is captured "for free": you name nothing, the weaver injects it. Because the runtime cannot see named locals, weaving is the *only* way to get values without hand-writing them.
_Avoid_: macro (the in-band cousin Odin lacks — see below); preprocessor (too C); codegen (too broad)

**In-band vs out-of-band** — how a source transform is run:
- **In-band** — the transform runs *inside* the compiler during one `odin build`; the generated code is ephemeral and the pipeline isn't yours. A **macro** is the in-band form.
- **Out-of-band** — the transform is a *separate pass you run first*; the rewritten source is a real, inspectable file and you own the build pipeline. The **Weaver** is out-of-band.

Odin has **no macros / in-band metaprogramming, by design** (gingerBill's stance), so all our weaving is out-of-band. We say **weaver**, never **macro** — the word *macro* is recorded only against the chance Odin gains them later.

## External tools

**Profiler**:
A downstream viewer over the Execution slice — **Tracy** (live; streams over a localhost socket to a separate GUI) and **Spall** (offline; emits a trace file opened in a viewer). A presentation target, not a Source; neither is claim-readable. (Tracy's `tracy-csvexport` can dump aggregate zone stats/plots/zone text from a capture, but never our full-fidelity value Records — so it's a partial escape hatch, not a substitute for the owned sink.)

## Capture architecture (decided 2026-07-01)

**Spine**:
The single capture path every measurement flows through. It stamps the shared **coordinates** (proc, call-id, depth, frame, high-res timestamp) onto each Record at capture time — the only moment correlation is possible, since separate logs can't be joined after the fact (Tracy's export returns only aggregate zone/plot data, never our full-fidelity Records). All feeders (Weaver, Hook, hand-called `dbg`/`observe`) funnel here.
_Avoid_: bus, pipeline (that word is reserved for the swappable-technique sense in `CLAUDE.md`)

**Sink**:
A destination the spine fans a Record out to. Two roles: **Tracy** — the *real-time* sink, rented not rebuilt (forward a flattened value via `ZoneValue`/`TracyPlot` for its live GUI); **our postmortem recorder** — the *owned* sink (per-thread buffers reassembled by timestamp after the run), which alone carries full-fidelity values + coordinates and emits greppable/agent-readable records. The postmortem recorder **replaces Spall** for us (Spall is timing-only; ours is a superset). One woven `capture(x)` writes the full value to our sink and a flattened copy to Tracy.

**Correlation is capture-time, and multithreaded** (the game *will* be multithreaded — 2D + 3D versions coming). Two irreducible concurrency problems: **safe concurrent writes** (→ per-thread buffers, no locks/atomics on the hot path) and **reassembly/ordering** (→ a shared monotonic timestamp per Record). These are not Tracy bloat — any multi-thread capture needs them. Going postmortem is what lets us skip Tracy's *real-time* concurrency machinery: record per thread, merge at flush. Hot path is a memcpy into the next thread-local slot; all formatting/join/I/O/forwarding is deferred.

> **Why this split:** own the cheap-but-essential postmortem recorder (it must hold our enriched, queryable data — Tracy/Spall can't), rent the expensive real-time viewer (Tracy). Steal Tracy's *catalog* of what's worth recording, not its *engine*.

**Status (2026-07-01):** the Value slice (Weaver) ships; the correlated spine, the postmortem sink, per-thread capture, hook *emission* (hooks only count today), frame-as-global-coordinate, GPU timestamps, and over-time cadence are the intended-but-unbuilt capture layer. Full intent + gap list: tele redesign spec §18.

## Replay & time travel (recorded 2026-07-03 — intent in spec §18 gap 7 + §19)

**Boundary**:
The single recorded seam through which *all* nondeterminism enters the sim — inputs, RNG seed, time (the host passes dt/frame in; the sim never reads the clock). Determinism holds iff nothing leaks around it; the guard detects a leak, only an enumerated Boundary locates it.
_Avoid_: input system (that's one tributary, not the seam)

**Replay**:
Re-running the sim from the recorded Boundary (inputs+seed). Determinism makes a Replay ≡ the original run, so any value you failed to capture is recoverable — weave *for the question*, replay, analyze (**replay-on-demand**). This is the qualifier on Cadence's "aliasing is irreversible."
_Avoid_: rerun, playback

**Snapshot**:
A memcpy copy of the sim state block at one frame — possible only while that block stays pointer-free and self-contained (spec §19 constraint 1). Restore + Replay-forward is how you reach an arbitrary frame fast.
_Avoid_: save point, checkpoint

**Timeline** / **Rewind**:
The Timeline is the whole run addressable by frame (snapshots every K frames + the input log); Rewind(N) = restore the nearest Snapshot ≤ N, Replay to N. A save point is just a bookmark on the Timeline — the Timeline is the general thing. Dev tool first; possibly a gameplay mechanic later (same substrate).
_Avoid_: undo; "time travel" as the mechanism name (it's the experience, not the machinery)

**Divergence**:
The first Record at which two runs' streams differ (name, frame, proc) — the output of differential debugging (good run vs. bad run, exact because runs are deterministic). Across an *edit*, alignment breaks at renames — reported honestly, not papered over.
_Avoid_: diff (that's the operation; Divergence is the finding)

**Envelope**:
A mined invariant — the observed range/ordering a value or event held across healthy runs (`vel.y ∈ [-600, 0]`). Violations upgrade the flight recorder's hand-written NaN/out-of-range triggers to learned ones.
_Avoid_: bounds, threshold (hand-picked; an Envelope is inferred)

**Analysis layer**:
Where Records become answers: flush emits a boring standard format (NDJSON) beside the greppable lines, and existing engines (DuckDB/polars) do the querying — derivation happens at query time, never on the hot path. We build no query language and no viewer here.
_Avoid_: query engine, dashboards
