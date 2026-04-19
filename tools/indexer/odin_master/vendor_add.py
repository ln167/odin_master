"""`odin-master vendor add <git_url>` — submodule + ols.json + MANIFEST.md."""
from __future__ import annotations

import json
import re
import subprocess
from dataclasses import dataclass
from pathlib import Path


@dataclass
class VendorReport:
    name: str
    submodule_path: Path
    ols_updated: bool
    manifest_updated: bool


def _name_from_url(git_url: str) -> str:
    base = git_url.rstrip("/").rsplit("/", 1)[-1]
    return re.sub(r"\.git$", "", base)


def _git_submodule_add(git_url: str, submodule_path: Path, repo_root: Path) -> None:
    subprocess.run(
        ["git", "submodule", "add", git_url, str(submodule_path.relative_to(repo_root).as_posix())],
        cwd=repo_root, check=True,
    )


def _update_ols_json(repo_root: Path, name: str, submodule_path: Path) -> bool:
    ols = repo_root / "ols.json"
    if not ols.is_file():
        return False
    cfg = json.loads(ols.read_text(encoding="utf-8"))
    collections = cfg.setdefault("collections", [])
    rel = submodule_path.relative_to(repo_root).as_posix()
    for c in collections:
        if c.get("name") == name:
            c["path"] = rel
            break
    else:
        collections.append({"name": name, "path": rel})
    ols.write_text(json.dumps(cfg, indent=2) + "\n", encoding="utf-8")
    return True


def _append_manifest(repo_root: Path, name: str, git_url: str, submodule_path: Path) -> bool:
    mf = repo_root / "tools" / "odin_lib" / "vendor" / "MANIFEST.md"
    mf.parent.mkdir(parents=True, exist_ok=True)
    if not mf.is_file():
        mf.write_text("# Vendored Odin libraries\n\n| name | url | path |\n|---|---|---|\n", encoding="utf-8")
    line = f"| {name} | {git_url} | {submodule_path.relative_to(repo_root).as_posix()} |\n"
    if line in mf.read_text(encoding="utf-8"):
        return False
    with mf.open("a", encoding="utf-8") as fh:
        fh.write(line)
    return True


def vendor_add(repo_root: Path, git_url: str) -> VendorReport:
    name = _name_from_url(git_url)
    submodule_path = repo_root / "tools" / "odin_lib" / "vendor" / name
    submodule_path.parent.mkdir(parents=True, exist_ok=True)
    if not submodule_path.exists():
        _git_submodule_add(git_url, submodule_path, repo_root)
    ols = _update_ols_json(repo_root, name, submodule_path)
    mfu = _append_manifest(repo_root, name, git_url, submodule_path)
    return VendorReport(name=name, submodule_path=submodule_path,
                        ols_updated=ols, manifest_updated=mfu)
