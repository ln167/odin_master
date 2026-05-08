#!/usr/bin/env python3
"""odin-master test — substrate regression tests.

Reads quality-checks.yaml. Structural block runs doctor as a subprocess.
Semantic block invokes the relevant skill via `claude -p` and asserts that
cited sources include the required source_ids.
"""
from __future__ import annotations

import argparse
import json
import re
import subprocess
import sys
from pathlib import Path

import yaml

REPO = Path(__file__).resolve().parents[2]
QUALITY_CHECKS = REPO / "content" / "quality-checks.yaml"
DOCTOR = REPO / "tools" / "substrate" / "doctor.py"


def run_structural(domain: str | None) -> tuple[bool, str]:
    args = [sys.executable, str(DOCTOR), "--json"]
    if domain:
        args += ["--domain", domain]
    proc = subprocess.run(args, capture_output=True, text=True)
    try:
        data = json.loads(proc.stdout)
    except json.JSONDecodeError:
        return False, f"doctor output unparseable:\n{proc.stdout}\n{proc.stderr}"
    return bool(data.get("passed")), proc.stdout


def run_semantic(checks: list[dict], domain: str | None) -> list[tuple[str, bool, str]]:
    """For each gold query, invoke the skill via `claude -p` and assert that
    the answer cites at least one of the required source_ids in its body."""
    results = []
    for entry in checks:
        if domain and entry.get("domain") != domain:
            continue
        query = entry["query"]
        required = set(entry["must_include_source_ids_in_top_5"])
        prompt = (
            f"Use the {entry.get('domain', 'odin')} skill to answer this question. "
            f"Cite sources via [[source/...]] wikilinks per the substrate's two-outputs "
            f"discipline. Question: {query}"
        )
        try:
            proc = subprocess.run(
                ["claude", "-p", prompt],
                capture_output=True, text=True, timeout=120,
            )
        except FileNotFoundError:
            results.append((query, False, "claude CLI not found on PATH"))
            continue
        except subprocess.TimeoutExpired:
            results.append((query, False, "timeout"))
            continue
        body = proc.stdout
        cited = set(re.findall(r"\[\[source/([^\]\#]+)", body))
        # Substring match: required ids (e.g., 'odin-lang-org') against cited paths.
        ok = any(any(req in c for c in cited) for req in required)
        results.append((query, ok, f"cited={sorted(cited)[:5]}"))
    return results


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--structural", action="store_true",
                    help="run only structural block (no LLM)")
    ap.add_argument("--semantic", action="store_true",
                    help="run only semantic block (calls `claude -p`)")
    ap.add_argument("--domain", default=None)
    args = ap.parse_args()

    do_structural = args.structural or not args.semantic
    do_semantic = args.semantic or not args.structural

    overall_ok = True

    if do_structural:
        print("=== structural ===")
        ok, output = run_structural(args.domain)
        print(output)
        if not ok:
            print("[STRUCTURAL] FAIL")
            overall_ok = False
        else:
            print("[STRUCTURAL] PASS")

    if do_semantic:
        print("=== semantic ===")
        if not QUALITY_CHECKS.exists():
            print(f"error: {QUALITY_CHECKS} not found")
            return 1
        with QUALITY_CHECKS.open(encoding="utf-8") as f:
            data = yaml.safe_load(f)
        checks = data if isinstance(data, list) else data.get("semantic", [])
        results = run_semantic(checks, args.domain)
        for q, ok, detail in results:
            mark = "PASS" if ok else "FAIL"
            print(f"[{mark}] {q}")
            if detail:
                print(f"        {detail}")
            if not ok:
                overall_ok = False

    print()
    print("OVERALL:", "PASS" if overall_ok else "FAIL")
    return 0 if overall_ok else 1


if __name__ == "__main__":
    sys.exit(main())
