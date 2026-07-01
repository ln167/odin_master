# Spawns a CLEAN cmd (registry-default env, no inherited Git Bash vars) via
# -UseNewEnvironment to run clean-probe.bat, captures output, prints it. cmd is
# native (no CLR), so -UseNewEnvironment doesn't hit the powershell init crash.
$bat = 'C:\Users\user1\dev\odin_master\agent-scratch\clean-probe.bat'
$out = 'C:\Users\user1\dev\odin_master\agent-scratch\clean-out.txt'
$err = 'C:\Users\user1\dev\odin_master\agent-scratch\clean-err.txt'
Remove-Item $out, $err -ErrorAction SilentlyContinue
$a = @('/c', $bat)
Start-Process -FilePath 'cmd.exe' -UseNewEnvironment -Wait -NoNewWindow -ArgumentList $a -RedirectStandardOutput $out -RedirectStandardError $err
Write-Host '===== STDOUT (clean env) ====='
if (Test-Path $out) { Get-Content $out } else { Write-Host '(none)' }
Write-Host '===== STDERR (clean env) ====='
if (Test-Path $err) { Get-Content $err } else { Write-Host '(none)' }
