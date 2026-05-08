#!/usr/bin/env python3
"""Build/test/doc orchestrator for the {{name}} library."""
from __future__ import annotations

import argparse
import shutil
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).parent.resolve()
BUILD = ROOT / "build"


def _odin() -> str:
    return shutil.which("odin") or sys.exit("error: 'odin' not on PATH")


def _run(cmd: list[str]) -> None:
    print("$", " ".join(cmd))
    subprocess.run(cmd, cwd=ROOT, check=True)


def cmd_test(_a) -> None:
    _run([_odin(), "test", "tests"])


def cmd_doc(_a) -> None:
    BUILD.mkdir(exist_ok=True)
    out = BUILD / "{{name}}.txt"
    proc = subprocess.run([_odin(), "doc", "src/{{name}}"], cwd=ROOT,
                          capture_output=True, text=True, check=True)
    out.write_text(proc.stdout, encoding="utf-8")
    print(f"doc: {out}")


def main() -> None:
    p = argparse.ArgumentParser()
    sp = p.add_subparsers(dest="cmd", required=True)
    for name in ("test", "doc"):
        sp.add_parser(name)
    args = p.parse_args()
    {"test": cmd_test, "doc": cmd_doc}[args.cmd](args)


if __name__ == "__main__":
    main()
