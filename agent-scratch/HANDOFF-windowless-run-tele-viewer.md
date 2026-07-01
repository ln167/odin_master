# HANDOFF — windowless run-mode + `run.log` viewer (EXECUTION-READY)

**Date:** 2026-06-28
**Status:** ✅ **SHIPPED & CONFIRMED WORKING BY OWNER 2026-06-28.** Press `space o w` / `f8` on a `.odin` file → builds (mtime-cached) → runs the exe **windowless** → all output lands in `<root>\run.log`, opened/refreshed in Zed → **no terminal pane ever appears.** Owner verified end-to-end ("everything works").

**Final design (differs from the original TODO code below — this paragraph is the source of truth):**
- `zrun odin-run-log` captures **everything** into `run.log`: program stdout+stderr on a run, OR the **compiler's** errors on a build failure (via `build_to_log`), plus a footer line `append_line` writes — `[zrun] process exited N` or `[zrun] BUILD FAILED (exit N) …`.
- **zrun always exits 0 to Zed** for this task. Reason: Zed *force-reveals any task that exits nonzero*, regardless of `reveal`. So the only way to guarantee "no pane ever" is to never report failure to Zed — the true status is the `run.log` footer, not the task exit code. (Inline `odin-run` and the claim harness keep their real exit codes — untouched.)
- Zed task config = the proven no-pane pattern: `reveal: "never"`, `hide: "always"`, `use_new_terminal: false`. (NOTE: `reveal: "on_failure"` is **invalid** in Zed's schema — valid values are only `always` / `no_focus` / `never`; an invalid value makes Zed silently *drop the whole task*. This bit us hard mid-build. Also fixed the pre-existing `Odin: open scratch` task, which had the same invalid value and was silently broken.)
- `ZED` const → the CLI *launcher* `…\Zed\bin\Zed.exe` (not the top-level GUI exe); same binary `zed` resolves to from cmd.exe. `open_in_zed` spawns `Zed.exe --add run.log` detached → reuses the current window (confirmed by owner). Warm latency ~50ms.
- `Odin: open scratch` command also switched from bare `zed` (not on cmd.exe's PATH → "'zed' is not recognized") to the full launcher path.

**Machine:** Windows 11, `user1`. Repo: `C:\Users\user1\dev\odin_master`.

## WEAVER WIRING — PARKED (tele agent replied 2026-06-28: HOLD)
Their reply (`agent-scratch/NOTE-to-run-agent-RE-weaver-wiring.md`): **don't wire the weaver yet.** It's a throwaway spike (`agent-scratch/weave-demo/weaver/weave.odin` — hardcoded path consts, no CLI, single-file not package, wrong injected line numbers). Whether weave is a `zrun` pre-step vs. part of the dial-gated build is a **spec decision in their lane** (it couples to the dial `off|on|max` and to `claim.py`, which builds raw + diffs stdout). They confirmed my mode is correct as-is (`app/` showing only `[ENTER]` is expected; `woven/` is the right demo) — **nothing to fix on my end.** Hook point in `zrun`'s `odin-run-log` arm stays **dormant**; they'll ping with the real contract (provisional: `weave <in-pkg-dir> <out-mirror>`, dial-gated, no-op at `off`) when the spec lands. **FYI applied:** confirmed zrun has no `steroids` assumptions (dial is being redefined `off|on|max`, `steroids` removed); `shared_flags` `-define:TELE=on` was OK'd. No action for me until pinged.

## FOR THE OTHER AGENT (weaver/tele lane) — original coordination item (now answered above)
`zrun` runs a **plain `odin build`** — it does **not** invoke the weaver. So the weaver-dependent demo `agent-scratch/weave-demo/app/` (clean source, "output comes from the weaver") produces only the `[ENTER]` tele hook via `space o w`, not the full `[VALUE]` slice. The manual-`capture()` demo `agent-scratch/weave-demo/woven/` works fully (that's the fixture I tested with). **If/when you want `space o w` to show weaver output for `app`, the weave source-transform needs to run before `odin build`** — either wired into `zrun`'s `odin-run-log` arm (`tools/runners/zrun/src/main.rs`, my lane — ping me) or as a pre-step the build calls. The clean seam still holds: I own run-mechanics + surfacing (`run.log`/Zed); you own what's captured + how it's rendered. The machine/stdout sink and claim path are untouched.

---

## THE GOAL (owner's words)
"Press a hotkey → it runs → that's it." Stop depending on the terminal — its output is unreadable, non-collapsible, non-interactive. The owner wants a run that **doesn't flash a terminal** and lands its output somewhere a human can actually read.

## THE UNLOCK
A terminal is NOT required to run a program — it only appears because `zrun` pipes the exe's stdout into a Zed pane. Launch the exe **windowless** (no console), capture output to a **file**, open the file in **Zed**. Done.

---

## SCOPE — locked after coordinating with the parallel `tele` agent

The 2026-06-21 tele spec's P0–P9 are real code but its *direction is superseded*; the new center of gravity is **"zero manual logging — full observability for free"** via a build-time **weaver** (`agent-scratch/weave-demo/`). **Read `CONTEXT.md` (repo root)** — the universal-language glossary. Key terms: **Reader** (Human = pretty / Machine = greppable, for agents+claim harness), **Value slice** (variable data — the weaver's job), **Execution slice** (control flow — Tracy/Spall's), **Profiler** = "a presentation target, not a Source; neither agent- nor claim-readable."

### The seam (who owns what)
- **MINE:** run-*mechanics* + how output is *surfaced* (windowless launch, `run.log`, opening it in Zed) + zrun ergonomics.
- **THEIRS:** what `tele` *captures* and how it *renders* — the weaver, the `@(instrumentation_enter/exit)` hooks, dial semantics, Reader/format renderers, the flight recorder, the `observe` panel. **Do not edit `tools/domains/odin/odin_lib/tele/` without coordinating.**
- **Clean seam = the machine sink:** they write it, I read it.

### Owner decisions (Luke, final)
1. **Tracy = optional perf profiler only.** Do NOT build/procure the Tracy GUI or wire Tracy messages/plots as the viewer. (This kills the old handoff's whole Tracy-first plan.)
2. **Windowless run = a 2nd mode, never the default.** The inline `odin-run` and the **stdout/machine sink stay untouched** — `claim.py` diffs stdout and agents grep it; it is load-bearing for verification.
3. **No bespoke viewer app yet** (CLAUDE.md "no engine/no editor surfaces" line). For now **"Zed opens `run.log`" is enough.** The eventual custom viewer should be an *in-engine* log viewer — future, not now.

---

## THE BUILD (what to execute)

`zrun odin-run-log`: build the file's package (cached, same as `odin-run`) → on success run the exe **windowless**, capturing stdout+stderr into `<ZED_WORKTREE_ROOT>\run.log` → open that file in Zed. On build failure: nonzero exit so the Zed task reveals the pane (errors stay visible/clickable). Single fixed `run.log` path ⇒ Zed reuses one buffer and auto-reloads it each run.

File: `tools/runners/zrun/src/main.rs`. Rebuild: `cd tools/runners/zrun && cargo build --release`.

### Progress — ALREADY APPLIED ✅ (do not redo)
Edit #1 done: added `use std::os::windows::process::CommandExt;`, and two consts after `ODIN`:
```rust
const ZED: &str = r"C:\Users\user1\AppData\Local\Programs\Zed\Zed.exe";
const CREATE_NO_WINDOW: u32 = 0x0800_0000;
```

### TODO #1 — add helpers (insert in main.rs between the end of `fn timed(...)` and `fn main()`)
```rust
// Run a built exe with NO console window, capturing stdout+stderr into `log_path`
// (truncated each run); wait for exit. The windowless 2nd run-mode — output lands
// in a file a Reader opens instead of flashing a terminal. The canonical inline
// `odin-run` + the claim harness's stdout path are left untouched.
fn run_to_log(exe: &str, cwd: &str, log_path: &Path) -> i32 {
    let start = Instant::now();
    let out = match fs::File::create(log_path) {
        Ok(f) => f,
        Err(e) => { eprintln!("[zrun] run→log: cannot create {}: {e}", log_path.display()); return 1; }
    };
    let err = match out.try_clone() {
        Ok(f) => f,
        Err(e) => { eprintln!("[zrun] run→log: clone handle failed: {e}"); return 1; }
    };
    let status = Command::new(exe)
        .current_dir(cwd)
        .stdout(out)
        .stderr(err)
        .creation_flags(CREATE_NO_WINDOW)
        .status();
    let ms = start.elapsed().as_secs_f64() * 1000.0;
    match status {
        Ok(s) => { eprintln!("[zrun] run→log: {ms:.1} ms (exit {}) → {}", s.code().unwrap_or(-1), log_path.display()); s.code().unwrap_or(1) }
        Err(e) => { eprintln!("[zrun] run→log: spawn failed after {ms:.1} ms: {e}"); 1 }
    }
}

// Open (or focus) the log in the already-running Zed window. `--add` = current
// workspace, not a new window. Detached. NOTE: settings has
// cli_default_open_behavior:new_window — verify `--add` doesn't spawn a new
// window; if it does, that's the first thing to fix during testing.
fn open_in_zed(log_path: &Path, cwd: &str) {
    match Command::new(ZED).arg("--add").arg(log_path).current_dir(cwd).spawn() {
        Ok(_)  => eprintln!("[zrun] opened {} in Zed", log_path.display()),
        Err(e) => eprintln!("[zrun] could not open Zed ({e}); log at {}", log_path.display()),
    }
}
```

### TODO #2 — add the match arm (insert in `main()` right BEFORE `"odin-build-debug" => {`)
```rust
        // Windowless 2nd run-mode: build like odin-run, then run with no console,
        // capture to <root>\run.log, open it in Zed. Build errors still surface
        // (nonzero → the Zed task reveals the pane).
        "odin-run-log" => {
            let dir = env_or_die("ZED_DIRNAME");
            let root = env_or_die("ZED_WORKTREE_ROOT");
            let dir_path = PathBuf::from(&dir);
            let pkg = dir_path.file_name().and_then(|s| s.to_str()).unwrap_or("out");
            let out_path = dir_path.join(format!("{pkg}.exe"));
            let needs_build = match (newest_odin(&dir_path), mtime(&out_path)) {
                (Some(src), Some(exe)) => src > exe,
                _ => true,
            };
            let build_code = if needs_build {
                let out_arg = format!("-out:{}", out_path.display());
                let mut args: Vec<String> = vec![ODIN.into(), "build".into(), dir.clone()];
                args.extend(shared_flags(&dir_path, &root));
                args.push(out_arg);
                let argv: Vec<&str> = args.iter().map(String::as_str).collect();
                timed("compile", &argv, Some(&root))
            } else {
                eprintln!("[zrun] compile: cached (package unchanged)");
                0
            };
            if build_code != 0 {
                build_code
            } else {
                let log_path = PathBuf::from(&root).join("run.log");
                let run_code = run_to_log(out_path.to_str().unwrap(), &dir, &log_path);
                open_in_zed(&log_path, &root);
                run_code
            }
        }
```

### TODO #3 — usage line: add `odin-run-log` to the `eprintln!("tasks: ...")` list in `main()`.

### TODO #4 — `cargo build --release` (cwd `tools/runners/zrun`).

### TODO #5 — Zed wiring
- **New file** `.zed/scripts/odin-run-log.bat`:
  ```bat
  @echo off
  rem Windowless run → output to run.log, opened in Zed. See zrun odin-run-log.
  "%ZED_WORKTREE_ROOT%\tools\runners\zrun\target\release\zrun.exe" odin-run-log
  ```
- **New task** in `.zed/tasks.json` (insert right after the "Odin: run current file" object):
  ```json
  {
    "label": "Odin: run → log (windowless)",
    "command": ".zed\\scripts\\odin-run-log.bat",
    "cwd": "$ZED_WORKTREE_ROOT",
    "save": "current",
    "reveal": "on_failure",
    "hide": "on_success",
    "use_new_terminal": true,
    "allow_concurrent_runs": false,
    "tags": ["odin-run-log"],
    "env": { "ZED_FAST_TASK": "1" },
    "shell": { "program": "cmd.exe" }
  },
  ```
- **Keymap** `~/AppData/Roaming/Zed/keymap.json`: add `"space o w"` (next to `space o r`) and `"f8"` (next to `f7`), both → `["task::Spawn", { "task_name": "Odin: run → log (windowless)" }]`.
- **`.gitignore`**: add `run.log`.

### TODO #6 — TEST (verify the effect, not the banner)
Fixture = the weaver spike (already prints value-slice output): `agent-scratch/weave-demo/woven/` (its `woven.exe` prints `[VALUE] total = 24 (in main)` etc.).
```
ZED_DIRNAME='C:\Users\user1\dev\odin_master\agent-scratch\weave-demo\woven' \
ZED_WORKTREE_ROOT='C:\Users\user1\dev\odin_master' \
  tools/runners/zrun/target/release/zrun.exe odin-run-log
```
Assert: exit 0; `C:\Users\user1\dev\odin_master\run.log` exists and contains the `[VALUE]` lines; no console window flashed; Zed opened/focused `run.log` (and did NOT spawn a 2nd window — fix `--add` if it did). Then test the **build-fail path** (break a .odin) → nonzero exit, error text present (Zed task would reveal the pane). Confirm inline `odin-run` and `just verify-all` / a `claims/` run are **unaffected** (separate invocation; must still pass).

### TODO #7 — iterate to "el-primo" (owner's bar)
Levers: keep the mtime build-cache fast; minimize windowless-launch + Zed-open latency; pick the right default dial for this mode (likely leave the program as-is / let the weaver decide content — content is THEIR lane); confirm `run.log` buffer auto-refreshes in Zed without stealing focus annoyingly; make the failure UX clean. Decide whether `.odin` log syntax/folding in Zed helps readability (a future nicety, not now).

---

## GOTCHAS / DON'Ts
- **Don't touch** the stdout/machine sink or the `claim.py` path — verification depends on it. Windowless is additive only.
- **Don't** build/procure Tracy GUI, wire Tracy messages/plots, or build any standalone viewer app (owner + CLAUDE.md).
- **Don't** edit `tools/domains/odin/odin_lib/tele/` internals (weaver/hooks/dial/renderers/observe) without coordinating — that's the parallel agent's lane.
- **Don't** assume `steroids` dial semantics — it's being removed (new dial: off=gone · on=lean · max=flight-recorder).
- For **windowed/SDL** programs the answer is the in-window `tele.observe()` ImGui panel (their lane), not this windowless+log mode. This mode targets **console/throwaway** programs.
- Never `git commit/push` etc. without explicit ask. Never write `source/` or `scratch/`.

## KEY PATHS
- zrun: `tools/runners/zrun/src/main.rs` → build `cargo build --release` → `target/release/zrun.exe`. Hardcodes `ODIN` + now `ZED`.
- Zed: tasks `.zed/tasks.json`, scripts `.zed/scripts/*.bat`, keymap `~/AppData/Roaming/Zed/keymap.json` (run keys today: `space o r`/`f7`/`ctrl-f5`).
- Glossary: `CONTEXT.md` (repo root). Tele spec (superseded direction, real code): `docs/superpowers/specs/2026-06-21-tele-observability-design.md`. Weaver spike: `agent-scratch/weave-demo/`.
- Odin: `C:\Users\user1\odin\dist\odin.exe`.

## DONE & SEPARATE (don't redo) — terminal/shell speed
Completed earlier this session; full record `agent-scratch/HANDOFF-zed-terminal-speed.md`. Summary: pwsh profile slimmed (deferred history-prediction, 440→356ms) + telemetry/update opt-out env vars + Defender exclusion (owner ran elevated, confirmed) + Windows Terminal "Odin · odin_master" profile. nushell 0.113 installed (winget) as an escape-hatch. None of that is needed for this spike.
