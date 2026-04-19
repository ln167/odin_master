"""Run a canonical-query gold set against the built index. Reads a YAML file
listing query → expected source IDs in top-N; for each query, calls the search
CLI and asserts the intersection is non-empty.
"""
from __future__ import annotations

import json
import shutil
import subprocess
from dataclasses import dataclass, field
from pathlib import Path

import yaml


@dataclass
class QualityCheck:
    query: str
    must_include_source_ids_in_top_5: list[str] = field(default_factory=list)


@dataclass
class QualityResult:
    check: QualityCheck
    actual_top_ids: list[str]
    passed: bool


def load(path: Path) -> list[QualityCheck]:
    raw = yaml.safe_load(path.read_text(encoding="utf-8")) or []
    out: list[QualityCheck] = []
    for entry in raw:
        out.append(QualityCheck(
            query=entry["query"],
            must_include_source_ids_in_top_5=entry.get(
                "must_include_source_ids_in_top_5", []
            ),
        ))
    return out


def _search(query: str, *, top: int = 5,
            search_bin: str | None = None) -> list[dict]:
    bin_ = search_bin or shutil.which("odin-search")
    if bin_ is None:
        raise FileNotFoundError("odin-search not on PATH")
    proc = subprocess.run(
        [bin_, "--keyword-only", "--json", "--top", str(top), query],
        capture_output=True, check=True,
    )
    text = proc.stdout.decode("utf-8", errors="replace")
    return json.loads(text).get("results", [])


def run(checks: list[QualityCheck], *, search_bin: str | None = None
        ) -> list[QualityResult]:
    results = []
    for c in checks:
        hits = _search(c.query, top=5, search_bin=search_bin)
        actual = [h.get("source_id", "") for h in hits]
        wanted = set(c.must_include_source_ids_in_top_5)
        passed = bool(wanted & set(actual)) if wanted else True
        results.append(QualityResult(check=c, actual_top_ids=actual, passed=passed))
    return results
