# HANDOFF — Windows shell/terminal speed + Zed "run odin" setup

**Date:** 2026-06-28
**Machine:** Windows 11, user `user1`. Repos: `C:\Users\user1\dev\odin_master` (Odin learning substrate + `lab/` game), `C:\procured-v2` (TS monorepo).
**Why this file:** session got long; user wanted to research the "make terminals permanently fast" question in a fresh session. This captured everything done + the open research agenda. **That research is now COMPLETE — see the RESOLVED section directly below; the "research agenda" lower down is kept only for historical context.**

---

## ✅ RESOLVED (2026-06-28) — researched + implemented

**Decision: keep pwsh and optimize it; run heavy terminals in standalone Windows Terminal.** Truly-instant (~50ms) shells were benchmarked and shelved as an escape hatch.

**Measured on this machine (min-of-12 startup):** cmd 42 · nushell (lean) 52 · cmd+clink ~45 · WinPS 5.1 `-NoProfile` 141 · pwsh `-NoProfile` 190 (hard .NET floor) · pwsh full profile **440**. .NET knobs confirmed useless (DLLs already ReadyToRun; `ngen`/`DOTNET_*` are folklore for pwsh 7 — `ReadyToRun=0` *doubled* startup). Profile decomposition: functions = **2ms**; the whole addressable cost is the **172ms PSReadLine block**, of which **~70ms is `PredictionSource History`** (predictor load + history read), ~78ms is the unavoidable module, ~28ms options/colors.

**Changes applied & verified:**
1. **Profile** (`~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1`): deferred `PredictionSource History -PredictionViewStyle ListView` to the first `PowerShell.OnIdle` (one-shot via `$global:__predictionArmed`); added `-MaximumHistoryCount 4000`. Functions left eager (only 2ms). **440 → 356ms** non-interactive; ~290ms interactive-ready, autosuggestion arms a beat after the prompt paints. Also added a `NO_AUTO_CD` guard to the procured-v2 auto-cd.
2. **User env vars:** `POWERSHELL_TELEMETRY_OPTOUT=1`, `POWERSHELL_UPDATECHECK=Off`.
3. **Defender exclusions** (pwsh.exe + `C:\Program Files\PowerShell\7`) — removes startup scan-stall variance. Added via elevated script, confirmed present in admin session.
4. **Windows Terminal** (already defaulted to pwsh 7): added an **"Odin · odin_master"** profile that opens in the repo (`startingDirectory` + `environment: NO_AUTO_CD=1`). Valid-JSON verified.
5. **Key finding:** Zed's **built-in terminal is buggy on Windows** for heavy output (zed #40605/#40412 — stalls then dumps, any shell) → use standalone Windows Terminal for odin build logs.

**Escape hatch:** nushell 0.113 is installed (winget `Nushell.Nushell`; WT auto-added a Nushell profile). Porting the pwsh profile to nu = a few hours if ~290ms ever annoys. Clink was portable-only (scratchpad), nothing installed system-wide. Emulator choice can't beat the Windows ConPTY + monitor-refresh latency floor (~62–87ms typing across all modern terminals).

---

## TL;DR of where we are

- **Root problem (solved):** `odin` was "not recognized" in Zed's integrated terminal. Cause: **Zed on Windows launches its terminal/tasks with the User-scope PATH stripped** (only System PATH inherited), and `C:\Users\user1\odin\dist` lives in the *User* PATH. NOT a cmd 2047-char truncation (that hypothesis was disproven — see Measurements).
- **Fixes already applied + verified** (details below): Zed terminal → PowerShell; pwsh profile re-adds odin to PATH; zrun now runs the *package dir* not single file; pwsh prompt made ~100× cheaper.
- **Open question the user wants to research next:** can we make terminal startup *permanently fast everywhere* — by a faster shell, a faster terminal emulator, or tuning pwsh — vs. the current split (rich pwsh for normal use, lean pwsh for Zed)?

---

## Key established facts (don't re-derive)

1. **Startup latency = PowerShell, not the terminal emulator.** Benchmarks spawned `pwsh.exe` directly from Git Bash (no emulator). So the numbers are pure shell/.NET process startup. The emulator (WezTerm/Windows Terminal/Alacritty/Zed) only affects rendering + typing latency.
2. **Shell startup, min-of-5, warm (includes ~spawn overhead, so absolute is high; ratios hold):**
   | shell | ms |
   |---|---|
   | cmd.exe | **57** |
   | `pwsh -NoProfile -NoLogo` | 186 |
   | `pwsh` + ZED_FAST_TASK early-exit hack | 257 |
   | `pwsh` full profile | 439 |
   - pwsh floor ≈ **184ms .NET runtime + ~75ms PSReadLine** (the interactive line editor loads regardless). **Sub-100ms is cmd-only territory; impossible for pwsh.**
   - PATH-add in profile ≈ 3ms (free).
3. **The real felt-lag was the prompt, not startup:** old prompt ran `git rev-parse + branch + status + rev-list` on EVERY prompt = **151ms/command** in big repos. Now fixed to ~1.5ms (reads `.git/HEAD` directly).
4. **Zed sets these env vars in its integrated terminal** (verified via Zed docs/source): `ZED_TERM=true`, `TERM_PROGRAM=zed`, `TERM=xterm-256color`, `COLORTERM=truecolor`, `TERM_PROGRAM_VERSION`. → A profile guard keyed on `$env:ZED_TERM` can make Zed-launched pwsh lean while normal terminals stay rich. (Source: zed.dev/docs/environment, zed.dev/docs/terminal, GH zed-industries/zed.)
5. **Zed tasks** run zrun.exe which **hardcodes** `C:\Users\user1\odin\dist\odin.exe` (`tools/runners/zrun/src/main.rs`), so tasks never need PATH — that's why cmd works for tasks despite the stripped env.
6. **git fsmonitor:** git 2.46 present. `C:\procured-v2` **already has** `core.fsmonitor=true` + `core.untrackedCache=true` → `git status` there = **69ms** (fast). odin_master not yet checked/enabled.
7. **Permission note:** `pwsh` via the Bash tool is allowed (`Bash(powershell:*)` is allow-listed in `~/.claude/settings.local.json`). Only a command containing `-ExecutionPolicy Bypass` got blocked by the safety classifier (independent of bypass/auto mode). Session was in `auto` mode (confirmed via /status).

---

## Changes applied this session (files + state + verification)

### 1. User-scope PATH registry dedup — DONE
- Was 1248 chars / 30 entries with a stray `;;` empty + dups (Git usr/bin ×3, mingw64 ×2, Windows Kits ×2, MSBuild ×2). Now **947 chars / 22 entries, `odin\dist` moved first**, no empties.
- Applied via `reg add HKCU\Environment /v Path /t REG_EXPAND_SZ`. Broadcast via a throwaway `setx` (so Explorer-launched apps refresh).
- **Backup of original:** `agent-scratch/userpath-backup-2026-06-28.txt` (raw `reg query` dump). Revert = re-`reg add` that value.
- NOTE: This is hygiene; it does NOT fix Zed (Zed ignores User PATH). Harmless.

### 2. Zed `settings.json` — terminal shell → PowerShell — DONE
- File: `C:\Users\user1\AppData\Roaming\Zed\settings.json`, `terminal.shell` block.
- Was `{"program":"cmd.exe"}`; now:
  ```jsonc
  "shell": { "with_arguments": {
    "program": "C:\\Program Files\\PowerShell\\7\\pwsh.exe",
    "args": ["-NoLogo"]
  }}
  ```
- Odin formatter already hardcodes `odinfmt.exe` abs path (comment there is what first revealed the stripped-PATH cause).

### 3. zrun (Rust task runner) — run/build now PACKAGE mode — DONE + verified
- File: `C:\Users\user1\dev\odin_master\tools\runners\zrun\src\main.rs`; rebuilt with `cargo build --release` (cargo 1.95).
- `odin-run` / `odin-build` changed from `odin build <FILE> -file` → `odin build <DIRNAME>` (the package), so sibling files + imports resolve. Added helpers `newest_odin()` (mtime cache over the dir) + `pkg_uses()`/`shared_flags()` which **conditionally** add `-collection:odin_lib=…`, `-collection:vnd=…`, and `-define:TELE=on` **only when the package imports them** (avoids the "unused -define:TELE" warning on self-contained demos).
- Verified: `woven/` (multi-file) old `-file` → `Undeclared name: capture` ❌; new package mode → runs, `result=8` ✅. A pkg importing `odin_lib:tele` → telemetry emitted (`y (int) = 42`), collection+TELE auto-added ✅. Self-contained pkg → no warning, 7ms cached ✅.
- Hotkeys unchanged & still work: run = `space o r` / `f7` / `ctrl-f5`; build = `space o b` / `f6`. (Keymap: `C:\Users\user1\AppData\Roaming\Zed\keymap.json`.)
- Exes now named after the package dir (`woven.exe`), not file stem.

### 4. pwsh profile — fast prompt + cleanup — DONE + verified
- File: `C:\Users\user1\Documents\PowerShell\Microsoft.PowerShell_profile.ps1`.
- Top block (unchanged) re-adds `odin\dist` + `.cargo\bin` to PATH (idempotent). Then a `ZED_FAST_TASK` early-return guard.
- `prompt` rewritten: branch read from `.git/HEAD` (no git subprocess) → **151ms → 1.5ms/command**. `Δ` change-count now opt-in via `$env:ZED_RICH_PROMPT=1` (the dropped `↓` behind-count was not restored).
- Removed the two `Write-Host "Time for … section"` startup prints (noise).
- Added at end: `Write-Host "Profile Loaded" -ForegroundColor DarkGray` so a full profile load is visible (absent under `-NoProfile`). Verified prints with profile / absent with `-NoProfile`.

---

## OPEN: research agenda for next session

**User's goal:** "make it permanently fast in all systems — or use a different terminal that's even faster. Is it PowerShell that's slow or the terminal?"

Partial answer already established: **PowerShell (the shell/.NET) is the startup cost, not the emulator.** So research:

1. **Decompose the latency by layer.** Measure separately: (a) emulator cold/warm tab-open, (b) shell process start, (c) profile execution. Confirm which dominates for *the emulator the user actually uses* (profile has WezTerm OSC7/OSC133 escapes; `Alacritty` + `WezTerm`-ish refs exist; Windows Terminal not confirmed).
2. **Faster-shell options** (biggest startup lever): `cmd` (57ms, bare) + **clink** (gives cmd readline/history/completion ≈ pwsh feel at cmd speed) + cmd `AutoRun` reg key (`HKCU\Software\Microsoft\Command Processor\AutoRun`) to inject odin PATH; **nushell**; **elvish**. Trade-off vs losing pwsh aliases/objects.
3. **Tune pwsh itself** instead of replacing it: `DOTNET_ReadyToRun`/`DOTNET_TieredCompilation`/`DOTNET_TieredPGO` env knobs, NGEN/crossgen of pwsh assemblies, disabling PSReadLine prediction, lazy-loading heavy profile bits on first idle. Research whether any of these meaningfully cut the ~260ms floor.
4. **Faster emulator** (affects feel/rendering, NOT shell start): compare WezTerm vs Windows Terminal vs Alacritty vs Zed built-in for tab-open + input latency. Likely secondary.
5. **The "permanently fast everywhere" vs split decision.** Two live designs:
   - **(A) Split (mostly designed, not yet implemented):** keep rich pwsh profile for *normal* terminals; add a guard `if ($env:ZED_TERM) { <PATH add> ; return }` near the top of the profile so **Zed-launched pwsh is lean+fast but odin works**. Plus make the `Δ` count permanent for normal terminals (cheap now that fsmonitor exists). Plus enable fsmonitor on odin_master.
   - **(B) One fast shell everywhere:** pick cmd+clink or nushell as the universal default; abandon the rich pwsh profile. Fastest, but loses pwsh ecosystem.
   - User leaned toward "fsmonitor + permanent count" (design A's count piece) and also floated B. UNDECIDED.

---

## Loose ends / not done

- **Restart needed:** registry PATH dedup + Zed settings only affect *newly launched* Zed; user must fully quit/relaunch Zed (and ideally confirm `odin version` in a new Zed pwsh terminal).
- **`Δ` count** currently opt-in (`$env:ZED_RICH_PROMPT=1`); not permanent yet. Plan: make permanent for normal terminals + enable fsmonitor on odin_master (procured-v2 already has it).
- **ZED_TERM guard** for lean-in-Zed pwsh: NOT yet added to the profile (this is design A; verify ZED_TERM truly present by echoing it in a real Zed terminal first).
- **Zed tasks** still spawn `cmd` internally (via `.zed/scripts/*.bat` → zrun). Fine functionally (zrun abs path). Could switch to `pwsh -NoProfile` for "pwsh everywhere," but cmd is faster and a couple tasks use cmd builtins (`start` for Obsidian, "Terminal at file dir") that REQUIRE cmd.
- **Debug tasks** (`odin-build-debug`, `odin-raddbg` in zrun) still use single-file `-file` — same multi-file limitation if debugging a package. Not changed.
- Build artifact `agent-scratch/weave-demo/woven/woven.exe` created during testing (harmless; agent-scratch is untracked).

## Quick levers / reference
- See `Δ` count now: `$env:ZED_RICH_PROMPT=1`
- Live permission mode: `/status`
- Bench method: `for i in 1..5 { s=$(date +%s%3N); <cmd>; e=$(date +%s%3N); min }` from Git Bash.
- pwsh path: `C:\Program Files\PowerShell\7\pwsh.exe`. odin: `C:\Users\user1\odin\dist\odin.exe`.
