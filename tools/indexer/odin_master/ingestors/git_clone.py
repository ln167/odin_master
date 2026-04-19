"""git_clone fetcher: shells out to git for clone-or-pull, then collects markdown."""
from __future__ import annotations

import shutil
import subprocess
from pathlib import Path

from ..manifest import Source
from . import FetchedFile


def _tier_name(tier: int) -> str:
    return {1: "authoritative", 2: "curated", 3: "community"}[tier]


def fetch(source: Source, content_root: Path) -> list[FetchedFile]:
    target = content_root / "sources" / f"tier{source.tier}-{_tier_name(source.tier)}" / source.destination
    if target.exists() and (target / ".git").is_dir():
        subprocess.run(["git", "-C", str(target), "fetch", "--depth", "1"], check=True, capture_output=True)
        subprocess.run(["git", "-C", str(target), "reset", "--hard", "origin/HEAD"], check=True, capture_output=True)
    else:
        if target.exists():
            shutil.rmtree(target)
        target.parent.mkdir(parents=True, exist_ok=True)
        subprocess.run(["git", "clone", "--depth", "1", source.git_url, str(target)], check=True, capture_output=True)
    out: list[FetchedFile] = []
    for p in sorted(target.rglob("*")):
        if p.is_file() and p.suffix.lower() in {".md", ".markdown", ".txt", ".odin"}:
            try:
                out.append(FetchedFile(rel_path=str(p.relative_to(target)),
                                       text=p.read_text(encoding="utf-8")))
            except UnicodeDecodeError:
                continue
    return out
