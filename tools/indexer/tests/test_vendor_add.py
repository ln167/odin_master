import json
import subprocess
from pathlib import Path

import pytest

from odin_master import vendor_add


def _git(*args, cwd):
    subprocess.run(["git", *args], cwd=cwd, check=True, capture_output=True)


@pytest.fixture
def repo_with_bare_remote(tmp_path: Path):
    bare = tmp_path / "remote-foo.git"
    bare.mkdir()
    _git("init", "--bare", "-b", "main", cwd=bare)

    seed = tmp_path / "seed"
    seed.mkdir()
    _git("init", "-b", "main", cwd=seed)
    (seed / "README.md").write_text("hi\n", encoding="utf-8")
    _git("add", ".", cwd=seed)
    _git("-c", "user.email=t@t", "-c", "user.name=t", "commit", "-m", "init", cwd=seed)
    _git("remote", "add", "origin", str(bare), cwd=seed)
    _git("push", "origin", "main", cwd=seed)

    repo = tmp_path / "repo"
    repo.mkdir()
    _git("init", "-b", "main", cwd=repo)
    (repo / "ols.json").write_text(json.dumps({"collections": []}) + "\n", encoding="utf-8")
    (repo / "seed.txt").write_text("x", encoding="utf-8")
    _git("add", ".", cwd=repo)
    _git("-c", "user.email=t@t", "-c", "user.name=t", "commit", "-m", "init", cwd=repo)
    return repo, bare


def test_name_from_url():
    assert vendor_add._name_from_url("https://example.org/foo/bar.git") == "bar"
    assert vendor_add._name_from_url("git@example.org:foo/bar") == "bar"
    assert vendor_add._name_from_url("https://example.org/foo/bar/") == "bar"


def test_vendor_add_full_flow(repo_with_bare_remote, monkeypatch):
    repo, bare = repo_with_bare_remote
    monkeypatch.setenv("GIT_AUTHOR_EMAIL", "t@t")
    monkeypatch.setenv("GIT_AUTHOR_NAME", "t")
    monkeypatch.setenv("GIT_COMMITTER_EMAIL", "t@t")
    monkeypatch.setenv("GIT_COMMITTER_NAME", "t")
    monkeypatch.setenv("GIT_ALLOW_PROTOCOL", "file:https:http:git:ssh")

    rep = vendor_add.vendor_add(repo, f"file://{bare.as_posix()}")
    assert rep.name == "remote-foo"
    assert rep.submodule_path.is_dir()
    assert rep.ols_updated is True
    assert rep.manifest_updated is True

    cfg = json.loads((repo / "ols.json").read_text(encoding="utf-8"))
    assert any(c["name"] == "remote-foo" for c in cfg["collections"])

    mf = (repo / "tools" / "odin_lib" / "vendor" / "MANIFEST.md").read_text(encoding="utf-8")
    assert "remote-foo" in mf
