# Runs inside a CLEAN env (spawned via Start-Process -UseNewEnvironment), i.e. a
# faithful native PowerShell with no Git Bash contamination. Reproduces the
# grep-not-found condition and tests which shell survives it.
Write-Host "MSYSTEM=[$($env:MSYSTEM)]  (empty = clean, like your real PowerShell)"
$hasGitUsrBin = [bool]($env:Path -split ';' | Where-Object { $_ -like '*\Git\usr\bin*' })
Write-Host "PATH contains Git\usr\bin? $hasGitUsrBin"
Write-Host "just on PATH? $([bool](Get-Command just -ErrorAction SilentlyContinue))"
Write-Host ""
Write-Host "--- 1) bare usr/bin/sh.exe -cu  (the OLD broken shell) ---"
& 'C:\Program Files\Git\usr\bin\sh.exe' -cu 'command -v grep || echo NOTFOUND'
Write-Host "--- 2) git/bin/bash.exe -cu     (the fix I just applied) ---"
& 'C:\Program Files\Git\bin\bash.exe' -cu 'command -v grep || echo NOTFOUND'
Write-Host "--- 3) git/bin/bash.exe -lc     (login fallback) ---"
& 'C:\Program Files\Git\bin\bash.exe' -lc 'command -v grep || echo NOTFOUND'
Write-Host ""
Write-Host "--- 4) just tele on  (current justfile shell) ---"
Set-Location 'C:\Users\user1\dev\odin_master'
just tele on
