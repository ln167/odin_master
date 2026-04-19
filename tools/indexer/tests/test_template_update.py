from __future__ import annotations

import shutil
import subprocess
from pathlib import Path

from odin_master import scaffolder, template_update


def _git(cwd, *args):
    subprocess.run(["git", "-c", "user.email=t@t", "-c", "user.name=t", *args],
                   cwd=cwd, check=True, capture_output=True)


def _make_repo_with_template(root: Path, content: str) -> Path:
    (root / "templates" / "demo").mkdir(parents=True)
    (root / "templates" / "demo" / "main.odin").write_text(content, encoding="utf-8")
    (root / "templates" / "demo" / "README.md").write_text("# old\n", encoding="utf-8")
    _git(root, "init", "-q", "-b", "main")
    _git(root, "add", "-A")
    _git(root, "commit", "-q", "-m", "init")
    return root


def test_untouched_file_upgrades_silently(tmp_path):
    repo = _make_repo_with_template(tmp_path / "repo", "package x\nA :: 1\n")
    proj = tmp_path / "out"
    scaffolder.scaffold(template="demo", target_dir=proj, name="x", repo_root=repo)

    (repo / "templates" / "demo" / "main.odin").write_text(
        "package x\nA :: 2\n", encoding="utf-8"
    )
    _git(repo, "commit", "-am", "bump")

    rep = template_update.update_template(proj, repo)
    assert (proj / "main.odin").read_text() == "package x\nA :: 2\n"
    assert any(p.name == "main.odin" for p in rep.updated)


def test_user_changes_preserved_when_template_unchanged(tmp_path):
    repo = _make_repo_with_template(tmp_path / "r", "package x\nA :: 1\n")
    proj = tmp_path / "p"
    scaffolder.scaffold(template="demo", target_dir=proj, name="x", repo_root=repo)
    (proj / "main.odin").write_text("package x\nA :: 1\nB :: 2\n", encoding="utf-8")

    _git(repo, "commit", "--allow-empty", "-m", "no template change")
    rep = template_update.update_template(proj, repo)
    txt = (proj / "main.odin").read_text()
    assert "B :: 2" in txt
    # Should be either updated cleanly or untouched, but not conflicted.
    assert not any("main.odin" == p.name for p in rep.conflicted)


def test_new_template_file_is_added(tmp_path):
    repo = _make_repo_with_template(tmp_path / "r", "package x\n")
    proj = tmp_path / "p"
    scaffolder.scaffold(template="demo", target_dir=proj, name="x", repo_root=repo)

    (repo / "templates" / "demo" / "extra.md").write_text("# extra\n", encoding="utf-8")
    _git(repo, "add", "-A")
    _git(repo, "commit", "-m", "add extra")

    rep = template_update.update_template(proj, repo)
    assert (proj / "extra.md").is_file()
    assert any(p.name == "extra.md" for p in rep.added)


def test_concurrent_changes_produce_conflict(tmp_path):
    repo = _make_repo_with_template(tmp_path / "r",
                                    "package x\nA :: 1\nB :: 2\nC :: 3\n")
    proj = tmp_path / "p"
    scaffolder.scaffold(template="demo", target_dir=proj, name="x", repo_root=repo)

    (proj / "main.odin").write_text("package x\nA :: 1\nB :: 99\nC :: 3\n",
                                    encoding="utf-8")
    (repo / "templates" / "demo" / "main.odin").write_text(
        "package x\nA :: 1\nB :: 42\nC :: 3\n", encoding="utf-8"
    )
    _git(repo, "commit", "-am", "bump B")

    rep = template_update.update_template(proj, repo)
    assert any(p.name == "main.odin" for p in rep.conflicted)
    assert "<<<<<<<" in (proj / "main.odin").read_text()


def test_sha_advances_on_update(tmp_path):
    repo = _make_repo_with_template(tmp_path / "r", "package x\n")
    proj = tmp_path / "p"
    scaffolder.scaffold(template="demo", target_dir=proj, name="x", repo_root=repo)
    old = (proj / ".odin-master" / "template-sha.txt").read_text()

    (repo / "templates" / "demo" / "main.odin").write_text("package x\n// b\n",
                                                          encoding="utf-8")
    _git(repo, "commit", "-am", "bump")

    template_update.update_template(proj, repo)
    new = (proj / ".odin-master" / "template-sha.txt").read_text()
    assert new != old
    assert "sha=" in new
