"""Tests for the scratchpad helper. odin compile tests are skipped if odin is
not on PATH, but the scaffolding/evidence-filing logic always runs."""
from __future__ import annotations

import shutil
from pathlib import Path

import pytest

from odin_master import scratchpad


def _make_repo(root: Path) -> Path:
    tpl = root / "playground" / "scratch" / "_template"
    tpl.mkdir(parents=True)
    (tpl / "main.odin").write_text(
        'package main\nimport "core:fmt"\nmain :: proc() { fmt.println("hi") }\n',
        encoding="utf-8",
    )
    (tpl / "claim.md").write_text("# Claim\n", encoding="utf-8")
    return root


def test_new_scratch_creates_dated_dir(tmp_path):
    repo = _make_repo(tmp_path)
    out = scratchpad.new_scratch(repo, "test-claim", date="2026-04-19")
    assert out == repo / "playground" / "scratch" / "2026-04-19-test-claim"
    assert (out / "main.odin").is_file()
    assert (out / "claim.md").is_file()


def test_new_scratch_rejects_bad_slug(tmp_path):
    repo = _make_repo(tmp_path)
    for bad in ["UPPER", "../oops", "has space", "with.dot"]:
        with pytest.raises(ValueError):
            scratchpad.new_scratch(repo, bad)


def test_new_scratch_refuses_collision(tmp_path):
    repo = _make_repo(tmp_path)
    scratchpad.new_scratch(repo, "x", date="2026-04-19")
    with pytest.raises(FileExistsError):
        scratchpad.new_scratch(repo, "x", date="2026-04-19")


def test_file_evidence_writes_result_and_backlink(tmp_path):
    repo = _make_repo(tmp_path)
    sd = scratchpad.new_scratch(repo, "claim", date="2026-04-19")
    wiki = repo / "concept.md"
    wiki.write_text("# Concept\n\n## Evidence\n", encoding="utf-8")
    res = scratchpad.file_evidence(sd, verdict="confirmed",
                                   summary="It does what it says",
                                   backlink_target=wiki)
    assert res.is_file()
    assert "confirmed" in res.read_text()
    after = wiki.read_text()
    assert "<!-- src: scratch 2026-04-19-claim/result.md -->" in after
    assert "It does what it says" in after


def test_file_evidence_rejects_bad_verdict(tmp_path):
    repo = _make_repo(tmp_path)
    sd = scratchpad.new_scratch(repo, "claim", date="2026-04-19")
    with pytest.raises(ValueError):
        scratchpad.file_evidence(sd, verdict="maybe", summary="x")


@pytest.mark.skipif(not shutil.which("odin"), reason="odin not on PATH")
def test_run_scratch_executes_and_captures(tmp_path):
    repo = _make_repo(tmp_path)
    sd = scratchpad.new_scratch(repo, "run", date="2026-04-19")
    res = scratchpad.run_scratch(sd)
    assert res.returncode == 0
    assert "hi" in res.stdout
    assert res.output_path.read_text().strip() == "hi"
