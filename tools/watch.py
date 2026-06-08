#!/usr/bin/env python3
"""watch — rerun a command on every save (native mtime poll, 0.1s; no dependency).

  python tools/watch.py main.odin                     # reruns: odin run main.odin -file
  python tools/watch.py tests/foo -- just verify foo  # reruns the given command
"""
import subprocess, sys, time
from pathlib import Path


def newest_mtime(p: Path) -> float:
    if p.is_dir():
        return max((f.stat().st_mtime for f in p.rglob("*.odin")), default=-1.0)
    try:
        return p.stat().st_mtime
    except OSError:
        return -1.0


def main() -> None:
    args = sys.argv[1:]
    if not args:
        sys.exit("usage: watch.py <path> [-- command...]")
    path = Path(args[0])
    cmd = args[2:] if len(args) > 1 and args[1] == "--" else ["odin", "run", args[0], "-file"]
    last = None
    while True:
        m = newest_mtime(path)
        if m != last:
            last = m
            print("\033[2J\033[H", end="", flush=True)
            subprocess.run(cmd)
        time.sleep(0.1)


if __name__ == "__main__":
    main()
