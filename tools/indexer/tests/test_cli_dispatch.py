import os
import subprocess
import sys
from pathlib import Path

INDEXER = Path(__file__).resolve().parent.parent  # tools/indexer/


def _run(args):
    env = {**os.environ, "PYTHONPATH": str(INDEXER)}
    return subprocess.run(
        [sys.executable, "-m", "odin_master.cli", *args],
        env=env, capture_output=True, text=True
    )


def test_help_lists_all_subcommands():
    r = _run(["--help"])
    assert r.returncode == 0, r.stderr
    out = r.stdout
    expected_subcommands = [
        "setup", "update", "reindex", "summarize", "lint", "doctor",
        "new", "update-template", "publish", "vendor", "docs",
        "scratch", "test-summary",
    ]
    for cmd in expected_subcommands:
        assert cmd in out, f"missing subcommand `{cmd}` in --help output:\n{out}"


def test_remaining_stub_subcommands_exit_zero_with_stub_message():
    """Subcommands not yet wired up (Plans 6/8 still pending) keep their stubs."""
    stub_cases = [
        ["summarize", "x"],
        ["publish", "x"],
        ["vendor", "add", "https://example.invalid/repo.git"],
        ["docs", "build"],
    ]
    for args in stub_cases:
        r = _run(args)
        assert r.returncode == 0, f"{args} -> exit {r.returncode}\nSTDOUT:{r.stdout}\nSTDERR:{r.stderr}"
        assert "not yet implemented" in (r.stdout + r.stderr), f"{args}: missing stub message"


def test_implemented_subcommands_exit_zero(tmp_path, monkeypatch):
    """`update`, `reindex`, `lint`, `doctor` are wired up in Plan 2. Run them
    against a minimal repo and assert they exit 0."""
    monkeypatch.chdir(tmp_path)
    monkeypatch.setenv("ODIN_MASTER_FAKE_EMBEDDINGS", "1")
    (tmp_path / "content").mkdir()
    (tmp_path / "content" / "manifest.yaml").write_text("[]\n", encoding="utf-8")
    (tmp_path / "content" / "wiki" / "concepts").mkdir(parents=True)
    (tmp_path / "content" / "wiki" / "INDEX.md").write_text("# Wiki\n", encoding="utf-8")
    for args in (["update"], ["reindex"], ["lint"], ["doctor"]):
        r = _run(args)
        assert r.returncode == 0, f"{args} -> {r.returncode}\nSTDOUT:{r.stdout}\nSTDERR:{r.stderr}"


def test_new_scaffolds_into_target(tmp_path, monkeypatch):
    """Plan 4: `odin-master new` copies templates/<t>/ into a target dir."""
    repo = tmp_path / "repo"
    (repo / "content").mkdir(parents=True)
    (repo / "content" / "manifest.yaml").write_text("[]\n", encoding="utf-8")
    (repo / "templates" / "demo").mkdir(parents=True)
    (repo / "templates" / "demo" / "main.odin").write_text(
        "package {{name}}\n", encoding="utf-8"
    )
    monkeypatch.chdir(repo)
    target = tmp_path / "out"
    r = _run(["new", "scaffold_demo", "--template", "demo", "--target", str(target)])
    assert r.returncode == 0, f"STDOUT:{r.stdout}\nSTDERR:{r.stderr}"
    assert (target / "main.odin").read_text() == "package scaffold_demo\n"
    assert (target / ".odin-master" / "template-sha.txt").is_file()
