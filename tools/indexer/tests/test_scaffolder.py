"""Tests for the template scaffolder. Uses a tiny synthetic template under tmp."""
from __future__ import annotations

import subprocess
from pathlib import Path

import pytest

from odin_master import scaffolder


def _make_fake_repo(root: Path) -> Path:
    (root / "templates" / "demo").mkdir(parents=True)
    (root / "templates" / "demo" / "main.odin").write_text(
        'package {{name}}\nmain :: proc() {}\n', encoding="utf-8"
    )
    (root / "templates" / "demo" / "README.md").write_text(
        "# {{name}}\n", encoding="utf-8"
    )
    sub = root / "templates" / "demo" / "src"
    sub.mkdir()
    (sub / "data.bin").write_bytes(b"\x00\x01{{name}}\x02\x03")
    return root


def test_scaffold_substitutes_in_text_files(tmp_path):
    repo = _make_fake_repo(tmp_path / "repo")
    target = tmp_path / "out" / "my_game"
    res = scaffolder.scaffold(
        template="demo", target_dir=target, name="my_game", repo_root=repo
    )
    assert res.files_written == 3
    assert (target / "main.odin").read_text() == "package my_game\nmain :: proc() {}\n"
    assert (target / "README.md").read_text() == "# my_game\n"
    # Binary file is left byte-identical, so {{name}} is preserved literally.
    assert (target / "src" / "data.bin").read_bytes() == b"\x00\x01{{name}}\x02\x03"


def test_scaffold_records_sha(tmp_path):
    repo = _make_fake_repo(tmp_path / "repo")
    subprocess.run(["git", "init", "-q"], cwd=repo, check=True)
    subprocess.run(["git", "-c", "user.email=t@t", "-c", "user.name=t",
                    "add", "-A"], cwd=repo, check=True)
    subprocess.run(["git", "-c", "user.email=t@t", "-c", "user.name=t",
                    "commit", "-q", "-m", "init"], cwd=repo, check=True)
    target = tmp_path / "out" / "g"
    res = scaffolder.scaffold(template="demo", target_dir=target, name="g",
                              repo_root=repo)
    head = subprocess.check_output(["git", "rev-parse", "HEAD"], cwd=repo,
                                   text=True).strip()
    assert res.template_sha == head
    txt = (target / ".odin-master" / "template-sha.txt").read_text()
    assert f"sha={head}" in txt
    assert "template=demo" in txt
    assert "name=g" in txt


def test_scaffold_rejects_bad_name(tmp_path):
    repo = _make_fake_repo(tmp_path / "repo")
    for bad in ["../oops", "has space", "1leading", "", "a/b"]:
        with pytest.raises(ValueError):
            scaffolder.scaffold(template="demo", target_dir=tmp_path / "x",
                                name=bad, repo_root=repo)


def test_scaffold_rejects_existing_nonempty_without_force(tmp_path):
    repo = _make_fake_repo(tmp_path / "repo")
    target = tmp_path / "out"
    target.mkdir()
    (target / "existing.txt").write_text("hi")
    with pytest.raises(FileExistsError):
        scaffolder.scaffold(template="demo", target_dir=target, name="g",
                            repo_root=repo)


def test_scaffold_force_overwrites(tmp_path):
    repo = _make_fake_repo(tmp_path / "repo")
    target = tmp_path / "out"
    target.mkdir()
    (target / "stale.txt").write_text("delete me")
    scaffolder.scaffold(template="demo", target_dir=target, name="g",
                        repo_root=repo, force=True)
    assert not (target / "stale.txt").exists()
    assert (target / "main.odin").exists()


def test_scaffold_missing_template(tmp_path):
    (tmp_path / "templates").mkdir()
    with pytest.raises(FileNotFoundError):
        scaffolder.scaffold(template="nope", target_dir=tmp_path / "out",
                            name="g", repo_root=tmp_path)


def _repo_root() -> Path:
    # tools/indexer/tests/test_scaffolder.py -> repo root
    return Path(__file__).resolve().parents[3]


@pytest.mark.parametrize("template", ["cli", "lib", "game"])
def test_real_template_scaffolds(tmp_path, template):
    repo = _repo_root()
    if not (repo / "templates" / template).is_dir():
        pytest.skip(f"template {template} missing")
    target = tmp_path / f"out-{template}"
    res = scaffolder.scaffold(template=template, target_dir=target,
                              name="demo_app", repo_root=repo)
    assert res.files_written > 0
    # {{name}} substitution must have landed somewhere.
    seen_sub = False
    for p in target.rglob("*"):
        if p.is_file() and p.suffix in {".odin", ".md", ".py"}:
            if "{{name}}" in p.read_text(encoding="utf-8", errors="replace"):
                raise AssertionError(f"unsubstituted placeholder in {p}")
            if "demo_app" in p.read_text(encoding="utf-8", errors="replace"):
                seen_sub = True
    assert seen_sub, "expected {{name}}→demo_app substitution in at least one file"
