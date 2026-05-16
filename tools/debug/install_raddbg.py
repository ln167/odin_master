#!/usr/bin/env python3
"""Download the latest RAD Debugger release into tools/debug/raddbg/.

Single-file install: grabs the standalone raddbg.exe from the latest
EpicGamesExt/raddebugger GitHub release. Re-run to update.
"""
import platform
import sys
import urllib.request
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
DEST = REPO / "tools" / "debug" / "raddbg"
URL = "https://github.com/EpicGamesExt/raddebugger/releases/latest/download/raddbg.exe"


def main() -> int:
	if platform.system() != "Windows":
		print("RAD Debugger is Windows-only for now. Linux/DWARF support is on their roadmap.")
		return 1
	DEST.mkdir(parents=True, exist_ok=True)
	target = DEST / "raddbg.exe"
	print(f"Downloading {URL}")
	urllib.request.urlretrieve(URL, target)
	print(f"Installed {target}  ({target.stat().st_size:,} bytes)")
	return 0


if __name__ == "__main__":
	sys.exit(main())
