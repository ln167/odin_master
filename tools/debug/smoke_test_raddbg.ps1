# raddbg window smoke test.
# Launches raddbg.exe, waits for its main window to appear, asserts it did,
# then kills the process. PASS = window with non-empty title appeared.
$ErrorActionPreference = "Stop"
$repo = (Resolve-Path "$PSScriptRoot\..\..").Path
$raddbg = Join-Path $repo "tools\debug\raddbg\raddbg.exe"
if (-not (Test-Path $raddbg)) { Write-Host "FAIL  $raddbg missing. Run: just raddbg-install"; exit 1 }

$p = Start-Process -FilePath $raddbg -PassThru
$found = $null
for ($i = 0; $i -lt 30; $i++) {
    Start-Sleep -Milliseconds 200
    $p.Refresh()
    if ($p.MainWindowHandle -ne 0 -and $p.MainWindowTitle) {
        $found = $p.MainWindowTitle; break
    }
}
if ($found) {
    Write-Host "PASS  raddbg window title='$found' pid=$($p.Id)"
    Stop-Process -Id $p.Id -Force
    exit 0
}
Write-Host "FAIL  raddbg launched (pid=$($p.Id)) but no main window appeared within 6s"
Stop-Process -Id $p.Id -Force -ErrorAction SilentlyContinue
exit 1
