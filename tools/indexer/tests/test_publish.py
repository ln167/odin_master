import datetime as dt
import json
import os
import stat
import sys
from pathlib import Path

import pytest

from odin_master import publish


def _write_fake_search(tmp_path: Path, payload: dict) -> Path:
    """Write a stub `odin-search` script that prints `payload` as JSON."""
    if sys.platform.startswith("win"):
        bat = tmp_path / "odin-search.bat"
        bat.write_text(
            f"@echo off\r\n"
            f"type \"{tmp_path / 'payload.json'}\"\r\n",
            encoding="utf-8",
        )
        (tmp_path / "payload.json").write_text(json.dumps(payload), encoding="utf-8")
        return bat
    sh = tmp_path / "odin-search"
    sh.write_text(f"#!/usr/bin/env bash\ncat '{tmp_path / 'payload.json'}'\n", encoding="utf-8")
    (tmp_path / "payload.json").write_text(json.dumps(payload), encoding="utf-8")
    sh.chmod(sh.stat().st_mode | stat.S_IEXEC | stat.S_IXGRP | stat.S_IXOTH)
    return sh


def test_publish_writes_digest(tmp_path: Path):
    (tmp_path / "doc.md").write_text("# real file\nbody\n", encoding="utf-8")
    bin_ = _write_fake_search(tmp_path, {
        "results": [
            {"path": "doc.md", "source_id": "src", "tier": 1, "score": 0.9},
            {"path": "missing.md", "source_id": "src", "tier": 1, "score": 0.5},
        ]
    })
    rep = publish.publish(tmp_path, "tagged unions", search_bin=str(bin_),
                          today=dt.date(2026, 4, 19))
    assert rep.n_results == 2
    assert rep.out_path.is_file()
    text = rep.out_path.read_text(encoding="utf-8")
    assert "# tagged unions" in text
    assert "doc.md" in text
    assert "real file" in text
    assert "(file missing)" in text
    assert rep.out_path.parent.name == "2026-04-19-tagged-unions"


def test_publish_search_failure_raises(tmp_path: Path):
    if sys.platform.startswith("win"):
        bin_ = tmp_path / "fail.bat"
        bin_.write_text("@echo off\r\necho nope 1>&2\r\nexit /b 1\r\n", encoding="utf-8")
    else:
        bin_ = tmp_path / "fail"
        bin_.write_text("#!/usr/bin/env bash\necho nope >&2\nexit 1\n", encoding="utf-8")
        bin_.chmod(0o755)
    with pytest.raises(RuntimeError, match="odin-search failed"):
        publish.publish(tmp_path, "x", search_bin=str(bin_), today=dt.date(2026, 4, 19))
