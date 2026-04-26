"""Per-source-kind ingestors.

Each ingestor exposes ``fetch(source, root) -> list[FetchedFile]`` where
FetchedFile carries ``(rel_path, text)`` ready to chunk.
"""
from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path

from ..manifest import Source


@dataclass
class FetchedFile:
    rel_path: str  # path under content/sources/<tier>/<destination>/...
    text: str


def fetch(source: Source, content_root: Path) -> list[FetchedFile]:
    if source.fetcher == "local_file":
        from . import local_file
        return local_file.fetch(source, content_root)
    if source.fetcher == "local_dir":
        from . import local_dir
        return local_dir.fetch(source, content_root)
    if source.fetcher == "pdf":
        from . import pdf
        return pdf.fetch(source, content_root)
    if source.fetcher == "git_clone":
        from . import git_clone
        return git_clone.fetch(source, content_root)
    if source.fetcher == "html_mirror":
        from . import html_mirror
        return html_mirror.fetch(source, content_root)
    if source.fetcher == "pasted_text":
        from . import pasted_text
        return pasted_text.fetch(source, content_root)
    raise NotImplementedError(f"unknown fetcher: {source.fetcher}")
