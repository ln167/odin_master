#!/usr/bin/env python3
"""Build the Tracy client library for the current OS.

Output: tracy.lib (Windows) / tracy.so (Linux) / tracy.dylib (macOS) placed
next to vendor/odin-tracy/bindings.odin. Run once per machine; the lib is
.gitignore'd. After this, build any Odin program with
`-define:INSTRUMENT=tracy` and the foreign import in instrument/tracy.odin
picks the lib up.
"""
import platform
import subprocess
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
TRACY = REPO / "tools" / "domains" / "odin" / "odin_lib" / "vendor" / "odin-tracy"
SRC = "tracy/public/TracyClient.cpp"


def windows():
	ps = REPO / "tools" / "profiler" / "build-tracy.ps1"
	return subprocess.run(["powershell", "-ExecutionPolicy", "Bypass", "-File", str(ps)]).returncode


def linux():
	return subprocess.run(
		["c++", "-std=c++11", "-DTRACY_ENABLE", "-O2", SRC, "-shared", "-fPIC", "-o", "tracy.so"],
		cwd=TRACY,
	).returncode


def macos():
	return subprocess.run(
		["c++", "-stdlib=libc++", "-mmacosx-version-min=10.8", "-std=c++11",
		 "-DTRACY_ENABLE", "-O2", "-dynamiclib", SRC, "-o", "tracy.dylib"],
		cwd=TRACY,
	).returncode


def main() -> int:
	s = platform.system()
	if s == "Windows": return windows()
	if s == "Linux":   return linux()
	if s == "Darwin":  return macos()
	print(f"unsupported OS: {s}", file=sys.stderr)
	return 1


if __name__ == "__main__":
	sys.exit(main())
