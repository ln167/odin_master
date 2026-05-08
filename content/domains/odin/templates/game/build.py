#!/usr/bin/env python3
"""Cross-platform build orchestrator for the {{name}} game template.

Usage:
  python build.py hot                # one-shot hot-reload DLL build
  python build.py release [--profile debug|release|asan]
  python build.py clean
"""
from __future__ import annotations

import argparse
import platform
import shutil
import subprocess
import sys
import time
from pathlib import Path

ROOT = Path(__file__).parent.resolve()
BUILD = ROOT / "build"
HOT_DIR = BUILD / "hot_reload"


def _system() -> str:
    return platform.system().lower()  # 'linux', 'darwin', 'windows'


def _dll_ext() -> str:
    return {"linux": ".so", "darwin": ".dylib", "windows": ".dll"}[_system()]


def _odin() -> str:
    return shutil.which("odin") or sys.exit("error: 'odin' not on PATH")


def _run(cmd: list[str], cwd: Path | None = None) -> None:
    print("$", " ".join(cmd))
    subprocess.run(cmd, cwd=cwd or ROOT, check=True)


def cmd_hot(_args: argparse.Namespace) -> None:
    HOT_DIR.mkdir(parents=True, exist_ok=True)
    api_version = int(time.time())
    out = HOT_DIR / f"game_{api_version}{_dll_ext()}"
    args = [_odin(), "build", "src/game",
            "-build-mode:dll", "-debug",
            f"-out:{out}",
            "-define:HOT_RELOAD=true"]
    if _system() == "windows":
        args.append(f"-pdb-name:{HOT_DIR / f'game_{api_version}.pdb'}")
    _run(args)
    host = HOT_DIR / ("{{name}}" + (".exe" if _system() == "windows" else ""))
    if not host.exists():
        host_args = [_odin(), "build", "src/main_hot_reload.odin",
                     "-file", "-debug", "-out:" + str(host)]
        _run(host_args)
    print(f"hot: built {out}; run {host}")


def cmd_release(args: argparse.Namespace) -> None:
    out_dir = BUILD / "release"
    out_dir.mkdir(parents=True, exist_ok=True)
    out = out_dir / ("{{name}}" + (".exe" if _system() == "windows" else ""))
    cmd = [_odin(), "build", "src/main_release.odin",
           "-file",
           f"-out:{out}",
           "-define:HOT_RELOAD=false"]
    if args.profile == "release":
        cmd += ["-o:speed", "-no-bounds-check"]
    elif args.profile == "asan":
        cmd += ["-debug", "-sanitize:address"]
    else:
        cmd.append("-debug")
    _run(cmd)
    print(f"release: built {out}")


def cmd_clean(_args: argparse.Namespace) -> None:
    if BUILD.exists():
        shutil.rmtree(BUILD)
        print("clean: removed build/")


def main() -> None:
    p = argparse.ArgumentParser()
    sp = p.add_subparsers(dest="cmd", required=True)
    sp.add_parser("hot")
    rel = sp.add_parser("release")
    rel.add_argument("--profile", choices=["debug", "release", "asan"], default="debug")
    sp.add_parser("clean")
    args = p.parse_args()
    {"hot": cmd_hot, "release": cmd_release, "clean": cmd_clean}[args.cmd](args)


if __name__ == "__main__":
    main()
