# Zed Task Speed Investigation — Handoff

## UPDATE 2026-05-20: Root cause found

The `/S` error was self-inflicted. Zed's `ShellKind::Cmd` already spawns
`cmd.exe /S /C "<combined_command>"`. Our config passed `args: ["/c"]`
which Zed appended *after* its own args, producing:

```
cmd.exe /C /S ".zed\scripts\odin-run.bat"
```

`/S` in position 2 is not a valid command. Fix: use
`"shell": { "program": "cmd.exe" }` with **no** `with_arguments` / `args`.
Applied to all tasks in `.zed/tasks.json`.

The pwsh profile loading is a separate, smaller issue (Zed Windows
prefers pwsh for the host terminal session). Mitigated by
`env.ZED_FAST_TASK=1` on every task + an early `return` at the top of
the PowerShell profile when that var is set. PATH additions still run
above the return so odin/cargo remain available.

See `crates/util/src/shell.rs` in Zed source for the prepended args.

---


## Goal

When the user presses `F7` (or `space o r`) on an Odin file in Zed, the program should compile and run as close to instantly as possible. Zero perceived latency between keypress and output. The user values speed enough to accept significant ergonomic trade-offs (losing PowerShell aliases in interactive terminals, switching shell entirely, etc.).

## Environment

- **OS:** Windows 11 Home (10.0.26200)
- **Editor:** Zed (Windows beta channel)
- **Default user shell:** PowerShell 7 (`pwsh.exe`)
- **Project:** `C:\Users\user1\dev\odin_master` — Odin learning substrate
- **Odin compiler:** `C:\Users\user1\odin\dist\odin.exe`
- **PowerShell profile:** `C:\Users\user1\Documents\PowerShell\Microsoft.PowerShell_profile.ps1`

The user's PowerShell profile loads in ~95ms (already optimized — `Import-Module posh-git` removed; profile prepends a couple of dirs to PATH). PSReadLine config in the second section is most of that.

## The persistent symptom

After every escalation, F7 produces the following terminal panel output:

```
Time for first section: 2.8758 ms
Time for second section: 92.4992 ms
'/S' is not recognized as an internal or external command,
operable program or batch file.

⏵ Task `Odin: run current file` finished with exit code: 1
⏵ Command: cmd.exe /C ".zed\scripts\odin-run.bat"
```

Three things are wrong here:

1. **PowerShell profile loads** ("Time for first/second section" output) even though the `Command:` line shows `cmd.exe`, not `pwsh.exe`. Something is invoking pwsh that we can't see.
2. **`'/S' is not recognized`** error from cmd, suggesting cmd was invoked with `/S` as a positional command argument rather than a flag. Likely Zed (or pwsh) is constructing the cmd.exe argv as `["/c", "/S", ...]` instead of `["/S", "/c", ...]` — `/S` only works as a leading flag.
3. **Task exits with code 1** — the bat file never gets to execute the actual odin.exe.

## What's been verified to work outside Zed

Running the same bat file directly under cmd works flawlessly:

```
$ ZED_FILE=... cmd //c ".zed\scripts\odin-run.bat"
Hellop!!
real    0m0.340s
```

So the bat file, env vars, paths, odin binary, etc. are all correct. The bug is exclusively in **Zed's path from task::Spawn → child process**.

## What's been tried, in order

### 1. Inline command, no shell config (default)
- Task: `command: "odin", args: ["run", "$ZED_FILE", "-file"]`
- Result: Zed wrapped in `pwsh.exe -C 'odin run "..."  -file'`
- Profile loaded twice (~190ms total). Worked, but slow.

### 2. Removed `Import-Module posh-git` from PowerShell profile
- Cut profile load from ~470ms to ~95ms. Real win, kept this change.

### 3. Per-task `shell: { with_arguments: { program: "pwsh.exe", args: ["-NoProfile", "-NoLogo"] } }`
- Goal: skip profile load.
- Result: Zed did NOT honor it. `Command:` line still showed `pwsh.exe -C` without `-NoProfile`.

### 4. Re-added PATH defensive code at top of profile
- Cargo bin + odin/dist prepended to PATH unconditionally (~1ms).
- This was needed because `-NoProfile` would skip the profile's PATH setup, and odin would not be found.
- Verified `odin` is also already on Windows User PATH at the registry level (`[Environment]::GetEnvironmentVariable('PATH','User')` includes `C:\Users\user1\odin\dist`). So the defensive code is somewhat redundant but cheap insurance against PATH inheritance bugs in Zed.

### 5. Per-task `shell: { with_arguments: { program: "cmd.exe", args: ["/c"] } }`
- Result: `Command:` line started showing `cmd.exe /C` — so per-task shell IS partially honored, but only for the inner wrapper.
- /S error appeared. Inline command had embedded quotes (`"C:/.../odin.exe run "$ZED_FILE" -file"`) which broke when cmd received them double-wrapped.

### 6. Bat-file wrappers in `.zed/scripts/`
- Each task → single-token command pointing at a `.bat` file. Bat reads `%ZED_FILE%` / `%ZED_DIRNAME%` / `%ZED_STEM%` / `%ZED_WORKTREE_ROOT%` env vars and execs the real binary.
- Eliminated all inline quoting. Bat files tested OK via cmd directly.
- Zed result: STILL shows pwsh profile loading + /S error, even with `command: ".zed\scripts\odin-run.bat"` (no quotes anywhere).

### 7. `terminal.shell = cmd.exe` globally in settings.json
- Goal: make Zed default to cmd everywhere, no pwsh.
- Result: didn't visibly change anything. Either the setting isn't being applied to task panels, or it only applies to NEW interactive terminals (existing pwsh tabs persist across restarts via Zed's session restore).

### 8. `use_new_terminal: true` on all tasks
- Goal: force a fresh terminal pane per task. New pane should use `terminal.shell` (cmd).
- Result: same output. pwsh profile still loaded. Per-task `shell` cmd config was honored (`Command:` shows cmd) but profile is loading from somewhere upstream.

### 9. Native Rust runner (`tools/runners/zrun/`)
- Built a Rust binary that takes a single arg (e.g. `odin-run`), reads ZED_FILE from env, and `CreateProcess`-execs odin.exe directly. Zero shell escaping.
- Compiles to `tools/runners/zrun/target/release/zrun.exe` (233KB).
- Works perfectly when invoked directly from cmd. But Zed still wraps in `pwsh -C 'zrun.exe ...'` → same problem.

### 10. Considered: custom Zed extension in Rust
- Researched the Zed extension API. Confirmed: extensions can register language servers, themes, debug adapters, slash commands. **They cannot register custom keymap actions.** This path is closed.

## Current state

- `.zed/tasks.json` — every task uses `cmd.exe /c` per-task shell, points at a bat file in `.zed/scripts/`, `use_new_terminal: true`.
- `.zed/scripts/` — six bat files (odin-run, odin-build, odin-build-debug, odin-build-pkg, odin-doctor, odin-raddbg), each verified to work standalone.
- `tools/runners/zrun/` — native Rust runner, compiled, verified to work standalone.
- `settings.json` — `terminal.shell.program: "cmd.exe"`.
- PowerShell profile — `Import-Module posh-git` removed; PATH defensive code at top (idempotent); `$env:ZED_TERM`-conditioned cd-to-procured-v2.

Even with all of this in place, `F7` shows:
```
Time for first section: ~3ms
Time for second section: ~93ms
'/S' is not recognized...
Command: cmd.exe /C ".zed\scripts\odin-run.bat"
```

## Open questions for next engineer

1. **Where is the pwsh profile loading from?** The Command line shows cmd.exe — so the task's inner shell is cmd. But pwsh is starting somewhere. Hypothesis: the *host* terminal panel that displays task output is pwsh (terminal.shell setting not applied to pre-existing panels, or Zed session-restores old panels with their original shell). Verify by examining `~/AppData/Roaming/Zed/db/0-stable/db.sqlite` workspace state, or running Zed with `--reset-state` if such a flag exists.

2. **Why the `/S` error?** Hypothesis: pwsh is intermediating cmd.exe invocation and adding `/S` to the cmd argv in a position cmd treats as a command rather than a flag. Test by running pwsh manually and observing how it invokes `cmd /c "<bat>"`. If pwsh's command-line bridging is the culprit, the only fix is to remove pwsh from the chain entirely — which requires Zed to genuinely launch cmd as the task host (not just wrap in cmd while running under pwsh).

3. **Does Zed honor `terminal.shell` for tasks at all on Windows?** Test by deleting all terminal tabs, fully exiting Zed (check system tray, end any background `zed.exe` processes), then opening a fresh window. If the FIRST terminal panel that opens shows `pwsh` instead of `cmd`, terminal.shell is broken for tasks specifically on Windows.

4. **Is there a `task.shell` global setting** that's actually wired up? Documentation suggests `task` may be a valid top-level settings key with its own `shell`. My attempt to set it had no observable effect. Worth grepping the Zed source for `task.shell` or `task::Shell` in the deserialization.

## Remaining viable paths (in order of recommendation)

### Path A: `terminal::SendText` keybinding (Option 3)
Bypass Zed's task system entirely.

1. Keep one terminal pane open with pwsh (profile loaded ONCE per session).
2. In keymap.json, bind F7 to `["terminal::SendText", "<command>\n"]`.
3. Pwsh executes the typed command. Zero new processes spawned per F7. Truly instant after the initial profile load.

Caveats:
- `terminal::SendText` sends a literal string. Variable interpolation (`$ZED_FILE`) inside the string MAY or may not work — needs verification.
- Need to ensure the terminal pane is focused or that SendText routes to last-focused terminal. May require a chord (focus + send + back).

### Path B: External hotkey daemon
Use AutoHotkey or PowerToys Run to bind a Windows-global hotkey (e.g. Ctrl+Alt+F7) that:
1. Queries Zed via its CLI for the currently active file (`zed --get-active-file` — verify this exists, may need polling the workspace file).
2. Runs `zrun.exe odin-run` directly.
3. Shows output in its own minimal window (PowerToys Run plugin, or a tiny Tauri/egui window).

Truly external, truly instant (1-5ms hotkey-to-process-spawn). Adds an external tool dependency.

### Path C: Patch Zed source
Last resort. Fork Zed, expose a `workspace::SpawnExternal` action that bypasses shell wrapping and calls `CreateProcessW` directly. Compile own Zed.

### Path D: Accept the loss
The current setup IS faster than the original (was ~470ms profile + double load; now ~95ms single load). For someone less picky about latency, this is fine. Documenting this as "Zed's current limitation on Windows" and moving on is the pragmatic choice.

## Files relevant to investigation

```
C:\Users\user1\AppData\Roaming\Zed\settings.json
C:\Users\user1\AppData\Roaming\Zed\keymap.json
C:\Users\user1\dev\odin_master\.zed\tasks.json
C:\Users\user1\dev\odin_master\.zed\debug.json
C:\Users\user1\dev\odin_master\.zed\scripts\*.bat
C:\Users\user1\dev\odin_master\tools\runners\zrun\src\main.rs
C:\Users\user1\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
```

## Verified-working baselines (don't break these)

- Standalone bat execution (`cmd /c "<bat>"` from any shell) — works, ~5ms wrapper overhead.
- Standalone `zrun.exe odin-run` — works, ~10ms spawn overhead.
- Interactive `odin run main.odin -file` from any shell — works.
- Zed debugger (CodeLLDB + odin_lldb.py via `space o D`) — works, references `Odin: build debug current` task by label.
- Zed file finder, vim chords, pane navigation, all the non-task UX work — fully wired and working.

The ONLY remaining unsolved issue is **task spawn latency on Windows**.
