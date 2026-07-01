---
name: verify-in-native-powershell
description: >
  How to verify that a command, script, build, recipe, or tool behaves the way
  it will in the USER'S real native PowerShell — when you, the agent, are working
  through the Git Bash Bash tool. Trigger this whenever you are about to claim
  something "works in PowerShell" or to reproduce a shell/PATH/env-var/
  `just`-recipe/`.bat`-task issue the user hits in their own terminal, ESPECIALLY
  anything that depends on PATH, environment variables, the active venv, or which
  shell runs. Use it even if you think a quick `powershell.exe -Command` will do
  — that exact instinct is the trap this skill exists to stop. There is now a
  verified method (see "✅ What actually works"); the bug class it nails is
  PATH / which-shell / coreutil-resolution.
---

# Verifying behavior in the user's native PowerShell (from the Git Bash tool)

> **STATUS: SOLVED (2026-06-29) for the PATH/shell-resolution bug class.** You can
> reproduce the user's failure RED and confirm the fix GREEN entirely from the
> Bash tool, with **no PowerShell at all** — see "✅ What actually works." The
> earlier "dead-ends" were chasing the wrong target (a "clean PowerShell"); the
> bug never lived in PowerShell. The remaining hard case is bugs that depend on
> the user's `$PROFILE` *side effects* (venv activation, custom functions) — for
> those, the user-runs-it fallback at the bottom still applies.

## The one realization that cracks it

**You are almost never verifying "PowerShell." You are verifying the environment
that the tool PowerShell launches hands to the shell it spawns.** For a `just`
recipe on Windows, that is the `sh`/`bash` `just` spawns, and the only thing that
decides whether `grep`/`sed`/`find` resolve is **the PATH that spawned shell
sees**. PowerShell-vs-cmd-vs-bash as the *launcher* is irrelevant to PATH-based
command lookup.

So you do **not** need a pristine PowerShell (the rabbit hole below). You need
exact control over the spawned shell's environment — and `env -i`, a coreutil
already sitting in your Git Bash, gives you precisely that: it discards **all**
inherited MSYS contamination and runs the target with only the variables you
name. (Note: in this repo `powershell.exe` is also deny-listed for the Bash tool,
so PowerShell-spawning methods are doubly off the table — which is fine, you
don't need them.)

## The trap (why naïve attempts give false greens)

On this machine the user drives **native Windows PowerShell** (often with a
`.venv` active and a custom `$PROFILE`). But your **Bash tool is Git Bash
(MSYS2)**. Every process you spawn — including `powershell.exe` — is a descendant
of Git Bash and **inherits MSYS contamination**: `MSYSTEM=MINGW64`,
`MSYS=disable_pcon`, and a `PATH` that already contains `/usr/bin` (as
`C:\Program Files\Git\usr\bin`). Anything depending on PATH/env/which-shell can
**pass in your world and fail in the user's** → false green.

### The mechanism, precisely (so you can reason about variants)
- Git for Windows keeps the Unix coreutils (`grep`/`sed`/`find`/the real `sh`)
  in `…\Git\usr\bin`, which is **deliberately kept off the system PATH** so
  third-party apps don't accidentally load `msys-2.0.dll`. (gitforwindows.org
  "git-wrapper".) On this machine `…\Git\usr\bin` happens to be on the **User**
  PATH — but the repo must not rely on that; see the justfile note below.
- `just` on Windows defaults to spawning **`sh -cu`** and discovers `sh` on PATH.
  On this machine that resolves to the **raw** `…\Git\usr\bin\sh.exe` (2.3 MB).
  A raw `sh -c`'s `$PATH` is just the inherited Windows PATH; if that lacks
  `…\Git\usr\bin`, bare `grep` isn't found → `/usr/bin/sh: line 1: grep: command
  not found`.
- `…\Git\bin\bash.exe` (47 KB) is **not** the real shell — it's a tiny
  **wrapper** that sets `MSYSTEM` and **prepends Git's bin dirs to PATH**, then
  exec's `…\usr\bin\bash.exe`. (gitforwindows.org "git-wrapper".) So
  `…\bin\bash.exe -c 'grep'` resolves grep **even without `-l`**, because the
  wrapper injected `/usr/bin` into PATH.
- `-l` (login) is a *second*, independent guarantee: it sources `/etc/profile`,
  which unconditionally adds `/usr/bin` to PATH. Either the wrapper or `-l` alone
  fixes the bug; together they're belt-and-suspenders.

## ✅ What actually works

**Reproduce the spawned shell's environment with `env -i`, from Git Bash, no
PowerShell.** Read the user's true PATH from the registry (faithful regardless of
contamination), and drive the *real* tool.

### Step 1 — read the user's real env from the registry (not from `powershell.exe`)
```bash
# reg.exe is native and not deny-listed; returns the stored value, immune to MSYS contamination.
M=$(reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" //v Path | sed -n 's/.*REG_SZ    //p' | tr -d '\r\n')
U=$(reg query "HKCU\Environment" //v Path                                          | sed -n 's/.*REG_SZ    //p' | tr -d '\r\n')
# A freshly-launched PowerShell gets ~ Machine;User. Convert to a POSIX list:
REALPATH="$(cygpath -u -p "$M;$U")"
```

### Step 2a — REPRODUCE the failure (RED) — use a PATH matching the failing condition
For the grep bug, that's a PATH **without** `…\Git\usr\bin`, and force `just`'s
*default-discovered* shell so the justfile's own fix is bypassed:
```bash
cd /c/Users/user1/dev/odin_master
CLEAN="/c/Users/user1/AppData/Local/Microsoft/WinGet/Links:/c/Users/user1/odin/dist:/c/WINDOWS/system32:/c/WINDOWS"
BASE=(SYSTEMROOT='C:\WINDOWS' USERPROFILE='C:\Users\user1' HOME='C:\Users\user1' TEMP='C:\Users\user1\AppData\Local\Temp')

env -i "${BASE[@]}" PATH="$CLEAN" \
  just --shell "C:/Program Files/Git/usr/bin/sh.exe" --shell-arg "-cu" tele
# => /usr/bin/sh: line 1: grep: command not found
#    error: Recipe `tele` failed on line 31 with exit code 127      (faithful repro)
```

### Step 2b — CONFIRM the fix (GREEN) — same harness, let the justfile's shell apply
```bash
env -i "${BASE[@]}" PATH="$CLEAN" just tele     # => current dial: on
env -i "${BASE[@]}" PATH="$CLEAN" just tele on  # => dial set to: on
env -i "${BASE[@]}" PATH="$CLEAN" just check-odin-version  # => odin pin OK: dev-2026-04
```
Holding PATH constant at the adversarial (no-`usr/bin`) value isolates the fix:
old shell config = RED, current justfile = GREEN.

### Step 2c — test the user's ACTUAL current env (faithful "does it work for them now?")
```bash
env -i "${BASE[@]}" PATH="$REALPATH" just tele   # uses the real registry PATH
```

### Why this is faithful (the proofs)
- **`env -i` truly strips the contamination.** With `env -i PATH=<no usr/bin>`,
  a raw `sh -c 'grep'` says *command not found*. That **disproves** the old
  blocker ("MSYS `sh.exe` auto-mounts `/usr/bin` regardless of PATH"): the
  auto-mount is a **filesystem mount** (`/usr/bin/grep` is reachable as a *path*),
  **not** a `$PATH` entry — and command lookup uses `$PATH`. Inherited `/usr/bin`
  is genuinely gone.
- **The spawned shell inherits exactly the env you built.** You control the one
  variable (PATH) the bug turns on. The launcher's identity doesn't matter.
- **`reg query` reads the registry**, so the reconstructed PATH is the user's
  real one, not your contaminated process PATH. (`cygpath -u -p` converts a
  Windows PATH list to POSIX form; pass it back and MSYS reconverts for native
  exes like `just`.)

### Adapt to other tools / bugs
The pattern generalizes: `env -i <only the vars that matter> <real tool>`.
- `.bat` task / PATH-sensitive CLI → same harness, run the real command.
- To test "what would a *Machine-only* context see" (services, some GUI-launched
  apps where the User PATH tail can be dropped), set `PATH="$(cygpath -u -p "$M")"`.
- Need a couple more env vars present? Add them to `BASE=(...)`; don't reach for
  a full inherited env (that reintroduces contamination).

## ⚠️ Approaches that DO NOT work (kept as a map of the rabbit hole)

> These all share one mistake: trying to manufacture a "clean PowerShell" instead
> of controlling the spawned shell's env. Skip them.

1. **`powershell.exe -Command "<cmd>"`** — child inherits the Git Bash MSYS env
   (`/usr/bin` on PATH, `MSYSTEM`, …); env/PATH bugs vanish. (Also deny-listed
   here.)
2. **`powershell.exe -NoProfile -Command …` / throwaway `.ps1` via `-File`** —
   `-NoProfile` only skips `$PROFILE`, not the inherited *process* env. Same MSYS
   PATH.
3. **In-PowerShell scrub** (`Remove-Item Env:MSYSTEM`; rebuild `$env:Path` from
   the registry). The log said this "still found grep, blamed on auto-mount."
   **CORRECTION (2026-06-29):** it found grep because the user's **real registry
   PATH genuinely contains `…\Git\usr\bin`** — that was the *true* answer, not a
   contamination artifact. The auto-mount theory was wrong (see proof above). The
   fix is to control PATH, not to fight a non-existent auto-mount.
4. **`Start-Process powershell.exe -UseNewEnvironment`** — child PowerShell
   **crashes at startup**: `Loading managed Windows PowerShell failed with error
   8009001d`. This is a *known* bug (microsoft/terminal #16229, openai/codex
   #13917/#14567): the fresh/empty env block leaves CLR-required vars missing and
   the managed host won't load. Don't use `-UseNewEnvironment` with a PowerShell
   child.
5. **`Start-Process cmd.exe -UseNewEnvironment` + redirect** — runs, reports
   `MSYSTEM=[]`, "still finds grep." **CORRECTION:** same as #3 — a clean registry
   env *correctly* finds grep because `…\Git\usr\bin` is on the real PATH. Not a
   faithfulness failure; just the real answer.

### Mechanism gotcha (still true, unrelated to the env problem)
Backtick line-continuation inside a **bash-single-quoted** `-Command` string gets
mangled at the bash->PowerShell quoting boundary. If you ever must orchestrate
PowerShell from bash, use a `.ps1` via `-File`, not inline backtick continuations.

## The justfile fix — VERDICT: correct & robust
`set shell := ["C:/Program Files/Git/bin/bash.exe", "-lc"]` is **right**. Verified
GREEN end-to-end against the adversarial no-`usr/bin` PATH. It fixes the bug for
**two** independent reasons: it pins the shell to the wrapper `…\Git\bin\bash.exe`
(injects `/usr/bin` into PATH) **and** uses `-l` (sources `/etc/profile`, adds
`/usr/bin`). Either alone suffices; keep both.

Caveat to record: the in-file comment says "Git's usr/bin is NOT on the Windows
PATH here." On this machine it currently **is** (User PATH), so the *unfixed*
`sh -cu` also happens to work right now — i.e. the original failure predates that
PATH entry (or occurred in a Machine-only context). The fix's value is that it no
longer **depends** on `usr\bin` being on the inherited PATH. (Comment wording
could be softened to "may not be on PATH / must not be relied on," but the
`set shell` line itself needs no change.)

## Fallback — when the bug depends on `$PROFILE` side effects
The harness above is faithful for **PATH / which-shell / coreutil-resolution**
bugs. If a failure depends on what the user's `$PROFILE` *does* at startup (venv
activation, custom functions/aliases, prompt hooks) and you can't cheaply
reconstruct it, don't claim a green from your own runs. Reproduce the exact
command, then ask the user to run it **verbatim** in their real terminal and paste
the output. Be honest that this class is outside the self-verify harness.
