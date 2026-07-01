@echo off
echo MSYSTEM=[%MSYSTEM%]  (empty = clean, like your native PowerShell)
echo === 1) bare usr/bin/sh.exe -cu   (the OLD broken shell) ===
"C:\Program Files\Git\usr\bin\sh.exe" -cu "command -v grep || echo NOTFOUND"
echo === 2) git/bin/bash.exe -cu      (the fix I applied) ===
"C:\Program Files\Git\bin\bash.exe" -cu "command -v grep || echo NOTFOUND"
echo === 3) git/bin/bash.exe -lc      (login fallback) ===
"C:\Program Files\Git\bin\bash.exe" -lc "command -v grep || echo NOTFOUND"
echo === 4) just tele on (current justfile shell) ===
cd /d "C:\Users\user1\dev\odin_master"
just tele on
echo just-exit=%errorlevel%
