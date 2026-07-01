# TELE — resume at W6 (post-compact pointer)

> **SUPERSEDED (2026-07-01) by `TELE-W7-start.md`. W6 (flight recorder) is done + verified.** Kept for history.

**Status:** W0–W5 ✅ BUILT + verified (2026-06-30). Next = **W6** (flight recorder for the lab).

## Source of truth
`docs/superpowers/specs/2026-06-28-tele-observability-redesign.md` §16 is the authoritative build log — W0–W5 are documented there as ✅ BUILT. Read §16 + the W6 entry + §10 (the `max` retention model) first.

## W5 — ✅ DONE (2026-06-30)
Closed the **render-time woven→source path remap** carried since W3, plus reader polish. In `tools/domains/odin/odin_lib/tele/capture.odin`:
- **`_src_path`** (both human + machine readers): at `max` zrun compiles a woven mirror, so a capture's `#caller_location.file_path` pointed into `.tele-woven/<pkg>`. The mirror is **flat** (every woven file shares its source basename), so `source = SRC_ROOT + basename` — the woven root never has to be known. `SRC_ROOT :: #config(TELE_SRC_ROOT, "")` (in `tele.odin`); empty (claim.py / plain build, never woven) = **identity**, so non-woven captures keep the real source path. Line numbers were already correct (same-line injection); only the path needed fixing.
- **zrun wiring** (`tools/runners/zrun/src/main.rs`): passes `-define:TELE_SRC_ROOT=<source dir>` on **both** run paths (console `run_console` + windowless `run_windowless`) at `max`. Rebuilt `cargo build --release`.
- **Human reader grouping:** a `proc:` header prints once when the proc changes; captures indent under it (folds by proc in an editor; the repeated `(in proc)` tag is gone). `g_last_proc` is render state, not a Record coordinate. Machine reader unchanged (greppable, one-record-per-line).
- **Claims (3):** `w5-path-remap` (remap exact, machine), `w5-file-sink` (capture→`TELE_FILE` with remap), `w5-grouping` (human proc-grouping format exact). See the ledger below.
### W5 verification ledger (everything I built is verified — see note on the one real limit)
The only thing that genuinely can't have an automated regression *claim* is the nondeterministic woven value *stream* diffed exactly (§12) — and even that is RUN-verified by eyeball each time. "Can't write an exact-match claim" ≠ "won't run it." Everything below was run.

**Claim-pinned (deterministic regression guards — `just claim tele/<name>`):**
- `w5-path-remap` — remap logic (SRC_ROOT + basename) + line-number preservation, asserted EXACT (machine fmt).
- `w5-file-sink` — a woven capture's machine line routes to the `TELE_FILE` sink WITH the remap applied (reads the file back, asserts `loc=/src/pkg/main.odin:17` exact). Pins sink-routing ∘ remap.
- `w5-grouping` — the human proc-grouping format EXACT (ANSI + `proc:` headers + indentation + seq + line numbers; path wildcarded). `main→add→main` re-headers on return. (Same claim style as `p9-human`.)
- All tele claims green. `doctor` PASS. `cargo build --release` clean (no warnings). `odin-build` at max still compiles raw source (exit 0, no weave).

**Run-verified (forensic — no automated guard POSSIBLE because the woven path needs a real weave, which claims never do; so these are eyeballed each run per §12, not skipped):**
- REAL woven→source substitution end-to-end: single-file (`agent-scratch/tele-w3-probe`, console **and** windowless) AND **multi-file single-package** (`agent-scratch/tele-w5-multifile`: each capture remaps to its OWN basename, `helper.odin:4`) AND **a path WITH SPACES** (`tele w5 space/main.odin` → remaps clean; zrun passes the define as one argv, no shell split). Every `loc` = real source, zero `.tele-woven` leak.
- `just claim tele/w5-path-remap` + a live zrun `max` run both PASS in **native PowerShell** (pwsh 7.5.5, MSYSTEM empty).
- **Replay a woven run** (reconstructs Zed's task env — the ONE allowed env-set, see Verification policy): `cd <root>; ZED_WORKTREE_ROOT='<root>' ZED_DIRNAME='<abs pkg dir>' tools/runners/zrun/target/release/zrun.exe odin-run` (console/human) or `odin-run-log` (windowless→`run.log`/machine). Flip `just tele max` first, `just tele on` after.

**Recorded, not a built thing (so nothing to test):**
- The transient "1 failed" in the FIRST full-suite run — never identified by name (output scrolled); did NOT reproduce on a clean re-run. Conclusion: a `faster` claim swung INCONCLUSIVE→hard-FAIL under CPU load from a concurrent zrun/Zed task. Not a regression (changes touch only the `tele` package — all tele claims deterministic — and zrun, which the suite never invokes).

## What W6 is (from §16 + §10 — the LARGE one, lab-side)
**Flight recorder for the lab.** Unlike the W2/W3 firehose (finite/throwaway runs → full stdout/`TELE_FILE`), the lab is **continuous @60fps**, so it needs a **bounded ring buffer + dump-on-trigger**, with the write kept **off the hot path** and the log grep-able. Triggers: a **manual key combo** (lab) and **programmatic** ones (assert fail, NaN/out-of-range, determinism divergence, end-of-run) — the automatic ones are the prize. The recording is **forensic, not claim-tested** (nondeterministic, read after the fact). Determinism guard (§5.2) stays intact.
- **Also the home of the opt-in `frame`/`tick` Record field deferred from W4** (§7 / §13.5): the lab's 60fps loop has the explicit frame counter that §7's "no hidden state" rule requires; throwaway code doesn't, which is why it's NOT in the woven machine line. Wire `frame`/`tick` from the lab's real counter here.

## Live facts not obvious from the spec
- **Dial:** `.tele` at repo root is `on` (restored after W5 verification). Flip with `just tele [off|on|max]`.
- **Code map:** `tele/capture.odin` (capture + `_det_value` determinism + `_src_path` remap + human/machine readers + proc-grouping), `tele/tele.odin` (dial + `FORMAT`/`FILE`/`SRC_ROOT` knobs + palette), `tele/sink.odin` (`_machine_line`, `TELE_FILE` append sink), `tele/hooks.odin` (W1 enter/exit, `when MAX`). The ring buffer is NEW W6 surface — likely a new file (`tele/recorder.odin` or similar), `when MAX`, off-hot-path write.
- **Lab side:** the lab is the continuous @60fps consumer (`lab/`). W6's manual-key trigger lives there; check how the lab loop + input is structured before wiring a key. The `observe()` primitive (`tele/observe.odin`) already feeds the lab ImGui panel — W6's recorder is adjacent but distinct (ring + dump, not live-watch).
- **Claims:** `just claim tele/<name>` (NOT bare name). The recorder stream is forensic (not stdout-diffed); claim-test only the deterministic, structural parts (e.g. ring wraparound count, trigger fires, dump shape) — mirror `w2-weave-count` (CLI/count style) rather than `w4-record-shape` (stream-diff style) where the data is nondeterministic.
- **W2 deferral still open:** multi-local-package import-closure mirror (single-package weaving ships; relative sub-package imports detected + logged, not mirrored). If it lands, `_src_path`'s basename join is revisited (woven files would gain sub-dirs).

## Verification policy (CLAUDE.md, "Verifying it works")
Work in bash (faster). PowerShell is the **end-layer gate**, not primary. Any user-facing command/recipe you create/change must ALSO pass in the **native PowerShell tool** (`verify-in-native-powershell` skill → cleanliness check `$env:MSYSTEM` empty, then run verbatim). Never hand-set env vars to force a pass — the ONE exception is reconstructing a real launcher's documented env (e.g. zrun's `ZED_WORKTREE_ROOT`/`ZED_DIRNAME`, which Zed supplies; there's no other way to drive zrun outside Zed). W6 likely touches the **lab** (`lab/build.py` build) and maybe **zrun**; if zrun changes, `cargo build --release` in `tools/runners/zrun` and re-clear the gate on the real run task.

## Don't re-litigate
- **PowerShell verification** is fully resolved: native PowerShell tool is the real fix (pwsh 7.5.5, MSYSTEM empty).
- **W4 determinism contract** + **W5 path remap / grouping** are settled + verified. Don't reopen `_det_value` (rawptr/proc/slice/newline residual) or `_src_path` (basename+SRC_ROOT, identity-when-unset). The struct-element + `uintptr` residual is a deliberate forensic scope call (§5.2).
