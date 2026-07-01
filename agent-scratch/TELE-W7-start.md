# TELE — W7 ✅ DONE — the redesign (W0–W7) is COMPLETE

**Status:** W0–W7 ✅ BUILT + verified. **W7 (the last phase) finished 2026-07-01.** There is no W8 — the tele observability redesign is fully built. Nothing left to resume.

## Source of truth
`docs/superpowers/specs/2026-06-28-tele-observability-redesign.md` §16 is the authoritative build log — W0–W7 are all ✅ BUILT. Header line 6 + §16 W7 record the completion.

## W7 — ✅ DONE (2026-07-01) — robustness hardening
Two localized `INSTRUMENT`-gated fixes in the scope backends; no new surface, no dial change.

- **tracy depth guard** (`tools/domains/odin/odin_lib/tele/scope_tracy.odin`): the zone stack is a fixed `[64]Tracy_ZoneCtx`. Nesting past 64 zones wrote `_tracy_stack[64]` out of bounds (bounds-check panic, or corruption under `-o:speed`). Now `_tracy_begin`/`_tracy_end` guard store/emit with `if _tracy_top < len(_tracy_stack)`, while `_tracy_top` **keeps counting** past the cap so begin/end stay balanced (a level is emitted iff its index is in range; deep levels just aren't sent to Tracy).
- **spall backing free + reuse** (`tools/domains/odin/odin_lib/tele/scope_spall.odin`): `spall_init`'s `make([]u8, 1<<16)` was never freed (64 KiB leak per init, doubled on re-init). Now the backing lives in package var `_spall_backing`; `spall_shutdown` `delete`s it after `buffer_destroy` (which flushes but doesn't own our slice); `spall_init` early-returns when `_spall_inited` (reuse guard — no second alloc).

### W7 verification ledger
- **`w7-spall-noleak`** (`output`, `INSTRUMENT=spall`, no external lib): tracking allocator over 2 init/shutdown lifecycles + a redundant re-init → `leaks: 0`. **Proven meaningful:** disabling `delete` → `leaks: 2` (the 2 shows the reuse guard's value too).
- **`w7-tracy-depth`** (`output`, `INSTRUMENT=tracy`, needs `tracy.lib` like `p8-scope-tracy`): recurse 200 deep (201 nested SCOPEs, past 64) → must reach `depth ok`. **Proven meaningful:** removing the guard → `Index 64 is out of range 0..<64` panic.
- Both restored to green after the RED proof. `p8-scope-{spall,tracy,both,off}` all PASS. Real **tracy smoke** (`tools/profiler/smoke_test_tracy.py` — builds `INSTRUMENT=tracy`, links `tracy.lib`, port 8086 live, exit 0) PASS. `doctor` PASS. Both new claims PASS through `just claim` in **native PowerShell** (pwsh 7.5.5, `MSYSTEM` empty).
- **Scoping note (why the rest of the suite wasn't re-run):** both edits are strictly `when _SPALL`/`when _TRACY`-gated (plus one always-compiled `_spall_backing`/`delete` line in an always-compiled proc body); every non-`INSTRUMENT` claim compiles that code as `when false`, so it can't affect them. `p8-scope-off` confirms the tele package still compiles clean with instrument off — the same condition the lab builds under (the lab never sets `INSTRUMENT`).

## The whole redesign, one line each (all ✅ BUILT + verified)
- **W0** dial `off|on|max` (`ENABLED`/`MAX`).
- **W1** hooks at `max` (`hooks.odin`, enter/exit + re-entrancy + own-code filter).
- **W2** the Weaver (`weaver/` CLI + `odin_lib:weave` + runtime `tele.capture`); same-line injection, determinism rule, `seq`, per-site loop cap.
- **W3** dial-as-setting (`.tele` file, zrun reads it; `max` weaves a `.tele-woven/` mirror; format-by-sink).
- **W4** Record field-set (6 mandatory coords) + hardened `_det_value` determinism (rawptr/proc/slice-of-ptr/newline).
- **W5** Reader polish + woven→source path remap (`_src_path` = `TELE_SRC_ROOT` + basename; human proc-grouping).
- **W6** flight recorder for the lab (`flight.odin` — bounded ring + dump-on-trigger, record-time value copy, F2/NaN/assert/end-of-run triggers, lab-supplied `frame`).
- **W7** robustness hardening (tracy depth guard + spall backing free/reuse).

## Live facts
- **Dial:** `.tele` at repo root = `on`. Flip with `just tele [off|on|max]`.
- **Claims:** `just claim tele/<name>` (NOT bare name). 49 tele claims total now (was 47 after W6; +`w7-spall-noleak` +`w7-tracy-depth`).
- **Code map:** `tele/scope.odin` (SCOPE/SCOPE_NAMED zones), `tele/scope_tracy.odin` + `tele/scope_spall.odin` (backends, W7-hardened), `tele/flight.odin` (W6 ring), `tele/capture.odin` (weaver runtime + `_det_value` + `_src_path`), `tele/tele.odin` (dial + knobs), `tele/sink.odin`, `tele/hooks.odin`, `tele/observe.odin`.

## Open / not part of the redesign
- **W2 deferral still open:** the multi-local-package import-closure mirror (single-package weaving ships; relative sub-package imports detected + logged, not mirrored). If it ever lands, `_src_path`'s basename join is revisited. This is a W2 tail, not a blocker — the redesign is done without it.
- **Git:** all W0–W7 work is uncommitted per repo policy (never commit unless the user says so). The user has not asked for a commit.

## Don't re-litigate
- W6 tier decision, W6 record-at-record-time, the `frame`-on-the-flight-Record decision, W4 determinism contract, W5 path remap/grouping — all settled + verified. PowerShell verification fully resolved (native tool).
- W7's two guards are proven RED-without/GREEN-with; don't reopen unless a real deeper-than-64 tracy trace or a spall re-init pattern surfaces a new case.
