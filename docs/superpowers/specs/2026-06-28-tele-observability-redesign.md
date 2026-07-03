# `tele` — observability redesign: free, automatic, dial-gated

**Date:** 2026-06-28
**Revision:** v2.1 — independent design review folded in (16 findings); then every concrete Odin/toolchain claim re-verified against the live compiler (`dev-2026-04-nightly`) on 2026-06-28, which **corrected findings #1 and #8** (see §17 changelog).
**Status:** Design rewrite. Supersedes `2026-06-21-tele-observability-design.md` *in direction*. Not yet built. Survives compact — re-read before resuming.
**Owner sign-off:** granted 2026-06-29 — §13 decisions 1–4 confirmed as recommended (#5 stays a W4 grill). **Build status:** W0 (dial `off|on|max`), W1 (Hooks at `max`), W2 (Weaver + `tele.capture`), and **W3 (run-entrypoint wiring) built + tested** — full suite green (277 claims; only the two `faster` timing claims non-PASS, INCONCLUSIVE by design). W2 ships single-package weaving; the multi-local-package import-closure mirror is the one deferred W2 item (detected + logged, not yet mirrored). **W3 design pivot (owner-driven 2026-06-29):** the dial is a *project setting*, not a new keybind — `off|on|max` lives in a `.tele` file at the repo root, zrun reads it on every run, and the *existing* two run keys (console `odin-run`, windowless `odin-run-log`) honor it (output sink = the keybind; dial = config; switching is the rare action → `just tele <level>`). At `max` zrun weaves the package into a throwaway `.tele-woven/` mirror and builds *that*; `claim.py`/plain build never weave (structural). **W4 (Record/metadata grill) + W5 (Reader polish + woven→source path remap) built + tested (2026-06-30). W6 (flight recorder for the lab: bounded ring + dump-on-trigger, the opt-in `frame` field, manual-key + NaN/assert/end-of-run triggers) built + tested (2026-07-01). W7 (robustness hardening — tracy `[64]` zone-stack depth guard + spall backing-buffer free/reuse) built + tested (2026-07-01).** **The tele redesign (W0–W7) is COMPLETE** — all phases built + verified.
**Supersedes:** `2026-06-21-tele-observability-design.md` (its P0–P9 primitives are **built and kept** — see §11; only the *direction* and the dial change).
**Vocabulary:** repo-root `CONTEXT.md` is the glossary (Source · Telemetry · Record · Cadence · Reader · the 3 axes · slices · Feeder · Hook/Handler · Weaver · in-band/out-of-band). This spec uses those terms and does not redefine them.
**Evidence:** working spikes — `agent-scratch/weave-demo/` (the weaver, end-to-end, happy-path) and `claims/tele/instrument-hooks` (PASS; hooks fire whole-program). Research trail: `docs/superpowers/specs/_research/2026-06-23-tele-research-conclusions-and-direction.md`.

---

## 0. What changed since 2026-06-21

The old spec built a competent **hand-called** logger (`dbg`/`dump`/levels/gates/counters/profiler/`observe`) behind an `off|on|steroids` dial. All of it works and is kept. But it still required you to *type* the capture — `dbg(x)`, `tele.info(...)`. That misses the actual want.

**The redefinition:** the north star is **zero manual instrumentation**. The developer should never type a log line and still see everything. Two consequences ripple through the design:

1. **`steroids` → `max`, and `max` becomes real.** Today `steroids` is a dead no-op. It becomes the **record-everything** tier: automatic value capture (the **Weaver**) + automatic execution capture (the **Hooks**) + correlation = the flight recorder.
2. **Two new *automatic* feeders join the hand-called ones.** The Hooks (compiler-injected, execution) and the Weaver (build-time source transform, values). The old primitives become the **lean** tier you reach for deliberately; the automatic feeders are the **max** tier you get for free.

Everything else — readers, sinks, the off-is-gone discipline, the claim-tested method — carries forward.

---

## 1. Requirement #1 — the north star (drives every decision)

> **Zero manual instrumentation — full observability for "free," compiled out at `off`.**

"Free" = the developer never types a log line; the toolchain does the work. This is the **original reason the project exists** ("I don't want to hand-add logging statements anymore — I write an array, loop over it, and want to *see* it without specifying what to print"). Flight-recorder and data-science framings are *downstream payoffs*, not the driver.

Precision this forces:

- **Free-in-dev-effort ≠ free-at-runtime.** You type nothing; you still pay CPU/noise at `max`. That is what the dial is for.
- **"If it's not slow, who cares" applies only to the perf/execution slice.** The *value* slice is for **correctness** bugs — un-anticipated, un-reproducible — where *already having the data when the bug appears* (no re-instrument, no repro) is the point. When collection is free, "do I need this value?" stops being a per-variable question.
- **This is instrument / experimental design, not feature code.** It is the cross-cutting concern (an AOP *aspect*; the `@(instrumentation_*)` hooks literally *are* AOP). The failure mode is the clinical-trial one: **you cannot recover data you didn't collect** (under-sampling aliases transients away — irreversible), and the probe perturbs the subject (observer effect). Collection is measurement; the *analysis* layer is where combining Records yields insight. So the rational default is **record-everything, gated by the dial.**

---

## 2. The dial is the spine: `off` · `on` · `max`

One master config sets the tier; granular `-define`s override knobs on top.

| `-define:TELE=` | Name | What runs | Who feeds it | Cost | Audience |
|---|---|---|---|---|---|
| `off` | **gone** | nothing — compiles to zero bytes; **no weave step, source untouched** | — | none | — |
| `on` | **lean** | the hand-called primitives only: `dbg`/`dump`/`debug..error`/`every`/`cond`/`count`/`SCOPE`/`observe` | you type them | low, deterministic | the daily explicit log + the **claim-tested** slice |
| `max` | **record-everything (flight recorder)** | lean **plus** Hooks (auto execution) **plus** Weaver (auto values) **plus** correlation + retention | the toolchain, automatically | deliberately high | "see everything for free" dev runs; **forensic, not stdout-diffed** |

**`max` replaces `steroids`** (which was "everything fires, for throwaway scratch") and finally makes good on it. `STEROIDS`/`steroids` constants are **removed** (behaviorally dead today). Derived constants become `ENABLED :: TELE∈{on,max}` (lean primitives compile at both) and `MAX :: TELE=="max"` (automatic feeders compile only here).

**Why the split is exactly `on | max`:** it protects verification. But note the *mechanism* of that protection precisely (see §6): the Weaver is **not** part of `odin build`. So a build at `max` through the plain compiler does **not** weave — the dial alone does not enable auto-value-capture; the **run entrypoint** does. The claim harness builds raw source directly and never invokes the weaver, so claims are never woven regardless of dial. The `on|max` split governs which *compiled-in* code exists (hooks, lean primitives); the *weave* is governed by the build entrypoint, not the compiler. **Consequence:** `max` is not a `-define`-testable tier through `claim.py`; the Weaver is tested by driving its CLI directly (§12).

---

## 3. Three feeders, one telemetry below them

`tele` *stores and renders* whatever it is handed. It never discovers anything on its own — the variable name `hp` exists only in source text; a compiled binary has no name→local table. So something must *manufacture* each `(name, value)` Record. Three things can — the **Feeders** — and the dial/entrypoint decides which are active:

| Feeder | Slice | Active when | How it knows | Mechanism |
|---|---|---|---|---|
| **Hooks** | Execution (enter/exit/duration/depth/count) | compiled in at `max` | compiler injects calls to the handler | §4 |
| **Weaver** | Value (`hp == 90`) | run entrypoint weaves at `max` | **reads your source**, injects `tele.capture()` | §5 |
| **You** (`dbg`/`observe`/levels) | Value / message | `on` & `max` | you read + type it | §11 (kept) |

The seam under all three is the **machine sink** (a flat, greppable line, optionally to `TELE_FILE`). The run-mechanics agent reads that sink to surface output windowlessly (§6, §10).

---

## 4. Mechanism — the Hooks (execution slice, automatic)

**Proven** (`claims/tele/instrument-hooks`, PASS): `@(instrumentation_enter)` / `@(instrumentation_exit)` fire **whole-program** (incl. `core`/`runtime`) with **zero call-site edits**. Defining the handler procs is the on-switch — no build flag.

- Handler signature is fixed: `proc "contextless" (proc_address, call_site_return_address: rawptr, loc: runtime.Source_Code_Location)`. `loc.procedure` = entered proc's name; `loc.line` is **`i32`**.
- **Gated by `when MAX`** — the handler *definitions* compile in only at `max` (whole-program + verbose by nature → not `on`).
- **Enter and exit must be defined as a pair** — Odin errors with only one (a no-op exit satisfies it).
- **`@(no_instrumentation)` is mandatory and not transitive** — it stops the handler from instrumenting itself but not the procs it *calls* (`fmt`/`strings`). Without a guard the handler calls instrumented procs → recursion → stack overflow. **Required: a re-entrancy guard** (`g_busy` flag). This is a hard requirement — the spike crashed (exit 127) until added.
- duration / call-count / depth are **Derived** from the raw enter/exit events.

**Promotion task (W1):** lift `instrument-hooks` into the package behind `when MAX`, with the re-entrancy guard and an own-code filter (don't drown the view in every `core` proc — whole-program is opt-in).

---

## 5. Mechanism — the Weaver (value slice, automatic) — *the headline*

The value slice **cannot** be captured at runtime (hooks see no args/locals; the binary has no local-name table). The only way to get values "for free" is a **build-time, out-of-band source transform**: the **Weaver**. Odin shipping its front-end (`core:odin/parser`, `ast`, `ast/walk`, `printer`, `tokenizer`) is what makes this tractable.

**Proven** (`agent-scratch/weave-demo/`, runs end-to-end on the happy path): a clean app with zero prints → weaver injects `capture()` → the woven program prints every value, **including per-loop-iteration**, each tagged with its enclosing procedure. That is Requirement #1 demonstrated. The spike is **happy-path only**; §5.3 lists what it does not yet handle.

### 5.1 What it does

1. Parse each `.odin` in the package (`parser.parse_file` into `ast.File{src, fullpath}`).
2. Walk for capture points: **declarations** (`Value_Decl`, `:=`), **assignments** (`Assign_Stmt`, `=`), **loop variables** (`Range_Stmt.vals` / `For_Stmt`), and **parameters** (`Proc_Lit.type.params`). **Recurse into every body**, including `Switch_Stmt` / `Type_Switch_Stmt` `Case_Clause`s, `When_Stmt`, `If_Stmt`(+`else`), `Block_Stmt`, and loop bodies. (The spike covers only Block/For/Range/If — §5.3.)
3. Collect edits as `(byte-offset, text)` from each node's `pos.offset` / `end.offset`. **Splice textually; never reprint via `printer`** (preserves the developer's exact formatting/comments — only injected text appears).
4. Write a woven copy of the package; compile *that*. **Never mutate the developer's source** — the woven file is disposable and regenerated wholesale each run (stateless; no diff/merge).

### 5.2 Hard requirements (what the product must do that the spike doesn't)

- **Same-line injection — preserve line numbers.** Inject `; tele.capture("x", x)` on the **same line** as the statement (not a new line). Then *no* source line shifts. Two payoffs: (a) `#caller_location.line` is already the correct source line — no forging needed; (b) compiler errors / panics / stack traces on the woven copy report the **same line numbers** as the source (§5.3, finding #11). This also removes the spike's ugly re-indentation.
- **Correct file path.** `#caller_location.file_path` will point at the woven copy. Map it back at **render time** (the Reader strips the woven-root prefix → source-root path); fall back to injecting an explicit `runtime.Source_Code_Location{file_path=<orig>, line=<i32>, column, procedure}` literal only if render-time remap proves insufficient.
  - **W5 status (2026-06-30, BUILT).** Implemented as `_src_path` (render-time, both readers) — render-time remap proved sufficient, so the literal-injection fallback was **not** needed. Because the woven mirror is **flat** (every woven file shares its source basename), the source path is just `SRC_ROOT + basename` — the woven root never has to be known. `SRC_ROOT` is `-define:TELE_SRC_ROOT=<source dir>`, passed by zrun (the real source dir) on both the console and windowless build paths at `max`; empty in `claim.py` / plain build (which never weave) → identity, so a non-woven capture's path is the real source untouched. Pinned by `claims/tele/w5-path-remap` (deterministic: `TELE_SRC_ROOT=/src/pkg` collapses this env's absolute path to `/src/pkg/main.odin`, asserted exact, no `<...>`). Verified end-to-end on a real zrun `max` run (console + windowless): every capture `loc` shows the source path, zero `.tele-woven` leak. *(If the deferred multi-package closure mirror ever lands, woven files gain sub-dirs and the basename join is revisited with it.)*
- **Whole package, multi-file, with imports intact.** Operate on a package *directory*. Mirror the **local import closure** preserving relative structure so relative sibling imports (`import "util"`) still resolve; **collections** (`odin_lib`, `vnd`) stay real via the existing `-collection:` flags (not mirrored). The spike's "copy one file to a sibling dir" breaks relative imports (finding #2).
- **Reach the machinery via the collection.** Woven captures call **`tele.capture` qualified**, resolved through `-collection:odin_lib`. The weaver injects `import "odin_lib:tele"` into each woven file **without shifting lines** (append at end-of-file or fold onto an existing line — confirm placement in W2). Qualified `tele.capture` avoids symbol collisions with user code (finding #13).
- **Determinism rule (moved up from W7 to W2 — load-bearing now).** Auto-capture records **copies of values**. **Pointers/slices**: deref to value or elide (never print raw addresses — the spike prints `0x36879DF9B0`, unstable run-to-run). **Maps / unordered collections**: stably ordered or elided (iteration order is unspecified — the old spec already dodged this with single-entry maps). Without this the firehose is nondeterministic from W2 onward (findings #6, #9).
  - **W4 status (2026-06-30, grill-hardened).** Implemented as `_det_value`: typed pointers peeled to the pointee, **rawptr / multi-pointer / proc / map elided** (`ptr` / `proc` / `map[N]`), **slices/arrays/dynamic-arrays *of pointers* elided to `[N]ptr`** (else their elements print raw addresses via `%v`), and the value **escaped (`\n`/`\r`)** so an embedded newline can't split the one-line record (sacred sink, §14.9). The grill also fixed a **crash**: capturing a `rawptr` used to segfault (`reflect.deref` on a void*). **Scoped residual — element-level only, forensic:** a pointer buried inside a *struct* element (incl. a cyclic back-pointer — Odin's `%v` self-guards depth but prints the deep address), or an address stored in a **`uintptr`**, still prints raw. The value stream is never claim-diffed (§12), so this flakes nothing structural; harden on a live need, not before (ethos §14.4/§15).
- **`seq` is mandatory (W2, not W4).** Each Record carries a monotonic capture counter so repeated same-name captures (a loop's `total` four times) are orderable for machine post-processing. The human stream has *implicit* top-to-bottom order; machines need the key (finding #12).
- **Dial + entrypoint gated.** The weave runs **only** from the run entrypoint at `TELE=max`. At `on`/`off`, and in `claim.py` always, there is no weave step and raw source compiles (§6).
- **A real CLI**, roughly `weave <package-dir> <out-dir>` — exact contract is W2.

### 5.3 Known hazards & unhandled inputs (must be closed or explicitly scoped in W2)

- **Brace-less `do` bodies** (`if c do x := 1`): the do-body is a **single statement, not a braced block**, flagged by `Block_Stmt.uses_do == true`. *(Re-verified 2026-06-28: the earlier "`open.offset == close.offset`" was **wrong** — for `if c do d := 1` the block's `open`/`close` bracket the body **statement** at offsets `44`/`50`, not a `{`/`}` pair. Use `uses_do`, not offset-equality, as the detector.)* The hazard stands: a naive append `… do x := 1; capture(…)` makes the `;` end the do-body, so `capture` lands **outside** the `if` scope → `Undeclared name` compile-break. **Detect via `uses_do` and skip or brace-wrap** (finding #1).
- **`switch`/`type-switch`/`when`/`defer` subtrees** are whole-subtree blind in the spike, not just "rebinding" — their declared values vanish from "record everything." Add the recursion or scope them out **and log the skip** (no-silent-caps rule) (finding #7).
- **Unused-local masking — only relevant under `-vet`.** *(Re-verified 2026-06-28: the earlier "compiles at `max` but fails at `on`/`off`" was **false under this repo's flags**.)* Plain `odin build` does **not** flag unused locals (EXIT 0); the `'x' declared but not used` error fires **only** under `-vet` / `-vet-unused-variables`, which this repo uses **nowhere** (claim.py, the justfile recipes, and lab all build without `-vet`). So **today there is no on/off-vs-max divergence** — an unused local compiles fine at every tier. The latent, conditional hazard: *if* `-vet` is ever adopted, the weaver's `capture("x", x)` counts as a use and would **mask** the unused-variable diagnostic in the woven `max` build — but the raw claim path (never woven, no `-vet`) would still surface it. Documented so a future `-vet` adoption isn't silently undermined (finding #8 — corrected).
- **Hot-loop volume:** a per-iteration `capture` inside a million-iteration loop firehoses a million formatted lines (minutes of I/O). "Finite/throwaway ≠ small." At `max`, apply a **default per-capture-site cap or delta-on-change** even in firehose mode, before the ring buffer (W6) exists (finding #14).
- Still out (scope + log): closures/`proc` literals capturing outer locals, `defer`-evaluated values, deep shadowing.

---

## 6. Where the weave actually runs (corrected — finding #3/#4)

**The weave lives in the run/zrun entrypoint, NOT inside `odin build`.** This is the honest architecture and it is what makes the claim-path protection *structural*, not accidental:

- The run-mechanics agent shipped a windowless run-mode (`space o w` → `zrun` builds, runs windowless, captures stdout+stderr → `run.log` → opens in Zed; see `agent-scratch/NOTE-to-tele-agent-windowless-run.md`). That surfacing half is **theirs**.
- `tele` provides the weaver CLI; the run entrypoint invokes it **before `odin build`, when `TELE=max`**, building the woven mirror instead of the raw package. The seam: **they read the machine sink / `run.log`; we decide what's captured and weave it in.**
- **`claim.py` calls `odin build`/`run`/`test` directly** (verified) — it has no weave step and will never get one. So **claims are never woven**, at any dial. (`claim.py` already injects `-collection:odin_lib` globally — unchanged.)

There is **no** "weave on every build path." Plain `odin build`, `claim.py`, and `lab/build.py` all compile raw source; only the *interactive run entrypoint* weaves, and only at `max`. W3 delivers this and pins the CLI contract the run-agent is holding for (`agent-scratch/NOTE-to-run-agent-RE-weaver-wiring.md`).

---

## 7. The Record — metadata field set

A **Record** = the measured value (a **copy**, never the live variable — §5.2 determinism) + its metadata. Proposed required coordinates:

| Field | Axis | Raw/Derived | Source |
|---|---|---|---|
| `name` | — | Raw | weaver (source text) / `#caller_expression` |
| `value` | the subject | Raw | the copy (pointers deref'd/elided; maps ordered/elided) |
| `type` | Provenance: Ambient | Raw | `value.id` / typeid |
| `proc` | About: System | Raw | `loc.procedure` (the Correlation anchor) |
| `file:line` | Provenance: Ambient | Raw | `#caller_location` (correct via same-line injection); path remapped |
| `frame`/`tick` | About: System | Raw | caller's counter (no hidden state) |
| `seq` | About: System | Derived | **mandatory** monotonic capture counter (orders repeats) |

`duration`/`call-count`/`depth` (execution) are **Derived** and attach to Hook Records. **Mandatory-vs-opt-in — settled in W4 (2026-06-30), `frame` landed in W6 (2026-07-01):** the woven machine line carries the **6 mandatory** coordinates `seq`, `name`, `value`, `type`, `proc`, `file:line` (unchanged); **`frame`/`tick` is opt-in** — automating it into the woven line would need hidden state (banned, §14) and throwaway code has no frame counter to read, so it lives instead on the **flight-recorder Record** (`Flight_Record.frame`, §16 W6), where the lab supplies its real 60fps counter (`g_mem.sim.frame`) explicitly — caller-passed, no hidden state. Proc-level correlation still suffices for the woven stream (§9). The captured value is determinism-locked (§5.2): rawptr/multi-pointer/proc are elided (never an address), maps elided to a count, typed pointers peeled to the pointee.

---

## 8. Cadence — collection frequency

Per `CONTEXT.md`: Cadence sets temporal **resolution**; under-sampling aliases transients away (irreversible). The lean gates (`every(n, tick)`, `cond(c)`) are kept. At `max` the default Cadence is **every capture point, every pass** — volume is the point — **but bounded by a default per-site cap / delta-on-change** so a hot loop doesn't drown the firehose (§5.3). Delta capture (record only on change, via `reflect.equal`) is the principled volume-reducer; add it in W2 as the loop guard, expand later.

---

## 9. Correlation — the thing worth inventing

A value tagged with its execution context (proc / depth / frame / time). A value log lacks *where it ran*; a profiler lacks *the value*; `tele` joins them. **Two tiers** (finding #15):

- **Proc-level correlation** (the `proc` tag) exists at **both** `on` and `max`: hand-called `dbg` already carries `loc.procedure` via `#caller_location`, and the Weaver records it too (proven: `total = 24 (in main)`). Near-free; build now.
- **Depth/frame-cursor correlation** (call-stack depth, the enter/exit window a value fell inside) needs the Hooks' live cursor → **`max`-only**. Build only when proc-level proves insufficient.
- **Determinism:** see §5.2 — pointer/map captures must not leak addresses/order, or correlated output flakes.

---

## 10. The flight recorder (the `max` retention model)

`max` = always-record + **dump/bookmark on trigger**. Retention differs by run shape:

- **Finite / throwaway / learning runs (the daily case):** full **firehose** to stdout / `TELE_FILE` (bounded per-site per §8). Ships first (W2/W3) — this is the actual daily pain.
- **Continuous lab @60fps:** **bounded ring buffer + dump-on-trigger**, write kept off the hot path, log grep-able. ✅ **BUILT (W6, 2026-07-01)** — `tele/flight.odin`: `flight_record` pushes a determinism-locked value copy into the ring (`[TELE_FLIGHT_CAP=256]`) each frame (cheap, no I/O); `flight_dump(reason)` emits the last CAP records via the sink **only on a trigger**, so the log write stays off the hot path. Lean tier (`when ENABLED`), because the lab — its only consumer — builds at `on` and is never woven; hand-called like `observe` (§16 W6).

**Triggers:** lab = a manual key combo (**F2**); headless = **programmatic** (assert fail, NaN / out-of-range, end-of-run) — the automatic ones are the prize. ✅ **BUILT (W6):** F2 → dump; `invariants()` (NaN/out-of-range) dumps before exit 1 (verified on a real induced blow-up); `context.assertion_failure_proc` dumps before the abort; `-flight` dumps at end-of-run. **Determinism divergence** stays caught by the pre-existing *cross-process* determinism guard (`lab/build.py guard`) — the ring is in-process, so it can't dump another process's ring; honest scope, not a faked trigger. The recording is **forensic, not claim-tested**: nondeterministic, read after the fact — but the deterministic *mechanism* (bounded wrap, order, dump shape) IS claim-pinned (`w6-flight`, `w6-assert`), since the ring is hand-called, not woven.

---

## 11. Preserved primitives (the lean tier — built, kept)

Old-spec P0–P9, the `on`-tier hand-called surface, in `tools/domains/odin/odin_lib/tele/`: `dbg.odin` (`dbg(x..)` `_dbg1.._dbg8`, colored, `#caller_expression`), `dump.odin` (`%#v`), `level.odin` (`debug..error` + `TELE_LEVEL`), `gate.odin` (`every`/`cond` — the Cadence controls), `counters.odin` (`count`/`dump_counts`), `sink.odin` (`_machine_line`, `TELE_FILE`), `scope*.odin` (`SCOPE()` zones; `INSTRUMENT={spall|tracy|both|false}`), `observe.odin` (`observe("label",&x)` → lab ImGui panel + headless `observe_frame`; renamed from `watch`), `tele.odin` (dial + palette + knobs).

**Reader / format** (kept): `TELE_FORMAT={human|machine|both}`. Human = colored; Machine = flat greppable (`tele name=value …`) for agents + claims + the run-agent's `run.log`; `both` = composite. `dump` is Human-only.

**Dial-redesign edits:** `ENABLED :: TELE∈{on,max}`, `MAX :: TELE=="max"`; delete the `steroids` branch and the dead `STEROIDS`. Lean primitives keep compiling at `on` and `max`.

---

## 12. Testing strategy

- **Lean slice = claim-tested, deterministic.** Every primitive keeps its `output` claim under `claims/tele/<slug>/` (build + run + diff stdout; `<...>` wildcard for nondeterministic paths). **34 claims today** (`ls claims/tele/`); re-run `just verify-all` for the live count before quoting it — W0 changes the set (below).
- **The Weaver is claim-tested via its CLI, not the dial** (findings #3/#4): a `weave-injects-N` claim runs the weaver on a fixture and asserts (a) an exact, deterministic count of injected `capture()` calls and (b) the woven source **compiles** (`odin build` exit 0). No stdout-volume diffing.
- **`off = gone`:** at `TELE=off` no weave runs and the binary is unchanged (0 auto-output) — claimed.
- **Hooks:** `instrument-hooks` (exists, PASS) — whole-program; `@(no_instrumentation)` suppresses.
- **The value *stream* and the flight recorder are forensic** — eyeballed, not diffed. Document that `max` is not a compile-validity oracle (§5.3).
- **Owner eyeball** for the human value stream and the lab panel.

---

## 13. Open decisions (owner call — RESOLVED 2026-06-29)

Decisions 1–4 confirmed as recommended; #5 **resolved in W4 (2026-06-30)**.

1. **Weave entrypoint.** ✅ **CONFIRMED:** weave lives in the run/zrun entrypoint, dial-gated at `max`; `claim.py` and plain `odin build` never weave (§6). The claim-path protection is structural.
2. **Weave output claim-tested or forensic-only?** ✅ **CONFIRMED forensic-only** — claims test the lean slice + the deterministic `weave-injects-N` CLI check (exact injected-`capture()` count + woven source compiles); the value *stream* is eyeballed, never stdout-diffed (§12).
3. **Retention built first: firehose or ring?** ✅ **CONFIRMED firehose first** (the daily case); ring + dump-on-trigger later (W6) (§10).
4. **Tracy/Spall role.** ✅ **CONFIRMED: optional execution/perf profiler only** — NOT the value viewer; no custom viewer (CLAUDE.md line); values via "Zed opens `run.log`."
5. **Metadata field set** (§7) — ✅ **RESOLVED (W4, 2026-06-30); `frame` landed W6 (2026-07-01):** 6 mandatory coordinates (`seq name=value type proc loc=file:line`); **`frame`/`tick` is opt-in** and lives on the flight-recorder Record (lab-supplied `g_mem.sim.frame`), not the woven line (automating it into the woven line needs hidden state — banned §14 — and throwaway code has no frame to read; proc-level correlation suffices for the woven stream per §9).

---

## 14. Hard rules (ethos — carried forward, amended)

1. **No comment spam** (Carmack rule).
2. **No error handling / no fallbacks.** Fail loud or don't guard.
3. **Clear, never convoluted.**
4. **No abstraction until two pieces actually duplicate.**
5. **Off = gone.** `TELE=off` compiles to literally nothing — verified. At `off` the weave step does not run; source is untouched.
6. **The developer's source is never mutated.** The weaver writes a disposable mirror; your file stays clean.
7. **Never shift the developer's line numbers.** Weave injects same-line so compiler errors, panics, and reported `loc`s map to the real source.
8. **One keypress.** Any feedback workflow is a single action — never hand-chained commands.
9. **The machine sink is sacred.** Agents and `claim.py` depend on it; automatic feeders may add to it but must never replace or break it.
10. **Perf questions are answered at `on`, never `max`** (added 2026-07-03). Weaving every value changes codegen (register spills, inlining) — a `max` build is a *different program* for timing purposes. Correctness forensics at `max`; timing via `SCOPE`/Tracy at `on`. Never chase a perf regression seen only in a woven build.

---

## 15. Out of scope (defer until a live need)

- Log rotation, query/filter languages over logs, network/remote sinks, log shipping.
- Anything pluggable (renderer registries, sink plugins, backend abstraction).
- Sampling profilers beyond Spall/Tracy zones; **building/maintaining a custom GUI viewer** (use Tracy as an external tool, or Zed opening the log).
- Editor surfaces, viewports, hand-built layer UIs (the `CLAUDE.md` "engine" line). A telemetry **viewer** is not this line *only* as an external tool we point at or the in-game ImGui panel — never a bespoke app we build.
- Macros / in-band metaprogramming (Odin has none by design; all weaving is out-of-band).
- Runtime auto-capture of *values* without the weaver (impossible — §5).

---

## 16. Phased plan (build order — each a nuclear, independently-testable unit)

Daily pain first (see-my-values-for-free in throwaway code), lab flight-recorder last. **Build one, test it, stop.**

- **W0 — Dial redesign. ✅ BUILT.** `off|on|max`; `ENABLED :: TELE∈{on,max}`, `MAX :: TELE=="max"`; deleted `steroids`/`STEROIDS`. Migrated the coupled claims → `p0-import-max`, `p0-max-dbg` (renamed) and fixed `p0-import-off` to print `tele.MAX`. 34 tele claims, all green.
- **W1 — Hooks at `max`. ✅ BUILT.** `odin_lib/tele/hooks.odin` behind `when MAX`: enter/exit pair + `g_hook_busy` re-entrancy guard + own-code filter (`_under_odin_root`, slash/case-insensitive prefix vs `ODIN_ROOT`); records counts only (no stdout emission, so max-built claims are unaffected). Exposed `hook_stats()` (`@(no_instrumentation)`). Claims: `w1-hooks-off` (gone), `w1-hooks-max` (fires whole-program; filter separates own from core).
- **W2 — The Weaver (firehose/linear). ✅ BUILT (2026-06-29).** Real CLI (`weave <pkg-dir> <out-dir>`, `tools/domains/odin/weaver`) over the importable transform `odin_lib:weave`; runtime `tele.capture` in `odin_lib/tele/capture.odin`. Delivered: **same-line injection** (verified: woven reports each value at its original source line — proven end-to-end), **`tele.capture` via collection** + EOF no-shift import injection (Odin allows post-decl imports), **determinism rule** (typed pointers peeled to pointee, nil→`nil`, maps elided to count — 3-run byte-identical), **`seq`** (monotonic), **switch coverage** + **do-form/when/blank scoped + logged** (no-silent-caps), **per-site loop cap** (`-define:TELE_CAP`, default 256). Claims (forensic + CLI-count per §13.2): `w2-weave-count` (exact count + skip log), `w2-woven-run` (real woven output runs at max → compiles + line==source + determinism + correlation + seq), `w2-capture-{max,off,cap}`. **Deferred (one item):** the multi-local-package import-closure mirror — single-package weaving ships; relative sub-package imports are detected + logged, not yet mirrored. Source-untouched verified.
- **W3 — Dial-as-setting integration. ✅ BUILT (2026-06-29).** *Pivoted from "new max keybind" to "config setting" on owner challenge* — weaving is a build-profile (debug/release-style), not a per-run choice, so it must not own a keybind. Delivered: `.tele` file at repo root holds the dial (`off|on|max`, self-documented; default `on`); `zrun` (`tools/runners/zrun/src/main.rs`) reads it fresh each run via `tele_dial()` and the **existing** two run tasks honor it — at `max`, `weave_to()` writes a throwaway mirror under `.tele-woven/<pkg>` (source never touched; gitignored) and zrun builds *that* with `-define:TELE=max`; at `on`/`off` it builds source directly, byte-identical to before. Every run announces its dial (console: `[zrun] dial: …`; windowless: `run.log` footer) so you always know what ran. **Format-by-sink:** the windowless build adds `-define:TELE_FORMAT=machine` so `run.log` (a file opened in Zed, no ANSI rendering) is plain greppable text, not escape-code junk; console keeps the default colored `human` format (terminal renders it). Weaver built in place at `tools/domains/odin/weaver/weave.exe`; `just tele [off|on|max]` flips/shows the dial (the rare action — no keybind). Tested end-to-end (4 cases: on/max × console/windowless): max yields the woven firehose (captures with correlation seq + proc/type/value, line==source), on is unchanged. `claim.py`/plain build never weave (structural — weave lives only in zrun's two run tasks). Output sink stays the keybind; a future visual analyzer is just a third sink (W5), orthogonal to the dial.
- **W4 — Record + Correlation-lite. ✅ BUILT (2026-06-30).** Settled the field set: the woven machine line is the **6 mandatory coordinates** `seq name=value type proc loc=file:line` — all already emitted by W2's `capture()` (`seq`/`proc` mandatory from W2). The §13.5 grill resolved: **`frame`/`tick` is opt-in, deferred to W6** — automating it would need hidden state (banned, §14) and the weaver can't supply a frame in throwaway code, while proc-level correlation suffices today (§9). No field added — instead W4 **hardened the determinism contract (§5.2) the sacred sink rests on (§14.9)** and pinned it (a `grill-with-docs` pass surfaced the last three of these). Fixed four `_det_value` defects: (1) **capturing a `rawptr` segfaulted the running program at `max`** — the `.Pointer` peel branch called `reflect.deref` on a void* with no pointee type; now a rawptr is detected (`elem == nil`) and elided to `ptr`; (2) a **proc value leaked its code address** via `%v` — now elided to `proc`; (3) a **slice/array/dynamic-array of pointers** printed each element's raw address — now elided to `[N]ptr` (non-pointer slices still print their values); (4) a value with an **embedded newline split the record across lines**, breaking the one-record-per-line invariant grep/`claim.py` depend on — now `\n`/`\r` are escaped. (Scoped residual, documented in §5.2: a pointer inside a *struct* element, or a `uintptr` address, still prints raw — forensic-only, never claim-diffed.) New claim `w4-record-shape` (`output`, `max`+`machine`) freezes the line shape + determinism rule for the forms `w2-capture-max` doesn't cover (rawptr/multi-ptr/proc/slice-of-ptr elide, `^^int` peels, string-with-spaces-and-`=` and escaped-newline survive) — the rawptr line doubling as the crash-regression guard. Full suite green (276/278; the 2 `faster` claims INCONCLUSIVE by box-noise; `w2-capture-*`/`w2-woven-run` unaffected); verified PASS through `just claim` in **native PowerShell**.
- **W5 — Value-stream Reader polish. ✅ BUILT (2026-06-30).** The headline was the **render-time woven→source path remap** carried since W3: at `max` zrun compiles a woven mirror, so a capture's `#caller_location.file_path` pointed into `.tele-woven/<pkg>` — line numbers already correct (same-line injection), only the path wrong. Fixed in `_src_path` (both readers, `tele/capture.odin`): the mirror is flat so `source = TELE_SRC_ROOT + basename` (no woven root needed); zrun passes `-define:TELE_SRC_ROOT=<source dir>` on **both** run paths at `max` (`tools/runners/zrun/src/main.rs`); empty default (claim.py / plain build, never woven) = identity. **Reader polish:** the human reader now **groups by proc** (a `proc:` header printed once when the proc changes, captures indented under it → folds by procedure in an editor, drops the repeated `(in proc)` tag); the machine reader is unchanged greppable. **Routing** to stdout / `TELE_FILE` was already in place (W2/W3, `sink.odin`). Three new claims pin it: `w5-path-remap` (`max`+`machine`+`TELE_SRC_ROOT=/src/pkg`) asserts the remap **exactly** (no `<...>` wildcard — the basename collapses the env-specific path to `main.odin`, so `loc=/src/pkg/main.odin:17` is deterministic) + doubles as a line-preservation check; `w5-file-sink` proves a woven capture routes to the `TELE_FILE` sink **with the remap applied** (reads the file back, asserts the exact remapped line); `w5-grouping` pins the human proc-grouping format exactly (ANSI + `proc:` headers + indentation + seq + lines, path wildcarded — same style as `p9-human`), incl. the `main→add→main` re-header on return. Forensic verification (the remap + grouping only fire in a real woven run, never in claims): a live zrun `max` run on a two-proc probe, **console + windowless**, showed every `loc` as the real source path with correct lines and zero `.tele-woven` leak — eyeballed per §12. Full suite green (277/279; the 2 `faster` claims INCONCLUSIVE by box-noise); `just claim tele/w5-path-remap` + a zrun `max` run both verified PASS in **native PowerShell**.
- **W6 — Flight recorder for the lab. ✅ BUILT (2026-07-01).** A bounded ring + dump-on-trigger, `tele/flight.odin`. `flight_record(frame, name, value)` renders the value **determinism-locked at record time** (reusing W4's `_det_value`) into an inline `[FLIGHT_VAL_MAX=64]u8` — a **copy**, so it neither dangles across frames nor shows the value at dump time — then advances the ring (`[TELE_FLIGHT_CAP=256]Flight_Record`, `-define`-tunable): cheap, no I/O. `flight_dump(reason)` formats oldest→newest via the **sink** (machine greppable + human, proc/frame-grouped, `_src_path`-remapped) **only on a trigger** — that is the spec's "write off the hot path": the per-frame push is a memcpy; the log I/O fires on a trigger, never per frame. **Lean tier (`when ENABLED`), NOT `max`:** the ring is hand-called like `observe`, and its only consumer — the lab — builds at `on` and is **never woven** (zrun's `max` weave never touches it), so a `max`-gated recorder would be dead code in the one program that uses it; at `max` the Weaver *could* also feed this ring instead of stdout for a continuous run, but that isn't needed now, so the mechanism is built at the tier its consumer uses (rationale in `flight.odin`). **The opt-in `frame` field (deferred from W4) lands here:** `Flight_Record.frame` is **lab-supplied** (`g_mem.sim.frame`) per §7 "no hidden state"; the woven `capture()` line stays the untouched 6 coords. **Record site** = `frame_step()` (shared by the SDL host + headless, so the ring fills for free), recording the **active mode's** entities — the 4 arena tiles, else the single particle's pos+vel — a content fix surfaced when an induced arena blow-up showed the ring logging the *frozen* particle while the *tiles* exploded (recording the wrong entity is useless exactly when you need it). **Triggers:** manual key **F2** (`Action.Flight_Dump`, Debug ctx; also scriptable headless — `F2` added to `key_from_name`) → dump `"key"`; **NaN / out-of-range** (headless `invariants()` dumps the ring before `os.exit(1)`) — **verified by inducing a real blow-up** (arena tile damping temporarily 4.0 → tile escaped to `-8080` → the dump showed `t0` racing `-7825 → -7952 → -8080` while the other tiles sat at the floor, then exit 1; params reverted exactly); **assert-fail** (`context.assertion_failure_proc` → dump then the default abort); **end-of-run** (opt-in `-flight`, else quiet). **Determinism-divergence** stays caught by the existing cross-process determinism guard (the ring is in-process — you can't dump another process's ring; honest scope, not faked). **Claims (2):** `w6-flight` (`output`, `on`+`machine`+`CAP=4`: push 6, dump → `count=4`, frames 3–6, asserting bounded + oldest-first wrap + chronological order + the `frame` field + value determinism, exact) and `w6-assert` (`panics`: an assert routes through the ring so `"flight"` is in the output *then* the run dies nonzero — proving the trigger fires the dump, not just the abort). **Verified:** 47 tele claims PASS; the lab `test` suite + the **determinism guard PASS** (per-frame recording reads sim state / temp-allocs but never mutates it, so the trajectory hash and `-o:none` vs `-o:speed` equality are unchanged — "determinism guard intact"); the SDL hot DLL + host compile; `doctor` PASS; both new claims PASS in **native PowerShell** (pwsh 7.5.5, `MSYSTEM` empty).
- **W7 — Robustness hardening. ✅ BUILT (2026-07-01).** Two localized `INSTRUMENT`-gated fixes in the scope backends; no new surface. **tracy depth guard** (`tele/scope_tracy.odin`): the zone stack is a fixed `[64]Tracy_ZoneCtx`, so nesting past 64 zones wrote `_tracy_stack[64]` out of bounds (a bounds-check panic — `Index 64 is out of range 0..<64` — or silent corruption under `-o:speed`). Now `_tracy_begin`/`_tracy_end` guard the store/emit with `if _tracy_top < len(_tracy_stack)` while `_tracy_top` **keeps counting** past the cap, so a level is emitted iff its index is in range and begin/end stay balanced on the way back out (deep levels are simply not sent to Tracy). **spall backing free + reuse** (`tele/scope_spall.odin`): `spall_init` did `make([]u8, 1<<16)` and never freed it — a 64 KiB leak per init, doubled if init ran twice. Now the backing is held in a package var `_spall_backing`, `spall_shutdown` `delete`s it after `buffer_destroy` (which flushes but doesn't own our slice), and `spall_init` early-returns if `_spall_inited` (reuse guard: no second alloc). **Claims (2):** `w7-tracy-depth` (`output`, `INSTRUMENT=tracy`: recurse 200 deep = 201 nested SCOPEs past the 64 cap → must reach the `depth ok` sentinel instead of the OOB panic — needs `tracy.lib`, like `p8-scope-tracy`) and `w7-spall-noleak` (`output`, `INSTRUMENT=spall`: a tracking allocator wraps two full init/shutdown lifecycles + a redundant re-init → `leaks: 0`; no external lib, runs on any checkout). Both **proven meaningful** — backing out each guard turned them RED (`leaks: 2` and the `Index 64 out of range` panic respectively) — then restored to green. **Verified:** `w7-tracy-depth`, `w7-spall-noleak`, and the four `p8-scope-{spall,tracy,both,off}` claims all PASS; the **real tracy smoke test** (`smoke_test_tracy.py` — builds `INSTRUMENT=tracy`, links `tracy.lib`, port 8086 live, exit 0) PASS; `doctor` PASS; both new claims PASS through `just claim` in **native PowerShell** (pwsh 7.5.5, `MSYSTEM` empty). **The tele redesign (W0–W7) is complete.** *(Pointer/map determinism moved to W2.)*

---

## 17. v2 changelog (independent review, 2026-06-28)

Folded 16 verified findings. Material changes vs v1: the woven-mirror model hardened (**same-line injection** for line preservation → fixes loc + error-mapping; **local-import-closure mirror**; **`tele.capture` via collection**); the claim-path framing **corrected** (weave lives in the run entrypoint, *not* `odin build`; the protection is structural, `max` is CLI-tested not dial-tested); **W0 migrates the `steroids` claims**; **determinism (pointers/maps), `seq`, switch/when/do-form coverage, and a loop cap moved into W2**; the unused-local and error-line-mapping hazards documented (§5.3); "de-risked" softened to "happy-path proven."

**v2.1 (2026-06-28, re-verification pass).** Re-ran every concrete claim as a live spike against `dev-2026-04-nightly`. Confirmed: hooks fire whole-program + pair-required (`Error: Both @(instrumentation_enter) and @(instrumentation_exit) must be defined`) + `@(no_instrumentation)` suppresses + missing re-entrancy guard crashes **exit 127**; `Source_Code_Location.line` is `i32`; `tokenizer.Pos.offset` is a 0-based byte index; `Value_Decl.is_mutable` exists (can skip `::` constants); all AST node shapes match; same-line injection makes `#caller_location.line` already-correct (a statement+capture on line 7 reports 7; capture alone on line 9 reports 9); pointers print unstable addresses (3 runs: `0x73E8…`, `0x7697…`, `0x5135…`) and maps print in unspecified order (`a,c,b`); the weave-demo still runs end-to-end; claim.py calls `odin` directly with `-collection:odin_lib`, never weaves; 34 tele claims; `instrument-hooks` PASS. **Two findings corrected** (§5.3): #1 — the do-form detector is `Block_Stmt.uses_do`, **not** `open.offset == close.offset` (which is false: offsets `44`/`50`); #8 — unused locals only error under `-vet`, which this repo uses nowhere, so the claimed on/off-vs-max divergence does **not** occur today (reframed as a latent `-vet`-only masking hazard).

---

---

## 18. Capture-layer completion — intent (decided 2026-07-01, pre-build)

**Why this section exists.** W0–W7 built the *value* side (weaver) and the on/off plumbing, but a `2026-07-01` design conversation surfaced that the thing the owner always intended — a **correlated telemetry Record** (value **fused with** its execution context) — was never actually built; it was only named in `CONTEXT.md`. This section records the *intent* so it isn't lost again. It is not an execution spec — we deliberately did **not** work out exact code. Build order/testing to be detailed when we start. *(Reviewed + amended 2026-07-03: an external assessment was folded in — gap #7 replay-on-demand, the analysis layer, the frame-mark mechanism, the `seq` tie-breaker, hard rule §14.10, and the GPU-timestamp re-rank.)*

**The decided architecture — one capture spine, two sinks:**

- **One spine.** Every measurement flows through a single capture path that stamps shared **coordinates** at capture time (proc, call-id, depth, **frame**, high-res **timestamp**), because correlation must happen *at emit time* — you cannot join separate logs after the fact. *(Precision, corrected 2026-07-03: Tracy DOES export some data — `tracy-csvexport` dumps zone stats, and since v0.12.0 (2025-05) plots, GPU zones, and zone text; the `.tracy` format itself has no public reader library. What it can never return is our full-fidelity value Records, and two separately-captured streams still can't be correlated post-hoc — the argument stands on that, not on "no export exists.")* The two automatic feeders (Weaver = values, Hooks = execution) plus hand-called `dbg`/`observe` all funnel into this one spine.
- **Sink A — Tracy (real-time, rented).** We do **not** reinvent Tracy. When we want live profiling we forward a *flattened* copy of events to Tracy (`ZoneValue`/`ZoneText`/`TracyPlot`) and use its GUI. Tracy's hard machinery (lock-free live drain, network stream, cross-platform, GPU) is *real-time* generality we don't need to own.
- **Sink B — our postmortem recorder (owned, "the dumb way").** Per-thread append buffers, reassembled by timestamp **after** the run. This is the one piece we're forced to own, because it must carry our **full-fidelity** values + coordinates and emit **greppable / agent-readable** records — which Tracy's binary and Spall's timing-only file cannot. This **replaces Spall** for us (Spall is timing-only; our recorder is a superset). The weaver injects **one** `capture(x)` that fans out: full value → Sink B, flattened → Sink A. Flattening is not lossy *for us* because Sink B keeps the real value.

**Multithreading is a hard requirement, not a maybe** (owner: the game will be multithreaded — 2D and 3D versions are coming). Concurrent capture has two irreducible problems — (1) **safe concurrent writes** (solved by **per-thread buffers**, no locks/atomics on the hot path) and (2) **reassembly/ordering** (solved by a **shared monotonic high-res timestamp** on every record, **plus the per-thread `seq` as tie-breaker** — equal timestamps can't order two records; on Windows the clock is QPC, cross-core-safe on modern hardware). These are *not* Tracy-specific bloat — any capture reading from multiple threads needs them, ours included. Going **postmortem** (Sink B) is what lets us skip Tracy's *real-time* concurrency machinery: record independently per thread, merge at flush.

**Hot path stays minimal** (this is also the *fastest* design at our scale, not a compromise): capture = memcpy value+coords into the next thread-local ring slot, bump a counter — zero allocation, zero locks. All expensive work (formatting, correlation join, file I/O, Tracy forwarding) is deferred to flush/dump. The lab flight recorder (W6) is already this shape.

**Capture-layer gap list (what is NOT built yet):**
1. **Hook emission + timestamps** — hooks currently only *count* in memory (`hook_stats`); they don't emit enter/exit events and carry no timestamps, so there are no durations, no depth, no surfaced call-counts.
2. **Correlation (the joined Record)** — nothing stamps a weaver value with live execution context (proc/call-id/depth/frame). *The core missing piece.*
3. **GPU timestamps** — zero GPU timing in the spine, and **verified 2026-07-03 (web, live `SDL_gpu.h`): SDL3's GPU API has no timestamp-query surface to hook** — only fence queries (`SDL_QueryGPUFence` et al.); the sole proposal (libsdl-org/SDL issue #11696 "Investigate adding a Query API", Dec 2024) is still open, milestone "SDL 3.x", no implementation started. Getting GPU timestamps today means dropping below SDL to the backend (Vulkan/D3D12/Metal query pools) plus calibrating a separate clock domain against QPC. **Re-ranked last among the gaps** (2026-07-03) — lowest value per friction; wait for SDL's Query API unless a live GPU-timing need appears first.
4. **Frame as a global coordinate** — `frame` currently rides only on the lab flight-ring, not the woven line or the hooks. **Decided mechanism (2026-07-03):** one explicit `tele.frame_mark()` per frame advances a spine frame cursor that every Record stamps — Tracy's `FrameMark` model. It is *explicitly advanced by the game at one call site*, so it doesn't violate the no-hidden-state rule (§14) the way per-capture caller-passing did; code that never calls it (throwaway runs) simply records frame 0. Once the spine exists, the woven line and the hooks get `frame` for free.
5. **Over-time / cadence capture** — no gate to record a value *every frame* (or on-change) to answer anomaly questions ("velocity jumped 100 in one frame = bug").
6. **The single shared emit spine + per-thread buffers** — weaver, hooks, and the Tracy/Spall sinks are not yet funneled through one path that stamps coordinates and fans out to sinks.
7. **Replay-on-demand instrumentation (added 2026-07-03 — likely the highest-leverage unbuilt piece).** The §1 axiom "you cannot recover data you didn't collect" holds only for *nondeterministic* programs. The sim is deterministic (enforced by the existing cross-process determinism guard), so **inputs+seed ≡ the whole execution**: always record inputs+seed (tiny, zero aliasing risk), and when a question arises — from the owner or an agent — weave *for that question* (the weaver is already a stateless throwaway mirror; per-question filtering is an argument, not a redesign), replay, analyze. This dissolves the hot-loop firehose (§5.3) and cadence aliasing (§8) simultaneously: a replay can afford every-frame capture of *one* variable at full resolution. It is rr/Pernosco's model — record only the nondeterminism, derive everything else on demand. Record-everything (`max`) stays right for the *first, unreproduced* occurrence (the flight recorder); replay covers every question after it. The agent loop this enables is the actual "program as science" method: hypothesis → synthesized instrumentation → controlled re-run → measurement → claim.

**The analysis layer (added 2026-07-03 — was missing from this section entirely).** Every gap above is capture-side, but acceptance questions #2–#6 below are *analysis* questions. No query language gets built (§15 stands). Instead, Sink B's flush emits a **boring standard format** (NDJSON first; Parquet only if volume ever demands it) alongside the greppable lines — and the analysis layer becomes **DuckDB/polars for free**: an agent with SQL over wide-event records answers "anomaly over time" / "call frequency" / "value evolution" with zero analysis code of ours. Two techniques the sim's determinism makes uniquely cheap, both ranked **above** GPU timestamps:

- **Differential debugging** — diff the record streams of a good run vs. a bad run and report the *first divergence* (name, frame, proc). Deterministic replay makes the diff exact, which is why almost nobody else can do this. It is the single most effective debugging move available to us.
- **Invariant mining** (Daikon-style) — infer envelopes from healthy runs (`vel.y ∈ [-600, 0]`; "proc A always precedes B within a frame"), then flag violations. Upgrades the W6 NaN/out-of-range trigger from hand-written invariants to learned ones.

**Verification contract (decided 2026-07-03 — added *before* implementing this section, so every §18 change lands claim-verified):**

- **Determinism is claim-pinned:** `claims/tele/r1-replay-determinism` runs a seeded sim through the full recorder path (capture → machine render → file sink) twice and asserts byte-identical streams (process-global `seq` normalized out; line count pinned so an empty==empty run can't pass vacuously). Everything in gap #7 and §19 rests on this claim staying green — if it reds, find the nondeterminism leak before trusting any replay result.
- **Canonical record form:** today's machine line is fully deterministic (`seq`, no wall-clock field). The spine introduces the first nondeterministic fields (`ts`, `thread`); they go in **fixed positions** in the line so claims wildcard them (`ts=<...>`) while still asserting seq + coordinates exactly. A record format that can't be claim-asserted is a §14.9 violation.
- **Multithreaded claims assert per-thread order + merge invariants**, never a global golden stream (cross-thread interleaving is genuinely nondeterministic): the per-thread stream is golden via per-thread seq; the merged stream is asserted only for timestamp monotonicity after reassembly.
- **The weaver freeze is drift-guarded:** `claims/tele/w2-weave-drift` re-weaves the pre-weave source in-process and asserts the checked-in `w2-woven-run` fixture still begins with exactly today's weaver output (plus the injection census), closing the manual-regeneration loop.

**Parity principle:** steal Tracy's *catalog* (what it learned is worth recording), not its *engine* (how it records under real-time/multithread pressure). Read Tracy's source for the event-type list; implement the simplest per-thread + timestamp version for one game.

**Questions this must answer** (from the owner, previously unrecorded anywhere — this is the acceptance target): *Did this variable have the value I expected here?* · *Does execution match my mental model?* · *Did a value change unexpectedly (anomaly over time)?* · *Who called / who modified this (side-effect attribution)?* · *How often is this called?* · *How is this value evolving frame-by-frame?* Today the setup answers only the first; #2–#6 are what the correlated spine unlocks. **(Amended 2026-07-03):** #4's *writer* half is nearer than stated — the Weaver already captures assignments with proc coordinates, so "who modified this" needs only the frame coordinate on the woven line; it is *caller* attribution that waits on hook emission (gap #1). Three questions added to the acceptance target, unlocked by the analysis layer above: *Where do these two runs first diverge?* (differential) · *Did this edit change behavior anywhere I didn't intend?* (differential across builds — `equiv` generalized to whole-run traces) · *Is this value inside its historical envelope?* (mined invariants).

**S1 — the spine + `frame_mark`. ✅ BUILT (2026-07-03).** Landed gaps #6 (the single shared emit spine + per-thread buffers) and #4 (`frame_mark`), nothing else. `tele/spine.odin`: every `capture()` now STAMPS coordinates (QPC `ts` via `time.tick_now`, OS `thread` via `sync.current_thread_id`, per-thread `seq`, `frame`) and copies the determinism-locked value into a **per-thread append buffer** (a `^Thread_Buf` registered once under a mutex on the thread's first capture, then written lock-free — the hot path is one memcpy + counter bump, zero locks/alloc), instead of formatting+emitting at the call site. `flush()` MERGES every registered buffer by `(ts, thread, seq)` and renders each Record; an `@(fini)` auto-flushes at process exit so a finite/woven run dumps its firehose without an explicit call (the weaver injects only `capture` — `weave.odin` untouched). This is the postmortem model (§10, §18): record per thread, reassemble at flush. `frame_mark()` advances a spine frame cursor at one explicit call site (no hidden state, §14); records before any mark stamp frame 0.

- **Canonical machine line (frozen contract, this is THE line now):** `tele cap seq=N ts=T thread=W frame=F name=value type=T proc=P loc=F:L`. The two nondeterministic fields (`ts`, `thread`) sit in fixed positions right after `seq`, so claims wildcard them (`ts=<...> thread=<...>`) while asserting `seq`, `frame`, and the payload exactly. This **replaces** the old `tele cap seq=N name=value …` line — every capture claim's `expected.txt` was updated (ts/thread wildcarded, `frame=0` exact). `seq` is now **per-thread** (single-thread runs are unchanged: main-thread seq 1,2,3…).
- **NDJSON sink (analysis layer):** `-define:TELE_NDJSON=<path>` makes flush also emit one JSON object per record (same fields) beside the greppable lines — Sink B's boring standard format for DuckDB/polars. Opt-in (default off = existing machine claims untouched).
- **New claims:** `s1-spine-single` (canonical line exact + `frame_mark` advances 0→1→2), `s2-spine-threads` (3 threads × 10 captures → merge; asserts per-thread `seq` 1..10 with `value==seq`, merged `ts` nondecreasing, `records=30` conserved — derived booleans, never a global golden interleaving), `s3-spine-ndjson` (flush emits valid NDJSON, echoed + per-field wildcard). `frame_mark` is covered by `s1` (no separate claim).
- **Claim churn from the postmortem move:** emission is now at flush, not the call site — so `w5-file-sink`/`r1-replay-determinism` (read a file sink mid-run) gained an explicit `tele.flush()`; `r1`'s `normalize()` now strips `seq`/`ts`/`thread`; `w2-woven-run`'s output reorders (the program's own prints precede the flushed captures). `w5-grouping` (human reader) is unchanged — `ts`/`thread` stay OFF the human line (eyeball format); the machine line + NDJSON carry the full coordinate set. Tracked sink logs (`cap.log`, `det.log`) now contain a per-run `ts`, so they are no longer byte-stable — both claims already assert via wildcarded stdout echo, not log bytes, so this is fine (per the verification contract's tracked-log rule). Full suite green: 289/290, only the known `example-faster` INCONCLUSIVE (box noise). **Not built (deliberately out of S1's scope):** hook emission (#1), GPU timestamps (#3), cadence (#5), replay-on-demand (#7), Tracy forwarding.

---

## 19. Time travel + constraints to hold now (recorded 2026-07-03, pre-compaction — owner intent, not yet scheduled)

**Timeline rewind is wanted.** From the 2026-07-03 review conversation: the owner wants an in-engine **timeline rewind** ability (scrub back through the run), explicitly *instead of* arbitrary save points — a save point is just a bookmark on the timeline, so the timeline is the more general thing. Dev tool first; maybe a gameplay mechanic later (same substrate, Braid-style). Reference point: the Tomorrow Corporation tech demo — record inputs + periodic state snapshots, scrub any past frame, even replay recorded inputs through *edited* code.

**Mechanism (small, because determinism does the heavy lifting):** `rewind(frame N)` = restore the nearest snapshot ≤ N, replay recorded inputs forward to N. Snapshots = memcpy of the sim state block every K frames + the input log. Composes with §18 gap #7: scrub to frame N, then replay from there with per-question weaving — time-travel debugging and replay-on-demand as **one system**.

**Unturned stones — constraints to hold now** (ordered by how much they'd hurt to discover late):

1. **Snapshotability of sim state.** Rewind restores state by memcpy, so the sim state block must be **pointer-free and self-contained** — indices/handles only, no raw pointers into or out of it, no hidden globals. Hot-reload already pushes this way. **Action available today:** a read-only audit of the state block. Cheap to hold from the start, miserable to retrofit.
2. **The nondeterminism boundary must be enumerated.** Replay works only if *all* nondeterminism enters through one recorded seam: inputs, RNG seed, time. A single `time.now()` inside sim code silently breaks the edifice; the determinism guard catches divergence but not where the leak is. Rule to adopt: **the sim never reads the clock — the host passes dt/frame in.**
3. **Multithreading vs. determinism.** §18 commits to multithreaded *capture*; a multithreaded *sim* stays deterministic only with deterministic scheduling — fixed work partitioning per frame, deterministic reduction order for float sums. This constrains how the game gets threaded; decide before threading arrives.
4. **Name stability for differential diffs.** Run-vs-run diffing is trivial (weaver names are source-derived, stable). Diffing across an *edit* breaks alignment at renames — accepted; the tool should report "diverged at first renamed record" honestly rather than pretend.

**Prior-art positioning (from the same review, so it isn't re-litigated):** the §18 spine/two-sink design independently converges on Unreal Insights / RAD Telemetry (evidence it's right); their shared failure is being GUI-first and agent-hostile, which the owned Sink B fixes. The "program as science" frame is Pernosco/rr's model (record nondeterminism, derive on demand) — unavailable to games off the shelf (Linux-only / 10–20× slowdown), but cheap here because determinism is already enforced. The genuinely novel combination in this repo: source-weaving for a no-macro language + agent-readable postmortem records + **a claim harness that can certify an analysis's conclusion** — no existing observability system has that last piece.

---

**Resume pointer:** start at W0 after owner reviews this doc and resolves §13. Weaver mechanism happy-path-proven (`agent-scratch/weave-demo/` runs); hooks proven (`claims/tele/instrument-hooks` PASS). Known-unhandled before production: do-forms, relative imports, switch/when, pointers/maps, line-preservation, seq — all assigned to W2. Remaining work is productizing the spike + the lab-side flight recorder. **NEXT (2026-07-01): the capture-layer completion in §18 — the correlated spine + postmortem sink + per-thread capture. W0–W7 shipped the value side; §18 is the intended-but-unbuilt correlation side.** A 2026-07-03 review pass added gap #7 (replay-on-demand instrumentation — likely the highest-leverage piece), the analysis layer (NDJSON at flush → DuckDB; differential run-diffing; invariant mining), the `frame_mark` mechanism, the per-thread `seq` tie-breaker, hard rule §14.10 (perf at `on`, never `max`), and re-ranked GPU timestamps last among the gaps. §19 records the timeline-rewind intent (snapshot + input-replay), the four hold-now constraints (snapshotable state, enumerated nondeterminism boundary, deterministic threading, name stability), and the prior-art positioning. The §18 verification prerequisites landed 2026-07-03: `claims/tele/r1-replay-determinism` + `claims/tele/w2-weave-drift`, plus the verification contract above — implement §18 against those. **NEXT (2026-07-03): S1 landed the spine + `frame_mark` (§18 gaps #6 + #4) — `tele/spine.odin`, per-thread buffers merged at flush, canonical line `tele cap seq ts thread frame name=value type proc loc`, NDJSON sink, claims `s1-spine-single`/`s2-spine-threads`/`s3-spine-ndjson`; suite 289/290 green.** Remaining §18 gaps, unstarted: #1 hook emission + timestamps (unlocks caller-attribution + durations/depth), #7 replay-on-demand (highest-leverage), #5 cadence, #3 GPU timestamps (last). The spine is now the funnel those feed.
