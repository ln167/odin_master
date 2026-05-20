# End-to-end raddbg keymap smoke test.
# Mimics what `<leader>oR` does: launches raddbg with `cmd /c start "" raddbg target`
# (the new Windows-detached launcher), then polls for the raddbg window to appear.
$ErrorActionPreference = "Stop"
$repo = (Resolve-Path "$PSScriptRoot\..\..").Path
$raddbg = Join-Path $repo "tools\debug\raddbg\raddbg.exe"
$target = Join-Path $repo "tools\debug\smoke_launch.dbg.exe"

# Launch via cmd /c start "" — same as the lua keymap does on Windows.
Start-Process -FilePath "cmd.exe" -ArgumentList @("/c", "start", "`"`"", $raddbg, $target) -WindowStyle Hidden

$found = $null
for ($i = 0; $i -lt 40; $i++) {
    Start-Sleep -Milliseconds 250
    $procs = Get-Process raddbg -ErrorAction SilentlyContinue
    foreach ($p in $procs) {
        if ($p.MainWindowHandle -ne 0 -and $p.MainWindowTitle) {
            $found = $p; break
        }
    }
    if ($found) { break }
}
if ($found) {
    Write-Host "PASS  raddbg window title='$($found.MainWindowTitle)' pid=$($found.Id)"
    Stop-Process -Id $found.Id -Force
    exit 0
}
Write-Host "FAIL  raddbg did not surface a window within 10s after detached launch"
Get-Process raddbg -ErrorAction SilentlyContinue | Stop-Process -Force
exit 1
