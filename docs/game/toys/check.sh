#!/usr/bin/env bash
# Headless gate for the toys: each toy, opened with ?selftest, must set
# <pre id="selftest">PASS ...</pre>; that load and a normal load must log no uncaught errors.
# Usage: bash docs/game/toys/check.sh [toy.html ...]   (default: all)
cd "$(dirname "$0")"
CHROME="/c/Program Files/Google/Chrome/Application/chrome.exe"
files=("$@"); [ ${#files[@]} -eq 0 ] && files=($(ls *.html | grep -v '^index.html$'))
fail=0; err=$(mktemp)
for f in "${files[@]}"; do
  url="file:///$(cygpath -m "$PWD/$f")?selftest"
  out=$("$CHROME" --headless=new --use-angle=swiftshader --enable-unsafe-swiftshader \
        --enable-logging=stderr --v=0 --virtual-time-budget=15000 --dump-dom "$url" 2>"$err")
  res=$(printf '%s' "$out" | grep -o '<pre id="selftest">[^<]*' | sed 's/<pre id="selftest">//')
  # also a normal load (no ?selftest) on the real GPU (D3D11, like the owner's browser): startup path,
  # animation loop and shaders must not error. SwiftShader accepts shaders D3D11 fails to compile.
  "$CHROME" --headless=new --use-angle=d3d11 --enable-gpu --ignore-gpu-blocklist \
        --enable-logging=stderr --v=0 --virtual-time-budget=5000 --dump-dom "${url%%\?*}" >/dev/null 2>>"$err"
  errs=$(grep -E 'Uncaught|CONSOLE.*[Ee]rror' "$err" | head -3)
  if [[ "$res" == PASS* && -z "$errs" ]]; then echo "ok   $f  $res"
  else echo "FAIL $f  ${res:-no selftest result}"; [ -n "$errs" ] && echo "     $errs"; fail=1; fi
done
exit $fail
