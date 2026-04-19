"""Markdown-aware chunker.

Splits on H1/H2/H3, then re-splits oversize sections by paragraph until each
chunk is roughly within target_chars. Approximates token budget via char count
(~4 chars/token rule of thumb). Spec §5.2.
"""
from __future__ import annotations

import re
from dataclasses import dataclass

HEADING_RE = re.compile(r"^(#{1,6})\s+(.*)$", re.MULTILINE)


@dataclass
class Chunk:
    text: str
    heading_path: str  # ``/H1/H2/H3``
    char_offset: int   # offset into original text — used for line-resolving backlinks


def split_by_headings(text: str) -> list[tuple[str, str, int]]:
    """Yield ``(heading_path, body, offset)`` triples."""
    matches = list(HEADING_RE.finditer(text))
    if not matches:
        return [("/", text, 0)]
    out: list[tuple[str, str, int]] = []
    stack: list[tuple[int, str]] = []  # (level, title)
    pre = text[: matches[0].start()]
    if pre.strip():
        out.append(("/", pre, 0))
    for i, m in enumerate(matches):
        level = len(m.group(1))
        title = m.group(2).strip()
        while stack and stack[-1][0] >= level:
            stack.pop()
        stack.append((level, title))
        path = "/" + "/".join(t for _, t in stack)
        body_start = m.end()
        body_end = matches[i + 1].start() if i + 1 < len(matches) else len(text)
        body = text[body_start:body_end].strip()
        if body:
            out.append((path, body, body_start))
    return out


def chunk_text(text: str, target_chars: int = 2000, overlap_chars: int = 200) -> list[Chunk]:
    sections = split_by_headings(text)
    chunks: list[Chunk] = []
    for path, body, offset in sections:
        if len(body) <= target_chars:
            chunks.append(Chunk(text=body, heading_path=path, char_offset=offset))
            continue
        # Re-split by paragraph, packing into target-sized chunks with overlap.
        # If a single paragraph exceeds target_chars, hard-split it on char boundaries.
        raw_paras = re.split(r"\n\s*\n", body)
        paras: list[str] = []
        for rp in raw_paras:
            if len(rp) <= target_chars:
                paras.append(rp)
            else:
                # hard-wrap into target_chars pieces with overlap
                step = max(1, target_chars - overlap_chars)
                for start in range(0, len(rp), step):
                    paras.append(rp[start:start + target_chars])
        cur = ""
        cur_offset = offset
        running_offset = offset
        for p in paras:
            if cur and len(cur) + len(p) + 2 > target_chars:
                chunks.append(Chunk(text=cur, heading_path=path, char_offset=cur_offset))
                tail = cur[-overlap_chars:] if overlap_chars else ""
                cur = (tail + "\n\n" + p) if tail else p
                cur_offset = running_offset - len(tail)
            else:
                if cur:
                    cur = cur + "\n\n" + p
                else:
                    cur = p
                    cur_offset = running_offset
            running_offset += len(p) + 2
        if cur.strip():
            chunks.append(Chunk(text=cur, heading_path=path, char_offset=cur_offset))
    return chunks
