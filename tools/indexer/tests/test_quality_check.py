from __future__ import annotations

import json
import sys
import textwrap
from pathlib import Path

from odin_master import quality_check


def _fake_search_bin(tmp_path: Path, results_by_query: dict) -> Path:
    """Write a tiny Python script that mimics `odin-search --json` and prints
    a deterministic results list keyed by the query."""
    script = tmp_path / "fake_search.py"
    payload = json.dumps(results_by_query)
    script.write_text(textwrap.dedent(f"""\
        import json, sys
        payload = {payload!r}
        results_by_query = json.loads(payload)
        # find the query (last positional after flags)
        args = sys.argv[1:]
        # strip --keyword-only, --json, --top N
        i = 0; query = ""
        while i < len(args):
            if args[i] == "--top":
                i += 2
            elif args[i].startswith("--"):
                i += 1
            else:
                query = args[i]; break
        out = {{"query": query, "results": results_by_query.get(query, [])}}
        print(json.dumps(out))
    """), encoding="utf-8")
    wrapper = tmp_path / ("fake-search.cmd" if sys.platform == "win32" else "fake-search")
    if sys.platform == "win32":
        wrapper.write_text(f'@echo off\r\n"{sys.executable}" "{script}" %*\r\n',
                           encoding="utf-8")
    else:
        wrapper.write_text(f'#!/usr/bin/env bash\nexec "{sys.executable}" "{script}" "$@"\n',
                           encoding="utf-8")
        wrapper.chmod(0o755)
    return wrapper


def test_load_yaml(tmp_path):
    p = tmp_path / "qc.yaml"
    p.write_text("- query: foo\n  must_include_source_ids_in_top_5: [a]\n")
    checks = quality_check.load(p)
    assert len(checks) == 1
    assert checks[0].query == "foo"
    assert checks[0].must_include_source_ids_in_top_5 == ["a"]


def test_run_passes_when_expected_id_in_results(tmp_path):
    bin_ = _fake_search_bin(tmp_path, {
        "how do I read a file": [
            {"source_id": "odin-lang-org", "tier": 1, "path": "x"}
        ]
    })
    checks = [quality_check.QualityCheck(
        query="how do I read a file",
        must_include_source_ids_in_top_5=["odin-lang-org"],
    )]
    results = quality_check.run(checks, search_bin=str(bin_))
    assert results[0].passed
    assert results[0].actual_top_ids == ["odin-lang-org"]


def test_run_fails_when_expected_id_missing(tmp_path):
    bin_ = _fake_search_bin(tmp_path, {
        "qx": [{"source_id": "wrong", "tier": 3, "path": "y"}]
    })
    checks = [quality_check.QualityCheck(
        query="qx", must_include_source_ids_in_top_5=["right"]
    )]
    results = quality_check.run(checks, search_bin=str(bin_))
    assert not results[0].passed
