import shutil
from pathlib import Path

import pytest

from odin_master import docs_build


def test_build_docs_skips_missing_packages(tmp_path: Path, monkeypatch):
    if not shutil.which("odin"):
        pytest.skip("odin not on PATH")
    rep = docs_build.build_docs(tmp_path, packages=("does/not/exist",))
    assert rep.built == []
    assert rep.skipped == ["does/not/exist"]
    assert rep.out_dir == tmp_path / "build" / "docs"
    assert rep.out_dir.is_dir()


def test_build_docs_no_odin_raises(tmp_path: Path, monkeypatch):
    monkeypatch.setattr(docs_build.shutil, "which", lambda _name: None)
    with pytest.raises(RuntimeError, match="odin not on PATH"):
        docs_build.build_docs(tmp_path)


def test_build_docs_writes_index(tmp_path: Path):
    if not shutil.which("odin"):
        pytest.skip("odin not on PATH")
    pkg = tmp_path / "pkg"
    pkg.mkdir()
    (pkg / "lib.odin").write_text(
        "package pkg\n\n// add returns a + b.\nadd :: proc(a, b: int) -> int { return a + b }\n",
        encoding="utf-8",
    )
    rep = docs_build.build_docs(tmp_path, packages=("pkg",))
    assert rep.built == ["pkg"]
    out = tmp_path / "build" / "docs" / "pkg" / "index.txt"
    assert out.is_file()
