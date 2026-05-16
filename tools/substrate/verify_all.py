#!/usr/bin/env python3
"""Walk tests/*, run each lesson's main.odin, diff stdout against expected.txt."""
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
TESTS = ROOT / "tests"

def run_one(test_dir: Path) -> bool:
    expected = (test_dir / "expected.txt").read_text(encoding="utf-8").rstrip()
    result = subprocess.run(
        ["odin", "run", "main.odin", "-file", "-out:.bin"],
        cwd=test_dir, capture_output=True, text=True,
    )
    actual = result.stdout.rstrip()
    if actual == expected:
        print(f"PASS  {test_dir.name}")
        return True
    print(f"FAIL  {test_dir.name}")
    print(f"  expected: {expected!r}")
    print(f"  actual:   {actual!r}")
    if result.returncode != 0:
        print(f"  stderr:   {result.stderr.rstrip()!r}")
    return False

def main():
    tests = sorted(d for d in TESTS.iterdir() if d.is_dir() and (d / "main.odin").exists())
    if not tests:
        print("no tests found under tests/")
        return 0
    fails = sum(0 if run_one(t) else 1 for t in tests)
    print(f"\n{len(tests) - fails}/{len(tests)} passed")
    return 0 if fails == 0 else 1

if __name__ == "__main__":
    sys.exit(main())
