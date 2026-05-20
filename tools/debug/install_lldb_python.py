#!/usr/bin/env python3
"""Fix codelldb on Windows. Three things:

1. LLVM's official Windows installer doesn't ship the Python DLL its
   `liblldb.dll` links against (well-known: llvm-project#74073).
2. The Odin install's `codelldb.exe` is hard-coded to look for liblldb at
   `%USERPROFILE%/odin/lldb/bin/liblldb.dll`, which Odin doesn't populate.
3. The Odin distribution of codelldb is missing `codelldb-launch.exe` (the
   stdio-redirect helper), so program output can't be routed to a terminal.

This script:
  1. Creates %USERPROFILE%/odin/lldb/bin/
  2. Copies liblldb.dll there from C:/Program Files/LLVM/bin/
  3. Downloads Python 3.10 embeddable, extracts the entire distribution
     alongside (python310.dll + python310.zip stdlib + .pyd helpers, all
     of which liblldb's Python init needs).
  4. Downloads codelldb's vsix release, extracts codelldb-launch.exe into
     %USERPROFILE%/odin/dist/ next to codelldb.exe.
  5. Verifies liblldb loads via ctypes.

Re-run safe; skips work already done unless --force.
"""
import argparse
import ctypes
import io
import os
import shutil
import sys
import urllib.request
import zipfile
from pathlib import Path

LLVM_BIN = Path(r"C:\Program Files\LLVM\bin")
ODIN_DIST = Path.home() / "odin" / "dist"
LLDB_DIR = Path.home() / "odin" / "lldb" / "bin"
PYTHON_EMBED_URL = "https://www.python.org/ftp/python/3.10.11/python-3.10.11-embed-amd64.zip"
CODELLDB_VSIX_URL = "https://github.com/vadimcn/codelldb/releases/latest/download/codelldb-win32-x64.vsix"


def fetch_zip(url: str) -> zipfile.ZipFile:
	with urllib.request.urlopen(url) as r:
		return zipfile.ZipFile(io.BytesIO(r.read()))


def main() -> int:
	ap = argparse.ArgumentParser()
	ap.add_argument("--force", action="store_true")
	args = ap.parse_args()

	src = LLVM_BIN / "liblldb.dll"
	if not src.exists():
		print(f"FAIL  {src} missing. Install LLVM from https://github.com/llvm/llvm-project/releases first.")
		return 1

	LLDB_DIR.mkdir(parents=True, exist_ok=True)
	ODIN_DIST.mkdir(parents=True, exist_ok=True)

	# 1. Copy liblldb.dll.
	dst_lldb = LLDB_DIR / "liblldb.dll"
	if dst_lldb.exists() and not args.force:
		print(f"SKIP  {dst_lldb} exists")
	else:
		shutil.copy2(src, dst_lldb)
		print(f"COPY  {src}  ->  {dst_lldb}")

	# 2. Extract the full Python 3.10 embeddable distribution. liblldb's Python
	# init needs python310.dll AND python310.zip (stdlib) AND the .pyd helpers,
	# otherwise Py_Initialize fails and pretty-printers / debug visualizers go
	# away.
	stdlib_marker = LLDB_DIR / "python310.zip"
	if stdlib_marker.exists() and not args.force:
		print(f"SKIP  python embeddable already installed at {LLDB_DIR}")
	else:
		print(f"FETCH {PYTHON_EMBED_URL}")
		z = fetch_zip(PYTHON_EMBED_URL)
		extracted = 0
		for name in z.namelist():
			if name.endswith("/"): continue
			out = LLDB_DIR / Path(name).name
			with z.open(name) as src_f, open(out, "wb") as dst_f:
				shutil.copyfileobj(src_f, dst_f)
			extracted += 1
		print(f"WROTE {extracted} files into {LLDB_DIR}")

	# Embeddable Python ships with `import site` commented out in python310._pth.
	# liblldb's Python init requires site to be enabled or it bails with
	# "Could not initialize Python interpreter". Uncomment it.
	pth = LLDB_DIR / "python310._pth"
	if pth.exists():
		text = pth.read_text(encoding="utf-8")
		new_text = text.replace("#import site", "import site")
		if new_text != text:
			pth.write_text(new_text, encoding="utf-8")
			print(f"PATCH {pth.name}: enabled 'import site'")
		else:
			print(f"SKIP  {pth.name} already has site enabled")

	# 3. Grab codelldb-launch.exe from the upstream vsix. Fixes the
	# "Could not find codelldb-launch" warning + the stdio redirect.
	dst_launch = ODIN_DIST / "codelldb-launch.exe"
	if dst_launch.exists() and not args.force:
		print(f"SKIP  {dst_launch} exists")
	else:
		print(f"FETCH {CODELLDB_VSIX_URL}")
		z = fetch_zip(CODELLDB_VSIX_URL)
		match = next((n for n in z.namelist() if n.endswith("codelldb-launch.exe")), None)
		if not match:
			print(f"FAIL  codelldb-launch.exe not found in vsix archive")
			return 1
		with z.open(match) as src_f, open(dst_launch, "wb") as dst_f:
			shutil.copyfileobj(src_f, dst_f)
		print(f"WROTE {dst_launch}  ({dst_launch.stat().st_size:,} bytes)")

	# 4. Verify the load chain.
	os.add_dll_directory(str(LLDB_DIR))
	try:
		ctypes.CDLL(str(dst_lldb))
		print(f"PASS  liblldb.dll loads with python310 stack resolved")
		return 0
	except OSError as e:
		print(f"FAIL  liblldb.dll still fails to load: {e}")
		return 1


if __name__ == "__main__":
	sys.exit(main())
