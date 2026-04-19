"""html_mirror fetcher: single-page or recursive HTML→Markdown.

Usage in manifest.yaml:
    fetcher: html_mirror
    url: https://example.org/docs/
    mirror: true        # optional, default false
    max_depth: 2        # optional, default 1 when mirror=true
    max_pages: 50       # optional, default 50
"""
from __future__ import annotations

import re
from collections import deque
from html.parser import HTMLParser
from pathlib import Path
from urllib.parse import urldefrag, urljoin, urlparse

import requests
from markdownify import markdownify as md

from ..manifest import Source
from . import FetchedFile

UA = {"User-Agent": "odin_master/0.1"}


def _tier_name(tier: int) -> str:
    return {1: "authoritative", 2: "curated", 3: "community"}[tier]


def _slug_from_url(url: str) -> str:
    parsed = urlparse(url)
    parts = [p for p in parsed.path.split("/") if p]
    if not parts:
        return "page.md"
    last = parts[-1]
    if "." not in last:
        last = f"{last}.md"
    elif not last.endswith(".md"):
        last = re.sub(r"\.[^.]+$", ".md", last)
    return "-".join(parts[:-1] + [last]) or "page.md"


class _LinkExtractor(HTMLParser):
    def __init__(self) -> None:
        super().__init__()
        self.links: list[str] = []

    def handle_starttag(self, tag, attrs):
        if tag == "a":
            for k, v in attrs:
                if k == "href" and v:
                    self.links.append(v)


def _extract_links(html: str) -> list[str]:
    p = _LinkExtractor()
    try:
        p.feed(html)
    except Exception:
        pass
    return p.links


def _same_origin(a: str, b: str) -> bool:
    pa, pb = urlparse(a), urlparse(b)
    return (pa.scheme, pa.netloc) == (pb.scheme, pb.netloc)


def _fetch_one(url: str, target_dir: Path) -> tuple[FetchedFile, str]:
    r = requests.get(url, timeout=30, headers=UA)
    r.raise_for_status()
    text = md(r.text, heading_style="ATX")
    rel = _slug_from_url(url)
    (target_dir / rel).write_text(text, encoding="utf-8")
    return FetchedFile(rel_path=rel, text=text), r.text


def fetch(source: Source, content_root: Path) -> list[FetchedFile]:
    target_dir = content_root / "sources" / f"tier{source.tier}-{_tier_name(source.tier)}" / source.destination
    target_dir.mkdir(parents=True, exist_ok=True)

    mirror = bool(source.extra.get("mirror", False))
    max_depth = int(source.extra.get("max_depth", 1 if mirror else 0))
    max_pages = int(source.extra.get("max_pages", 50))

    if not mirror:
        ff, _ = _fetch_one(source.url, target_dir)
        return [ff]

    seen: set[str] = set()
    out: list[FetchedFile] = []
    queue: deque[tuple[str, int]] = deque([(source.url, 0)])
    while queue and len(out) < max_pages:
        url, depth = queue.popleft()
        url, _ = urldefrag(url)
        if url in seen:
            continue
        seen.add(url)
        try:
            ff, html = _fetch_one(url, target_dir)
        except requests.RequestException:
            continue
        out.append(ff)
        if depth >= max_depth:
            continue
        for href in _extract_links(html):
            nxt = urljoin(url, href)
            nxt, _ = urldefrag(nxt)
            if not nxt.startswith(("http://", "https://")):
                continue
            if not _same_origin(source.url, nxt):
                continue
            if nxt not in seen:
                queue.append((nxt, depth + 1))
    return out
