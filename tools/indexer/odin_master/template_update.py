"""Three-way merge for `odin-master update-template`. For each template file:

    base    = the template version recorded in .odin-master/template-sha.txt
    theirs  = the current template version in the master repo
    ours    = the user's current copy in their scaffolded project

Apply `git merge-file -p` (which produces conflict markers when both sides
diverge from base). Add new template files outright; leave deleted-by-user
files alone; bump template-sha.txt at the end.
"""
from __future__ import annotations

import shutil
import subprocess
import tempfile
from dataclasses import dataclass, field
from pathlib import Path


@dataclass
class UpdateReport:
    project: Path
    template: str
    old_sha: str
    new_sha: str
    updated: list[Path] = field(default_factory=list)
    added: list[Path] = field(default_factory=list)
    conflicted: list[Path] = field(default_factory=list)
    untouched: list[Path] = field(default_factory=list)


def _read_recorded_sha(project: Path) -> tuple[str, str]:
    p = project / ".odin-master" / "template-sha.txt"
    template = "game"
    sha = "unknown"
    if not p.is_file():
        return template, sha
    for line in p.read_text(encoding="utf-8").splitlines():
        if line.startswith("template="):
            template = line.split("=", 1)[1].strip()
        if line.startswith("sha="):
            sha = line.split("=", 1)[1].strip()
    return template, sha


def _git_show(repo: Path, sha: str, rel: str) -> str | None:
    try:
        return subprocess.check_output(
            ["git", "show", f"{sha}:{rel}"], cwd=repo, text=True,
            stderr=subprocess.DEVNULL,
        )
    except subprocess.CalledProcessError:
        return None


def _git_head_sha(repo: Path) -> str:
    return subprocess.check_output(
        ["git", "rev-parse", "HEAD"], cwd=repo, text=True
    ).strip()


def _three_way_merge(base: str, ours: str, theirs: str) -> tuple[str, bool]:
    """Returns (merged_text, conflicted)."""
    with tempfile.TemporaryDirectory() as td:
        b = Path(td) / "base"
        o = Path(td) / "ours"
        t = Path(td) / "theirs"
        b.write_text(base, encoding="utf-8")
        o.write_text(ours, encoding="utf-8")
        t.write_text(theirs, encoding="utf-8")
        proc = subprocess.run(
            ["git", "merge-file", "-p", str(o), str(b), str(t)],
            capture_output=True, text=True
        )
    return proc.stdout, proc.returncode != 0


def update_template(project: Path, repo_root: Path) -> UpdateReport:
    template, old_sha = _read_recorded_sha(project)
    new_sha = _git_head_sha(repo_root)
    rep = UpdateReport(project=project, template=template,
                       old_sha=old_sha, new_sha=new_sha)
    tpl_root = repo_root / "templates" / template
    if not tpl_root.is_dir():
        raise FileNotFoundError(f"template not in repo: {tpl_root}")

    for src in tpl_root.rglob("*"):
        if src.is_dir():
            continue
        rel = src.relative_to(repo_root).as_posix()
        proj_rel = src.relative_to(tpl_root)
        dst = project / proj_rel
        theirs = src.read_text(encoding="utf-8", errors="replace")
        base = _git_show(repo_root, old_sha, rel) if old_sha != "unknown" else None
        if not dst.exists():
            dst.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(src, dst)
            rep.added.append(dst)
            continue
        ours = dst.read_text(encoding="utf-8", errors="replace")
        if base is None:
            # No history to merge from — only overwrite if user's copy still
            # matches theirs exactly (i.e. untouched).
            if ours == theirs:
                rep.untouched.append(dst)
            else:
                rep.conflicted.append(dst)
            continue
        if ours == base and ours != theirs:
            dst.write_text(theirs, encoding="utf-8")
            rep.updated.append(dst)
        elif ours == theirs:
            rep.untouched.append(dst)
        else:
            merged, conflicted = _three_way_merge(base, ours, theirs)
            dst.write_text(merged, encoding="utf-8")
            (rep.conflicted if conflicted else rep.updated).append(dst)

    sha_file = project / ".odin-master" / "template-sha.txt"
    sha_file.parent.mkdir(exist_ok=True)
    sha_file.write_text(
        f"template={template}\nsha={new_sha}\nname={project.name}\n",
        encoding="utf-8",
    )
    return rep
