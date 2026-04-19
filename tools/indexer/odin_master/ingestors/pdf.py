from __future__ import annotations

from pathlib import Path

from pypdf import PdfReader

from ..manifest import Source
from . import FetchedFile


def fetch(source: Source, content_root: Path) -> list[FetchedFile]:
    src = Path(source.source_path)
    if not src.is_absolute():
        src = content_root.parent / src
    reader = PdfReader(str(src))
    parts: list[str] = []
    for i, page in enumerate(reader.pages):
        parts.append(f"## Page {i+1}\n\n{page.extract_text() or ''}")
    return [FetchedFile(rel_path=src.stem + ".md", text="\n\n".join(parts))]
