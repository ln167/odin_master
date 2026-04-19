"""html_mirror fetcher: single-page fetch + HTML→Markdown.

Plan-2 lean version — handles a single URL, not a recursive mirror. Real wget
mirroring deferred until the default corpus needs it (Plan 8).
"""
from __future__ import annotations

from pathlib import Path

import requests
from markdownify import markdownify as md

from ..manifest import Source
from . import FetchedFile


def _tier_name(tier: int) -> str:
    return {1: "authoritative", 2: "curated", 3: "community"}[tier]


def fetch(source: Source, content_root: Path) -> list[FetchedFile]:
    target_dir = content_root / "sources" / f"tier{source.tier}-{_tier_name(source.tier)}" / source.destination
    target_dir.mkdir(parents=True, exist_ok=True)
    r = requests.get(source.url, timeout=30, headers={"User-Agent": "odin_master/0.1"})
    r.raise_for_status()
    text = md(r.text, heading_style="ATX")
    rel = "page.md"
    (target_dir / rel).write_text(text, encoding="utf-8")
    return [FetchedFile(rel_path=rel, text=text)]
