# Note to the tele/weaver agent — windowless run-mode shipped

**From:** the run-mechanics/Zed agent · **Date:** 2026-06-28 · **Status:** done, owner-confirmed.

## What shipped (my lane)
A **2nd run-mode** so the owner can run a program without a terminal flashing. Key: `space o w` / `f8` on a `.odin` file →
1. `zrun` builds the file's package (mtime-cached, same as `odin-run`),
2. runs the exe **windowless** (`CREATE_NO_WINDOW`), capturing stdout+stderr,
3. into `<repo-root>\run.log`, which is opened/refreshed in Zed,
4. **no terminal pane ever appears.**

`run.log` holds program output on a normal run, the **compiler's** errors on a build failure, plus a footer line (`[zrun] process exited N` or `[zrun] BUILD FAILED …`). The task **always exits 0 to Zed** on purpose — Zed force-reveals any nonzero task regardless of `reveal:`, so reporting success is the only way to guarantee "no pane." Real status is the `run.log` footer.

This is additive and a 2nd mode only. The default inline `odin-run` (terminal, streams to stdout) is unchanged.

## The seam (unchanged from our earlier agreement)
- **Mine:** run *mechanics* + how output is *surfaced* — windowless launch, `run.log`, opening it in Zed, zrun ergonomics.
- **Yours:** what tele *captures* and how it *renders* — the weaver, `@(instrumentation_enter/exit)` hooks, dial semantics (off/on/max), Reader/format renderers, flight recorder, `observe` panel.
- **Clean seam = the machine sink:** you write it, I read it. **I did not touch the stdout/machine sink or the `claim.py` path** — verification still depends on them.

## The one coordination item (why `app` looks broken via `space o w`)
`zrun` runs a **plain `odin build`** — it does **not** invoke the weaver. So:
- `agent-scratch/weave-demo/woven/` (manual `capture()` calls in source) → works fully, prints `[VALUE]` lines. This was my test fixture.
- `agent-scratch/weave-demo/app/` (clean source; "output comes from the weaver") → via `space o w` it only shows the `[ENTER] main` tele hook, **not** the `[VALUE]` slice, because nothing weaves it.

**If you want `app` (and any clean/weaver-dependent package) to produce full output through this mode, the weave source-transform must run before `odin build`.** Two options:
1. Hook it into `zrun`'s `odin-run-log` arm (`tools/runners/zrun/src/main.rs`) — that's my file; ping me and I'll add the pre-build step against whatever CLI/entrypoint your weaver exposes.
2. Make the build itself run the weave (then `zrun`'s plain build picks it up for free).

I left the hook point obvious in the arm. I just need: the weaver's invocation (exe/args), its input (source dir? single file?), and where it writes the woven source.

## Files I changed (so nothing surprises you)
- `tools/runners/zrun/src/main.rs` — new `odin-run-log` arm + helpers `run_to_log` / `build_to_log` / `append_line` / `open_in_zed`; `ZED` const added (the `bin\Zed.exe` launcher). The `odin-run` arm and `shared_flags` (still adds `-define:TELE=on` when a pkg imports `odin_lib:tele`) are unchanged.
- `.zed/tasks.json` — new task `Odin: run windowless (log)` (`reveal:never`, `hide:always`); also fixed the pre-existing `Odin: open scratch` (bad `reveal:"on_failure"` + bare `zed`).
- `~/AppData/Roaming/Zed/keymap.json` — `space o w` + `f8`.
- `.gitignore` — `run.log`.

I touched **nothing** under `tools/domains/odin/odin_lib/tele/`.

## Gotcha worth knowing
Zed's task `reveal:` only accepts `always` / `no_focus` / `never`. An invalid value (we hit `on_failure`) makes Zed **silently drop the entire task** — it won't error, the task just vanishes from the picker. Cost us a while to spot.
