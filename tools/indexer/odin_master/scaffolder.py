"""Template scaffolder. Copies templates/<name>/ to a target dir, substituting
{{name}} (and other parameters) in text files. Records the master repo's HEAD
SHA into .odin-master/template-sha.txt so update-template can three-way-merge later.
"""
from __future__ import annotations

import re
import shutil
import subprocess
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable

# Files we substitute placeholders in. Binary types (png/jpg/wasm/...) are left alone.
_TEXT_SUFFIXES = {".odin", ".json", ".toml", ".md", ".py", ".sh", ".ps1", ".yaml",
                  ".yml", ".txt", ".gitignore", ".editorconfig"}
_TEXT_NAMES = {"justfile", "Justfile", "Makefile", ".gitignore", ".editorconfig"}

_VALID_NAME = re.compile(r"^[a-zA-Z][a-zA-Z0-9_\-]{0,63}$")


@dataclass
class ScaffoldResult:
    target_dir: Path
    files_written: int
    template_sha: str


def _is_text_file(p: Path) -> bool:
    return p.suffix.lower() in _TEXT_SUFFIXES or p.name in _TEXT_NAMES


def _substitute(text: str, params: dict[str, str]) -> str:
    for key, value in params.items():
        text = text.replace(f"{{{{{key}}}}}", value)
    return text


def _git_head_sha(repo_root: Path) -> str:
    try:
        out = subprocess.check_output(
            ["git", "rev-parse", "HEAD"], cwd=repo_root, text=True
        ).strip()
        return out or "unknown"
    except (subprocess.CalledProcessError, FileNotFoundError):
        return "unknown"


def scaffold(
    *,
    template: str,
    target_dir: Path,
    name: str,
    repo_root: Path,
    force: bool = False,
) -> ScaffoldResult:
    if not _VALID_NAME.match(name):
        raise ValueError(
            f"invalid project name {name!r}: must be [A-Za-z][A-Za-z0-9_-]{{0,63}}"
        )
    src = repo_root / "templates" / template
    if not src.is_dir():
        raise FileNotFoundError(f"template not found: {src}")

    target_dir = target_dir.resolve()
    if target_dir.exists() and any(target_dir.iterdir()):
        if not force:
            raise FileExistsError(
                f"target {target_dir} exists and is non-empty (pass force=True to overwrite)"
            )
        shutil.rmtree(target_dir)
    target_dir.mkdir(parents=True, exist_ok=True)

    params = {"name": name}
    files_written = 0
    for path in src.rglob("*"):
        rel = path.relative_to(src)
        dst = target_dir / rel
        if path.is_dir():
            dst.mkdir(parents=True, exist_ok=True)
            continue
        dst.parent.mkdir(parents=True, exist_ok=True)
        if _is_text_file(path):
            dst.write_text(_substitute(path.read_text(encoding="utf-8"), params),
                           encoding="utf-8")
        else:
            shutil.copyfile(path, dst)
        files_written += 1

    sha = _git_head_sha(repo_root)
    sha_dir = target_dir / ".odin-master"
    sha_dir.mkdir(exist_ok=True)
    (sha_dir / "template-sha.txt").write_text(
        f"template={template}\nsha={sha}\nname={name}\n", encoding="utf-8"
    )
    return ScaffoldResult(target_dir=target_dir, files_written=files_written,
                          template_sha=sha)
