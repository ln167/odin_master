from pathlib import Path
from unittest.mock import patch

import pytest

from odin_master import summarize


def _write_manifest(tmp_path: Path):
    (tmp_path / "content").mkdir()
    (tmp_path / "content" / "manifest.yaml").write_text(
        "- id: docs\n"
        "  tier: 1\n"
        "  fetcher: html_mirror\n"
        "  url: https://example.org/\n"
        "  destination: docs\n",
        encoding="utf-8",
    )
    src_dir = tmp_path / "content" / "sources" / "tier1-authoritative" / "docs"
    src_dir.mkdir(parents=True)
    (src_dir / "intro.md").write_text("# Intro\nOdin is a language.\n", encoding="utf-8")
    return src_dir


def test_unknown_source_raises(tmp_path: Path):
    _write_manifest(tmp_path)
    with pytest.raises(ValueError, match="not in manifest"):
        summarize.summarize(tmp_path, "nonexistent")


def test_missing_source_dir_raises(tmp_path: Path):
    (tmp_path / "content").mkdir()
    (tmp_path / "content" / "manifest.yaml").write_text(
        "- id: docs\n"
        "  tier: 1\n"
        "  fetcher: html_mirror\n"
        "  url: https://example.org/\n"
        "  destination: never-fetched\n",
        encoding="utf-8",
    )
    with pytest.raises(FileNotFoundError):
        summarize.summarize(tmp_path, "docs")


def test_summarize_writes_concepts_and_index(tmp_path: Path):
    _write_manifest(tmp_path)
    fake_response = (
        "# Concept One\n\nFirst paragraph about it.\n\n"
        "# Concept Two\n\nSecond.\n<!-- source: pre-existing -->\n"
    )
    with patch.object(summarize, "_call_ollama", return_value=fake_response):
        report = summarize.summarize(tmp_path, "docs")
    assert len(report.written) == 2
    names = sorted(p.name for p in report.written)
    assert names == ["concept-one.md", "concept-two.md"]
    one = (tmp_path / "content" / "wiki" / "concepts" / "concept-one.md").read_text(encoding="utf-8")
    assert one.startswith("# Concept One\n")
    assert "<!-- source:" in one
    index = (tmp_path / "content" / "wiki" / "INDEX.md").read_text(encoding="utf-8")
    assert "Concept One" in index and "Concept Two" in index


def test_split_sections_handles_empty():
    assert summarize._split_sections("", "x") == []


def test_split_sections_two_concepts():
    out = summarize._split_sections("# A\nbody A\n\n# B\nbody B\n", "src.md")
    assert [t for t, _ in out] == ["A", "B"]
    assert all("<!-- source: src.md -->" in body for _, body in out)
