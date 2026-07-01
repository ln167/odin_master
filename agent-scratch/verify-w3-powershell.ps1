# Throwaway PowerShell verification for W1/W2/W3 — run from real PowerShell, the
# main driver. Exercises the ACTUAL Zed run path (.bat -> cmd -> zrun) plus the
# claim harness, all from PowerShell (not Git Bash).
#
# Note: zrun prints its [zrun] diagnostics to STDERR by design (stdout = the
# program's own output). We merge stderr into stdout INSIDE cmd (`bat 2>&1`) so
# PowerShell sees one clean stream and doesn't mistake stderr for a failure.
$ErrorActionPreference = 'Continue'
$root = 'C:\Users\user1\dev\odin_master'
Set-Location $root
$env:ZED_WORKTREE_ROOT = $root
$env:ZED_DIRNAME = Join-Path $root 'agent-scratch\tele-w3-probe'

Write-Host '=== 1) just recipe (the command that errored before the fix) ==='
just tele
just tele max

Write-Host ''
Write-Host '=== 2) console run at max via the REAL Zed task path: .zed\scripts\odin-run.bat (cmd -> zrun) ==='
cmd /c '.zed\scripts\odin-run.bat 2>&1' | Select-Object -First 16

Write-Host ''
Write-Host '=== 3) windowless run at max via odin-run-log.bat -> run.log (machine format, opens in Zed) ==='
cmd /c '.zed\scripts\odin-run-log.bat 2>&1' | Out-Null
$esc = [char]27
$escCount = (Get-Content run.log -Raw).Split($esc).Count - 1
Write-Host ("run.log ESC bytes (expect 0): {0}" -f $escCount)
Get-Content run.log | Select-Object -First 4

Write-Host ''
Write-Host '=== 4) claim harness (W2) from PowerShell ==='
just claim tele/w2-weave-count

Write-Host ''
Write-Host '=== reset dial to on ==='
just tele on
