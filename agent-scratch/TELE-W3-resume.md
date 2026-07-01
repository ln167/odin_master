> ⚠️ **SUPERSEDED (2026-06-30) by `TELE-W6-start.md`.** W3 + W4 + W5 are done + verified.
> Use `agent-scratch/TELE-W6-start.md` + spec §16 to resume at W6. Kept for history.

# TELE build — resume pointer (post-compaction)

**Spec:** `docs/superpowers/specs/2026-06-28-tele-observability-redesign.md` (v2.1; §16 = phase plan; build-status in header + §16 markers).
**Owner sign-off:** granted 2026-06-29; §13 decisions 1–4 = recommended; #5 = W4 grill.

## DONE + claim-tested (full suite green: 277 claims; only the 2 `faster` claims non-PASS = INCONCLUSIVE by box-noise, unrelated)
- **W0 dial** `off|on|max`: `tools/domains/odin/odin_lib/tele/tele.odin` — `ENABLED :: TELE∈{on,max}`, `MAX :: TELE=="max"`; `steroids`/`STEROIDS` deleted. Migrated claims renamed: `p0-import-steroids`→`p0-import-max`, `p0-steroids-dbg`→`p0-max-dbg`; `p0-import-off` now prints `tele.MAX`.
- **W1 hooks** `tele/hooks.odin` (all `when MAX`): enter/exit pair + `g_hook_busy` re-entrancy guard + own-code filter `_under_odin_root` (slash/case-insensitive prefix vs `ODIN_ROOT`). Counts only, NO stdout emit (so max-built claims unaffected). Public `hook_stats() -> Hook_Stats{enter,exit,own_enter}` (`@(no_instrumentation)`; defined in both when/else so it exists at off too). Claims `w1-hooks-off`, `w1-hooks-max`.
- **W2 weaver + capture:**
  - Runtime: `tele/capture.odin` — `capture(name, value, loc=#caller_location)`, body `when MAX`. Determinism (`_det_value` via core:reflect): typed pointers peeled to pointee, nil→`nil`, rawptr/multiptr→`ptr`, maps→`map[N]` (elided), else `%v`. `seq` monotonic (`g_cap_seq`). Per-site cap `CAP_PER_SITE :: #config(TELE_CAP,256)` keyed by `(file_path data ptr, line)` in `g_cap_sites: map[u64]int`. Machine line: `tele cap seq=N name=val type=T proc=P loc=file:line`. Helpers compiled unconditionally so fmt/reflect imports stay used at off.
  - Transform lib: `tools/domains/odin/odin_lib/weave/weave.odin` (`package weave`, importable `odin_lib:weave`). `weave_source(src, path, alloc) -> Woven{src,count,skips}`. SAME-LINE injection: `_cap_after` = `; tele.capture("n", n)` at `stmt.end.offset`; `_cap_at_open` = ` tele.capture("n", n);` at `block.open.offset+1` (loop vars + params). Appends `import "odin_lib:tele"` at EOF (legal after decls → no line shift). Covers Value_Decl(`:=`)/Assign(`=`)/For/Range/If(+else)/Switch(case bodies)/proc params; blank `_` skipped. SCOPED+LOGGED: do-form (`Block_Stmt.uses_do`), When_Stmt, Type_Switch_Stmt.
  - CLI: `tools/domains/odin/weaver/weave.odin` (`package main`). `weave <pkg-dir> <out-dir>`: weaves every `.odin` in dir → mirror; collections pass through; local sub-pkg imports detected+logged (NOT mirrored — deferred W2 item). Prints `woven N capture(s) across M file(s)`; exit 0/1/2.
  - Claims: `w2-weave-count` (in-proc count+skip log), `w2-woven-run` (real woven output runs at max → compiles + line==source + determinism + correlation + seq), `w2-capture-max`, `w2-capture-off`, `w2-capture-cap`.

## W3 — DONE + tested (2026-06-29). **PIVOTED on owner challenge: dial = config setting, NOT a keybind.**
Owner rejected the "new max keybind" plan: weaving is a build-profile (debug/release-style instrumentation), so it must not own a key. Output sink = the keybind (console / windowless / future analyzer); dial = a project setting; switching is the rare action.
- **`.tele` file at repo root** = the dial (`off|on|max`, self-documented, default `on`). Per-repo, travels with the project.
- **zrun reads it fresh each run** (`tele_dial()` in `tools/runners/zrun/src/main.rs`). The **existing** two run tasks honor it — NO new task, NO keymap/tasks.json edits. `shared_flags(dir, root, dial)` gained a `dial` param (replaces the hardcoded `-define:TELE=on`).
  - `on`/`off` → builds source directly, byte-identical to before (proven path untouched).
  - `max` → `weave_to()` writes a throwaway mirror under `.tele-woven/<pkg>` (source NEVER written; gitignored), builds *that* at `-define:TELE=max` (reads the woven dir so the injected `import "odin_lib:tele"` pulls collection+define exactly when captures exist). Windowless captures weave/build errors into run.log (truncation dance) before the run output.
- **Every run announces its dial**: console `[zrun] dial: max (woven firehose)`; windowless run.log footer `[zrun] dial: max — process exited N`. Answers owner's "I should always know what I'm running."
- **Format-by-sink** (capture.odin has `FORMAT :: #config(TELE_FORMAT,"human")` → `_HUMAN`/`_MACHINE` `when`-branches): windowless build passes `-define:TELE_FORMAT=machine` so run.log is plain greppable `tele cap seq=…` (no ANSI; Zed renders it clean). Console keeps default `human` (colored, terminal renders). Verified: windowless run.log = 0 ESC bytes; console = 9 ESC lines. (claim.py uses machine too.)
- **Weaver exe built in place**: `tools/domains/odin/weaver/weave.exe` (gitignored by `*.exe`). Rebuild: `odin build tools/domains/odin/weaver -collection:odin_lib=tools/domains/odin/odin_lib -out:tools/domains/odin/weaver/weave.exe`. zrun build: `cargo build --release` in `tools/runners/zrun` (cargo 1.95 confirmed).
- **`just tele [off|on|max]`** flips/shows the dial (justfile recipe). `.gitignore` += `.tele-woven/`.
- **Tested end-to-end** (probe `agent-scratch/tele-w3-probe/`): on/max × console/windowless, 4 cases. max → 7 captures woven, correlation seq [1]–[9], proc/type/value, line==source; on → unchanged. Replicate a run without Zed: `cd <root>; ZED_WORKTREE_ROOT='<root>' ZED_DIRNAME='<abs pkg>' tools/runners/zrun/target/release/zrun.exe odin-run` (or `odin-run-log`).
- KNOWN (W5 deferral): capture loc shows the WOVEN path (`.tele-woven/...:line`); line NUMBERS are correct (same-line injection), only the file PATH needs render-time remap → source. That's W5.
- claim.py / plain build never weave (structural — weave lives only in zrun's two run tasks). Tele claims unaffected (didn't touch weave_source/capture/hooks).

## NEXT: W4 — Record + Correlation-lite (§7 / §13.5). Settle the metadata field set (the §13 #5 grill); `capture()` records the agreed coordinates incl. `proc`. Claim: machine-line shape for a woven capture is exact + deterministic.
## Later phases: W5 Reader polish + render-time path remap (woven path → source path; also the future visual-analyzer = 3rd output sink), W6 ring/flight-recorder, W7 robustness.

## Verify command (any claim): `python tools/substrate/claim.py tele/<name>` (NOTE the `tele/` prefix — bare name resolves to a nonexistent `tests/<name>` → WinError 267). Full suite: `python tools/substrate/claim.py`. odin reachable via Bash (Git Bash), not cmd.exe.
## Git: nothing committed (policy). Do NOT commit unless asked.
- THIS-SESSION work (all additive/untracked): `tools/domains/odin/odin_lib/tele/` (dial edit in tele.odin + new hooks.odin, capture.odin), `tools/domains/odin/odin_lib/weave/`, `tools/domains/odin/weaver/`, `claims/tele/` (new w1-*/w2-* + renamed p0-import-max/p0-max-dbg), the spec doc, agent-scratch notes.
- NOT mine this session (pre-existing `M`/`D` from earlier sessions — leave alone): `tools/substrate/claim.py`, `tools/runners/zrun/src/main.rs`, `.zed/tasks.json`, `lab/*`, `tools/profiler/*`, deleted `odin_lib/instrument/*`. (W3 WILL edit zrun/main.rs + .zed — that's the next step, not done yet.)
