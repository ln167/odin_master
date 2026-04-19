from __future__ import annotations

import json

from odin_master import test_summary


def test_summary_has_counts_and_failures(tmp_path):
    report = tmp_path / "report.json"
    report.write_text(json.dumps({
        "tests": [
            {"name": "ok_one", "ok": True, "location": "a.odin:10"},
            {"name": "ok_two", "ok": True, "location": "a.odin:20"},
            {"name": "broken", "ok": False, "location": "b.odin:5",
             "message": "expected 1 got 2\nstack..."},
        ]
    }))
    md = test_summary.to_markdown(report)
    assert "total: 3" in md
    assert "passed: 2" in md
    assert "failed: 1" in md
    assert "broken" in md
    assert "b.odin:5" in md
    assert "expected 1 got 2" in md


def test_summary_all_passing_omits_failures_section(tmp_path):
    report = tmp_path / "r.json"
    report.write_text(json.dumps({
        "tests": [{"name": "x", "ok": True, "location": "a:1"}]
    }))
    md = test_summary.to_markdown(report)
    assert "failed: 0" in md
    assert "## Failures" not in md
