from __future__ import annotations

from pathlib import Path

from ..manifest import Source
from . import FetchedFile


def fetch(source: Source, content_root: Path) -> list[FetchedFile]:
    src = Path(source.source_path)  # interpret as repo-relative or absolute
    if not src.is_absolute():
        src = content_root.parent / src  # repo root
    text = src.read_text(encoding="utf-8")
    return [FetchedFile(rel_path=src.name, text=text)]
