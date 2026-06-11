#!/usr/bin/env python3
"""Block until a NEW vote is appended to lab/arena/history.jsonl, print it, exit.

Usage: wait_vote.py [--timeout SECS]

Offset-based: snapshots the current vote count at start, fires on the first
line appended after that. Each line is one JSON object:
{"round": N, "winner": K, "variants": [{"gx":..,"gy":..,"d":..}, ...]}
The round id is authored in arena_variants.odin (ROUND), so it never drifts.
Exit 0 = vote printed, 2 = timeout.
"""
import sys
import time
from pathlib import Path

LOG = Path(__file__).resolve().parents[2] / "lab" / "arena" / "history.jsonl"


def votes():
    if not LOG.exists():
        return []
    return [l for l in LOG.read_text(encoding="utf-8").splitlines() if l.startswith("{")]


def main():
    timeout = 3600.0
    args = sys.argv[1:]
    while args:
        a = args.pop(0)
        if a == "--timeout":
            timeout = float(args.pop(0))
        else:
            sys.exit(f"usage: wait_vote.py [--timeout SECS] (got {a!r})")
    seen = len(votes())
    deadline = time.time() + timeout
    while time.time() < deadline:
        now = votes()
        if len(now) < seen:
            seen = len(now)
        if len(now) > seen:
            print(now[-1])
            return 0
        time.sleep(0.25)
    print(f"timeout: no new vote in {timeout:.0f}s", file=sys.stderr)
    return 2


if __name__ == "__main__":
    sys.exit(main())
