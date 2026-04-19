from __future__ import annotations

from pathlib import Path

from ..manifest import Source
from . import FetchedFile


def fetch(source: Source, content_root: Path) -> list[FetchedFile]:
    """Pasted text lives at content/sources/<tier>/<destination>/<id>.md committed by hand."""
    base = content_root / "sources" / f"tier{source.tier}-{_tier_name(source.tier)}" / source.destination
    out: list[FetchedFile] = []
    if base.is_file():
        out.append(FetchedFile(rel_path=base.name, text=base.read_text(encoding="utf-8")))
    elif base.is_dir():
        for p in sorted(base.rglob("*.md")):
            out.append(FetchedFile(rel_path=str(p.relative_to(base)), text=p.read_text(encoding="utf-8")))
    return out


def _tier_name(tier: int) -> str:
    return {1: "authoritative", 2: "curated", 3: "community"}[tier]
