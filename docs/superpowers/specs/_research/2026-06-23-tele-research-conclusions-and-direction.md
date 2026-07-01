# tele — research conclusions & design direction (2026-06-23)

Evidence-backed conclusions to survive compaction. Three confidence tiers, marked per item:
**[RAN]** = I verified by compiling/running code this session. **[SWEEP]** = found by the 457-feature
Odin capability sweep, with a source_ref (not independently run). **[DECISION]** = a design direction
we agreed in the grilling session (not yet spec'd).

Companion files:
- Full capability catalog: `_research/2026-06-23-odin-telemetry-capabilities.md`
- Raw 457-feature evidence: `_research/2026-06-23-odin-telemetry-capabilities-raw.json`
- Agreed vocabulary (glossary): repo-root `CONTEXT.md`
- Current (now-superseded-in-direction) design: `2026-06-21-tele-observability-design.md`

---

## 0. NEXT — resume here

**STATUS (2026-06-28): the spec rewrite is DONE.** It lives at
`docs/superpowers/specs/2026-06-28-tele-observability-redesign.md` (**v2** — an independent subagent
review of 16 findings has been folded in). That document is now the authority; the rest of this file
is background/evidence. **Resume = owner reviews the spec, resolves its §13 open decisions, then start
phase W0** (dial redesign `off|on|max`, delete `steroids`, migrate the `steroids`-coupled claims).
Mechanism de-risking: weaver happy-path runs (`agent-scratch/weave-demo/`), hooks proven
(`claims/tele/instrument-hooks` PASS). Known-unhandled (all assigned to W2 in the spec): do-forms,
relative imports, switch/when, pointer/map determinism, line-preservation (same-line injection), `seq`.

Original framing (kept for context):
Vocabulary is settled (`CONTEXT.md`). The job was: **write a new tele spec that supersedes
`2026-06-21-tele-observability-design.md`**, in a brainstorming/grilling flow.

**Requirement #1 — the north star (drives everything else):** *zero manual instrumentation — full
observability for "free," compiled out at `off`.* "Free" = the developer never types a log line; the
compiler's `@(instrumentation_enter/exit)` hooks do the work. Free-in-dev-effort ≠ free-at-runtime —
that's what the dial is for. This is the **original reason the project exists** ("I don't want to
hand-add logging statements anymore"); flight recorder + data-science are *downstream payoffs*, not the
driver. Corollary settled this session: when collection is free, "do I need this value?" stops being a
per-variable question — you have it everywhere, so the data is already there when a bug appears (no
re-instrument, no repro). NB "if it's not slow, who cares" applies only to the **perf/execution** slice;
the **value/correlation** slice is for **correctness** bugs (un-anticipated, un-reproducible) where
already-having-it is the whole point.

**Two headline changes:**
1. **Redefine `max`** (today `steroids`, a dead no-op): dial becomes `off = gone · on = lean ·
   max = record-everything` (value + execution + correlation = the flight recorder). Remove or realize
   the dead `STEROIDS` constant.
2. **Anchor the spec on Requirement #1.**

**Must absorb (already decided — see §4/§5):**
- Flight recorder = always-record + dump/bookmark on trigger. Triggers: **lab = manual key combo**;
  **headless = programmatic** (assert fail, NaN/out-of-range, determinism divergence, end-of-run) — the
  automatic ones are the prize. Retention: finite runs = full firehose (volume is fine); lab 60fps =
  **bounded ring + dump-on-trigger**. Keep the *write* off the hot path; keep the log grep-able.
- **Correlation** = the thing worth inventing (a value tagged with its execution context). Build
  **correlation-lite first** (live proc/depth/frame cursor, near-free); full enter/exit trace only for
  spall export or deep forensics.
- **Profilers stay downstream** (Tracy live socket / Spall offline file). Optionally export the
  execution slice to spall; don't rebuild them.
- **Robustness nits the always-on recorder forces** (also §5): tracy `_tracy_stack[64]` needs a depth
  guard; spall backing leak (`make` never freed) needs free/reuse; `observe(any)` of a pointer/slice
  leaks addresses → needs a determinism rule + a claim.
- **The recording is forensic, not claim-tested** (§4): nondeterministic, read after the fact; claims
  keep testing only the lean deterministic slice.

**Open the spec with this framing (this session's insight):** tele design is *instrument / experimental
design*, not feature code — it's the cross-cutting concern (AOP aspect; the `@(instrumentation_*)` hooks
literally ARE AOP). The failure mode is the clinical-trial one: **you can't recover data you didn't
collect** (under-sampling aliases transients away — irreversible), and the probe perturbs (observer
effect). Collection = measurement (no emergence); the *analysis* layer is where combining records yields
insight. So the rational default is **record-everything**, gated by the dial.

**Still genuinely open (decide during the rewrite):**
- **Metadata-field set** (TBD): which coordinates every Record must carry; which are Raw vs Derived
  (e.g. duration is Derived). Deliberate grill.
- **Which retention mode to build first** — finite firehose vs bounded ring.
- **Analysis-layer concepts** to define in-spec, NOT the glossary: generalized Correlation
  (record×record / value×value), Absence / negative-space (what *wasn't* recorded; bounded by Cadence),
  the invariant / auto-trigger family.
- **UNVERIFIED:** do *inlined / foreign / `"contextless"`* procs fire the instrumentation hooks?
  (`instrument-hooks` proved whole-program for ordinary core procs; didn't probe these.) Settle before
  claiming "every function is captured."
- **Latent:** the lab's `observe` ImGui panel needs a human visual eyeball (`just lab`) — not
  claim-testable.

---

## 1. Verified by running [RAN]

- **Odin has automatic, compiler-injected function instrumentation. CONFIRMED.**
  - `@(instrumentation_enter)` / `@(instrumentation_exit)`, signature:
    `proc "contextless" (proc_address, call_site_return_address: rawptr, loc: runtime.Source_Code_Location)`
  - Spike: a program with only 3 of my own procs (`main`/`foo`/`bar`) read **enter=19, exit=18** →
    the hooks fire **whole-program, including `core`/`runtime` procs**, with **zero call-site edits**.
  - `@(no_instrumentation)` is **required** on the hook procs (and anything they call) or you get
    infinite recursion.
  - `runtime.Source_Code_Location.line` is **`i32`**, not `int` (compile error on direct assign to int).
  - `loc` is delivered and usable (real source location from the calling file).
  - **Now pinned as a durable, re-runnable claim:** `claims/tele/instrument-hooks` (PASS). Asserts, as
    toolchain-robust booleans (exact counts vary by toolchain): `@(no_instrumentation)` suppresses the
    hook, and a plain `fmt.println` fires core-proc hooks with zero call-site edits. No build flag
    needed — defining the hook procs is sufficient. Replaces the discarded spike; finding is no longer
    prose-only.
  - **Still UNVERIFIED** (spike didn't probe): whether *inlined*, *foreign*, or `"contextless"` procs
    fire the hooks. Inlined matters — an inlined call emits no `call`, so it likely won't trace; verify
    before claiming "every function" is captured.
- **Tracy backend builds and links.** Ran `python tools/profiler/build_tracy.py` (MSVC via vcvars64) →
  `tracy.lib` (881 KB, **`.gitignore`d** — absent on fresh checkout). `-define:INSTRUMENT=tracy`
  compiles + links + runs (prints sentinel, exit 0). Tracy is a *connected* profiler (localhost socket
  to a separate GUI) — no self-contained trace file like spall.
- **tele regression suite re-verified & grown 14 → 34 claims** (run-X-see-Y across P0–P9 + corners:
  steroids==on, dump-ignores-FORMAT, dbg8, every(n<=0), levels→file & counters→file
  (`p5-levels-file`/`p7-counters-file`), `INSTRUMENT=both` (`p8-scope-both`), the auto-instrumentation
  hooks (`instrument-hooks`), all off-paths). `p8-scope-spall` was hardened to compare header-vs-zoned
  byte length — a header-only spall file already has bytes, so the old `len>0` check was a false-PASS.
  All PASS. Separate from this research, but the coverage is now real, not assumed.

## 2. Key capabilities we are NOT using but should [SWEEP]

Ranked. Source_refs are into the local Odin toolchain (`C:/Users/user1/odin/dist`).

1. **Auto-instrumentation hooks** (see §1) — the basis for the Execution slice with no manual calls.
   Spall's auto mode IS these hooks: `core/prof/spall/doc.odin:39-47`.
2. **`core:reflect` structured walking** — `type_info_of` + `Type_Info_Struct.{names,offsets,types,tags}`,
   `struct_fields_zipped`, `enum_string`, `struct_tag_lookup`. We use `fmt %#v` (a black-box string);
   reflect gives queryable per-field records + honors field tags like `tele:"skip"` / `tele:"per_frame"`.
   `core/reflect/reflect.odin:677,713,773`.
3. **`reflect.equal`** (`reflect.odin:1818`) — deep value equality → **delta capture** (record only what
   changed) → kills volume for high-frequency watches. Directly serves value-over-time.
4. **`mem.Tracking_Allocator`** (`core/mem/tracking_allocator.odin`) — a whole memory-observability axis
   we don't touch: leaks, per-call-site bytes (uses the loc we already capture), per-frame peak via
   `tracking_allocator_clear()`. One `context.allocator` swap.
5. **`encoding/json.marshal_to_writer` + `Marshal_Options{sort_maps_by_key, use_enum_names}`**
   (`core/encoding/json/marshal.odin:160`) — reflection-driven **deterministic NDJSON** straight to the
   sink → makes machine output claim-diffable.
6. **Context callback swaps** (`base/runtime/core.odin`) — installing `Assertion_Failure_Proc` (+Logger,
   +Allocator) captures **every assert/panic with its loc before the crash** = last-event-before-death.
7. **`core:container/queue` + `small_array`** — bounded **ring buffer** for rolling history (we use
   unbounded `[dynamic]`+`map`). The flight-recorder's tape.

## 3. Determinism map — governs what claims can assert [SWEEP]

- **Exact / assertable:** all compile-time facts (`#file/#line/#column/#procedure`, `size_of`/`offset_of`,
  `typeid`, `intrinsics.type_*`, `ODIN_*`); all reflection metadata (field names/offsets/types/tags, enum
  tables); value conversions (`fmt %v/%#v/%T`, `reflect.as_i64/...` — **except floats**); storage
  iteration order of `[dynamic]`/`Queue`/`#soa`.
- **Must `<...>`-wildcard / normalize:** wall clock & monotonic timestamps (`time.now`, `tick_now`,
  durations), cycle counters (`read_cycle_counter`), pointers/addresses (`%p`), **`map` iteration order**
  (sort first or `sort_maps_by_key`), throughput numbers, thread ids, spall embedded timestamps.
- Cleanest deterministic-assertable record = caller-loc fields + reflected non-float name/value pairs +
  a wildcarded timestamp.

## 4. Design direction agreed this session [DECISION]

Not yet spec'd; supersedes the steroids handling in the 2026-06-21 design.

- **Conceptual model is locked in `CONTEXT.md`:** Source vs Telemetry; the three axes
  (Provenance Declared/Ambient · About System/Domain · Derivation Raw/Derived); Value vs Execution
  slice; Correlation; Profilers as downstream viewers. (Ambient+Domain is impossible.)
- **The thing worth inventing = Correlation:** tag each Value capture with its Execution context
  (current proc / depth / frame / time). Neither a value-log (no *where it ran*) nor a profiler
  (no *value*) has both. This is tele's unique value.
- **`max` redefined.** It is NOT "on with the volume up" (that was a no-op; `STEROIDS` is a dead constant
  today, `ENABLED := on || steroids`). `max` = the **flight recorder**: always record value + execution +
  correlation. Dial becomes **off = gone · on = lean · max = record-everything**.
- **Why flight recorder:** the debugger only helps *after* you suspect a bug and *if* you can reproduce
  it. Always-on recording inverts that — the bug already happened *into the recording*; you read the tape
  after. Solves the un-anticipated + un-reproducible class (the real pain).
- **Retention:** user accepts huge volume ("100 GB, who cares") for **finite** scratch/repro runs → a
  full-session firehose is fine there. The **lab** (long-running 60fps) needs a **bounded ring + dump-on-
  trigger**. Same feature, two retention modes by context. Constraints that remain: keep the *write* off
  the hot path; be able to *grep/query* the big log afterward.
- **Triggers (dump/bookmark):** **lab = manual key combo** ("I saw something funky — mark it"; a labeled
  bookmark into the tape, since we're streaming it all anyway). **headless = programmatic** (assert fail,
  NaN/out-of-range, determinism divergence, end-of-run). The *automatic* triggers are the prize — they
  catch what you didn't know to look for.
- **Profilers stay downstream.** Tracy/Spall are VIEWERS of the Execution slice, not tele's source of
  truth, and are **not agent- or claim-readable** (live socket / binary trace, nondeterministic). We own
  *collection* (unavoidable for correlation); optionally **export the execution slice to spall** (open
  format, already linked) for human flame graphs. Don't rebuild their product. (Licensing: Spall's
  standalone *viewer* is commercial/freemium; the trace *format* + emitter `core:prof/spall` are open
  (BSD-3); Tracy is fully BSD-3. So depending on the spall viewer has a cost; the format does not.)
- **The recording is forensic, not tested.** A flight-recorder dump is timestamp/address-laden
  (nondeterministic) → read by a human/agent *after the fact*, NOT diffed by the claim harness. Claims
  keep testing only the lean deterministic slice (§3). Don't conflate "record everything" with "assert
  on everything."
- **Cost staging:** *correlation-lite* = a live "current proc/depth/frame" cursor tagging values
  (near-free, no retained trace). *Full trace* (enter/exit stream) only needed for the spall export or
  full execution forensics. Build lite first.

## 5. Open / next

- `CONTEXT.md` vocab — **resolved this session:** Telemetry = mass noun / **Record** = one data point
  (datum-to-data); a record is measured-value (scalar *or* collection) + context, nothing more; axes
  independent except Ambient⇒System; Execution slice spans Raw+Derived; `watch`→`observe`.
  **Subject/Coordinate is NOT an axis** — it's an analysis-layer *role* (indexing a record by one of its
  own metadata fields, e.g. frame); kept out of the collection glossary, spec'd later if needed.
  **CONTEXT.md stays at repo root** (single context, per domain-modeling). Then **rewrite/supersede**
  the 2026-06-21 tele spec for the flight-recorder direction + `max` redefinition.
- **Analysis-layer question-classes for the spec** (named, kept OUT of the collection glossary): (1)
  **generalized Correlation** — join *any* records by a shared coordinate (value×value, not only the
  value×execution that `CONTEXT.md`'s Correlation entry scopes); (2) **Absence / negative-space** — "what
  wasn't recorded" (a proc that should've fired didn't, a stale value, a gap in the stream); answered by
  expected-vs-actual reasoning, bounded by **Cadence**; (3) the **invariant / predicate auto-trigger**
  family — |Δv|>100, stuck-when-should-move, NaN/Inf/range, monotonicity break, oscillation, conservation
  drift, mem growth, determinism divergence — the high-value automatic bug-catchers (and the flight
  recorder's automatic dump triggers).
- **Over-time is not new vocab** — it's one subject's Records ordered by the time/frame coordinate
  (self-Correlation along the time axis). Its resolution = **Cadence** (now a CONTEXT.md term).
- **The metadata-field set is UNSETTLED** (explicit user flag): the list timestamp/frame/format/location/
  name was *my* proposal, not agreed. Grill it deliberately — which coordinates every record must carry,
  and which of those are Raw vs Derived (e.g. duration is Derived). `CONTEXT.md`'s Telemetry entry says
  "exact field set TBD" until then.
- Decide which retention mode to build first (finite firehose vs bounded ring).
- Resolve the dead `STEROIDS` constant: remove, or implement as `max` per §4.
- **Always-on robustness (deferred to the spec rewrite, surfaced by the 3-reviewer audit):** these are
  fine for today's throwaway profiling but bite a `max` flight recorder that records continuously —
  - `scope_tracy.odin` `_tracy_stack: [64]` zone stack has **no depth guard** → recursion past 64
    overflows. The recorder must bound or grow it.
  - `scope_spall.odin` `spall_init` does `make([]u8, 1<<16)` backing that `spall_shutdown` **never
    frees** (leak). Harmless per-run today; an always-on path must free or reuse it.
  - `watch(any)` of a **pointer/slice-bearing** value can leak addresses into output (only `int`s are
    watched today, so untested) → nondeterministic; needs a determinism rule + a claim before `max`
    streams arbitrary structs.
