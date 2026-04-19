#!/usr/bin/env python3
"""Cross-platform build script for the {{name}} CLI."""
from __future__ import annotations

import argparse
import platform
import shutil
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).parent.resolve()
BUILD = ROOT / "build"


def _odin() -> str:
    return shutil.which("odin") or sys.exit("error: 'odin' not on PATH")


def _exe() -> str:
    return ".exe" if platform.system().lower() == "windows" else ""


def _run(cmd: list[str]) -> None:
    print("$", " ".join(cmd))
    subprocess.run(cmd, cwd=ROOT, check=True)


def cmd_build(_a) -> None:
    BUILD.mkdir(exist_ok=True)
    out = BUILD / ("{{name}}" + _exe())
    _run([_odin(), "build", "src", "-debug", f"-out:{out}"])
    print(f"build: {out}")


def cmd_run(_a) -> None:
    cmd_build(_a)
    _run([str(BUILD / ("{{name}}" + _exe()))])


def cmd_test(_a) -> None:
    _run([_odin(), "test", "tests"])


def main() -> None:
    p = argparse.ArgumentParser()
    sp = p.add_subparsers(dest="cmd", required=True)
    for name in ("build", "run", "test"):
        sp.add_parser(name)
    args = p.parse_args()
    {"build": cmd_build, "run": cmd_run, "test": cmd_test}[args.cmd](args)


if __name__ == "__main__":
    main()
